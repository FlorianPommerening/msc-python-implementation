from collections import defaultdict
from .hmax import hmax
from .Debug import debug_message

def incremental_lmcut(task, state=None, landmarks=[], operator_to_landmark={}, added_operator=None, removed_operator=None, debug_value_list=None):
    '''
    landmarks can contain previously discovered landmarks and will be changed in place.

    operator_to_landmark should contain a mapping from each operator, to the landmark it is contained in.
    this will also be changed in place.
    TODO: mapping an operator to exactly one landmark is only possible with unit cost operators.
          think about another way to do this with arbitrary costs
    
    if added_operator is not None, it contains the id of an operator, that was just
    added to the plan (executed to reach state) 
    
    if removed_operator is not None, it contains the id of an operator, which was just 
    excluded from the plan (i.e. no plan will use this operator)

    Returns heuristic value of state
    '''
    if state == None:
        state = task.initial_state
#TODO: for now this is only regular lmcut (not incremental)
# clear landmarks, as they are recomputed in each step
    landmarks[:] = []
    operator_to_landmark = {}

    operator_costs = {op:op.cost for op in task.operators}
    hmax_value, hmax_function, precondition_choice_function = hmax(task, state, operator_costs)

    debug_message("hmax(state) = %s" % str(hmax_value), 0)

    if hmax_value == float("infinity"):
        return hmax_value
    additive_costs = []
    while hmax_value != 0:
        if debug_value_list is not None:
            debug_values = debug_value_list.newEntry()

        cut = find_cut(task, state, operator_costs, hmax_value, hmax_function, precondition_choice_function, debug_values)

        if debug_values is not None:
            debug_values.hmax_function = hmax_function
            debug_values.pcf = precondition_choice_function
            debug_values.hmax_value = hmax_value
            debug_values.cut = list(cut)

        landmarks.append(cut)
        for op in cut:
            operator_to_landmark[op] = cut
        landmark_cost = max([operator_costs[op] for op in cut])
        additive_costs.append(landmark_cost)
        for op in cut:
            operator_costs[op] -= landmark_cost
        hmax_value, hmax_function, precondition_choice_function = hmax(task, state, operator_costs)

    debug_message("hlmcut(state) = %d" % sum(additive_costs), 0)
    return sum(additive_costs)

def find_cut(task, state, operator_costs, hmax_value, hmax_function, precondition_choice_function, debug_values=None):
    zero_cost_operators_with_effect = defaultdict(list)
    operators_with_pcf_choice = defaultdict(list)
    for op in task.operators:
        if not precondition_choice_function.has_key(op):
            # if the PCF has no entry for op, this means that 
            # op has at least one condition c with hmax(c) = inf
            continue
        operators_with_pcf_choice[precondition_choice_function[op]].append(op)
        if operator_costs[op] == 0:
            for e in op.effect:
                zero_cost_operators_with_effect[e].append(op)
    
    goal_zone = set()
    stack = list(task.goal)
    while stack:
        v = stack.pop()
        if v in goal_zone:
            continue
        goal_zone.add(v)
        for op in zero_cost_operators_with_effect[v]:
            stack.append(precondition_choice_function[op])

    # DEBUG
    if debug_values is not None:
        debug_values.near_goal_area = list(goal_zone)

    
    stack = list(state)
    closed = []
    cut = set()
    while stack:
        v = stack.pop()
        if v in closed: # or hmax_function[v] >= hmax_value:
            continue
        closed.append(v)
        for op in operators_with_pcf_choice[v]:
            for e in op.effect:
                if e in goal_zone:
                    cut.add(op)
                    break
            else:
                stack.extend(op.effect)
    return cut