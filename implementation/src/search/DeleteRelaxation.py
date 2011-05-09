from .RelaxedProblem import RelaxedProblem, RelaxedOperator
from bitstring import ConstBitArray

class VariableTranslator:
    def __init__(self, sas_variables, translationkey=None): 
        self._translationkey = translationkey
        # contains the tuple (var, val) at position i that corresponds to the variable names[i]
        # i.e. the meaning of sas_tuples[1] == (2,3) is that variable 1 (with the name: names[1]) represents
        # that the SAS variable 2 has the value 3 
        self.sas_tuples = []
        self.names = []
        for (var, range) in enumerate(sas_variables.ranges):
            # can ignore second value of binary variable
            if range == 2:
                range = 1 
            for val in xrange(range):
                self.names.append(self._variable_name(var, val))
                self.sas_tuples.append((var, val))

    def _variable_name(self, sas_variable, sas_value):
        translation = ""
        if self._translationkey:
            translation = " " + self._translationkey[sas_variable][sas_value]
        return "var%d#%d%s" % (sas_variable, sas_value, translation)

def delete_relaxation(sastask, translationkey=None):
    '''
    Converts a SASTask into a RelaxedProblem (SAS to delete-relaxed STRIPS)
    '''
    variable_translator = VariableTranslator(sastask.variables, translationkey)
    initial_state_tuples = list(enumerate(sastask.init.values))
    initial_state = _sas_assignment_to_bitstring(initial_state_tuples, variable_translator)
    operators = tuple( _convert_operator(op, variable_translator) for op in sastask.operators )
    goal = _sas_assignment_to_bitstring(sastask.goal.pairs, variable_translator)
    if sastask.axioms:
        raise Exception("Cannot deal with axioms right now")
    # Don't allow 0 cost
    if sastask.metric == 0:
        for op in operators:
            op.cost = 1
    return RelaxedProblem(variable_translator.names, initial_state, operators, goal)

def _sas_assignment_to_bitstring(var_val_pairs, variable_translator):
    """
    Turns a (partial) variable assignment of a SAS task (i.e. a state, partial state or condition)
    into a bitstring representing the translated assignment in the delete relaxation.
    Binary SAS variables that are set to their "negative" assignment are ignored (delete relaxation)
    automatically, as their delete effect is not contained in variable_translator.sas_tuples 
    """
    result = []
    for (var, val) in variable_translator.sas_tuples:
        result.append((var, val) in var_val_pairs)
    return ConstBitArray(result)

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
    precondition = _sas_assignment_to_bitstring(precondition_pairs, variable_translator)
    effect = _sas_assignment_to_bitstring(effect_pairs, variable_translator)
    return RelaxedOperator(operator.name, precondition, effect, operator.cost)
