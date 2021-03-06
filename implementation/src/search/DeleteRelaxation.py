from .RelaxedProblem import RelaxedProblem, RelaxedOperator

class VariableTranslator:
    def __init__(self, sas_variables, translationkey=None): 
        self._translationkey = translationkey
        self.translations = []
        self.names = []
        for (var, range) in enumerate(sas_variables.ranges):
            self.translations.append([])
            for val in xrange(range):
                varname = self._variable_name(var, val)
                self.names.append(varname)
                self.translations[var].append(varname)

    def _variable_name(self, sas_variable, sas_value):
        translation = ""
        if self._translationkey:
            translation = " " + self._translationkey[sas_variable][sas_value]
        return "var%d#%d%s" % (sas_variable, sas_value, translation)

    def sas_assignment_to_variable_set(self, var_val_pairs):
        """
        Turns a (partial) variable assignment of a SAS task (i.e. a state, partial state or condition)
        into a set representing the translated assignment in the delete relaxation.
        """
        result = []
        for (var, val) in var_val_pairs:
            result.append(self.translations[var][val])
        return frozenset(result)

def delete_relaxation(sastask, translationkey=None):
    '''
    Converts a SASTask into a RelaxedProblem (SAS to delete-relaxed STRIPS)
    '''
    variable_translator = VariableTranslator(sastask.variables, translationkey)
    initial_state_tuples = list(enumerate(sastask.init.values))
    initial_state = variable_translator.sas_assignment_to_variable_set(initial_state_tuples)
    operators = [_convert_operator(op, variable_translator) for op in sastask.operators]
    goal = variable_translator.sas_assignment_to_variable_set(sastask.goal.pairs)
    if sastask.axioms:
        raise Exception("Cannot deal with axioms right now")
    # Use unit cost if no operator costs are given
    if sastask.metric == 0:
        for op in operators:
            op.cost = 1
    return RelaxedProblem(variable_translator.names, initial_state, operators, goal)


def _convert_operator(operator, variable_translator):
    precondition_pairs = operator.prevail
    effect_pairs = []
    for (var, pre, post, cond) in operator.pre_post:
        if cond:
            raise Exception("Cannot deal with conditional effects right now")
        # ignore don't care values (-1)
        if pre != -1: 
            precondition_pairs.append((var, pre))
        effect_pairs.append((var, post))
    precondition = variable_translator.sas_assignment_to_variable_set(precondition_pairs)
    effect = variable_translator.sas_assignment_to_variable_set(effect_pairs)
    return RelaxedOperator(operator.name, precondition, effect, operator.cost)
