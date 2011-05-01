from RelaxedProblem import RelaxedProblem, RelaxedOperator
from bitstring import ConstBitArray

def delete_relaxation(sastask, translationkey=None):
    '''
    Converts a SASTask into a RelaxedProblem (SAS to delete-relaxed STRIPS)
    '''
    variables, is_binary = _convert_variables(sastask.variables, translationkey)
    initial_state = _convert_state(sastask.variables, sastask.init, translationkey, is_binary)
    operators = tuple( _convert_operator(op, translationkey, is_binary) for op in sastask.operators )
    # Don't allow 0 cost
    if all(op.cost == 0 for op in operators):
        for op in operators:
            op.cost = 1
    goal = _convert_goal(sastask.goal, translationkey, is_binary)
    if sastask.axioms:
        raise Exception("Cannot deal with axioms right now")
    # TODO what about the metric?
    return RelaxedProblem(variables, initial_state, operators, goal)

def _variable_name(variable, value, translationkey):
    translation = ""
    if translationkey:
        translation = " " + translationkey[variable][value]
    return "var%d#%d%s" % (variable, value, translation)

def _convert_variables(variables, translationkey):
    result = []
    is_binary = []
    for (var, range) in enumerate(variables.ranges):
        is_binary.append(range == 2)
        if is_binary[var]:
            result.append(_variable_name(var, 0, translationkey))
        else:
            for val in xrange(range):
                result.append(_variable_name(var, val, translationkey))
    return result, is_binary

def _convert_state(variables, state, translationkey, is_binary):
    result = []
    for var in xrange(len(variables.ranges)):
        # ignore binary variables set to false
        if not(is_binary[var] and state.values[var] == 1):
            result.append(_variable_name(var, state.values[var], translationkey))
    return frozenset(result)

def _convert_operator(operator, translationkey, is_binary):
    precondition = []
    for (var, val) in operator.prevail:
        # ignore binary variables set to false
        if not(is_binary[var] and val == 1):
            precondition.append(_variable_name(var, val, translationkey))
    effect = []
    for (var, pre, post, cond) in operator.pre_post:
        if cond:
            raise Exception("Cannot deal with conditional effects right now")
        # ignore don't care values (-1) and binary variables set to false
        if pre != -1 and not (is_binary[var] and pre == 1): 
            precondition.append(_variable_name(var, pre, translationkey))
        # ignore binary variables set to false
        if not (is_binary[var] and post == 1):
            effect.append(_variable_name(var, post, translationkey))
    return RelaxedOperator(operator.name, frozenset(precondition), frozenset(effect), operator.cost)

def _convert_goal(goal, translationkey, is_binary):
    result = []
    for (var, val) in goal.pairs:
        # ignore binary variables set to false
        if not(is_binary[var] and val == 1):
            result.append(_variable_name(var, val, translationkey))
    return frozenset(result)
