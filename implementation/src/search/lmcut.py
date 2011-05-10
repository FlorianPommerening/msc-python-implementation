from .hmax import hmax
from .Debug import debug_message


def incremental_lmcut(task, state, landmarks, operator_to_landmark, added_operator=-1, removed_operator=-1):
    '''
    landmarks can contain previously discovered landmarks and will be changed in place.

    operator_to_landmark should contain a mapping from each operator, to the landmark it is contained in.
    this will also be changed in place.
    TODO: mapping an operator to exactly one landmark is only possible with unit cost operators.
          think about another way to do this with arbitrary costs
    
    if added_operator is positive, it contains the id of an operator, that was just
    added to the plan (executed to reach state) 
    
    if removed_operator is positive, it contains the id of an operator, which was just 
    excluded from the plan (i.e. no plan will use this operator)

    Returns heuristic value of state
    '''
    hmax_value, hmax_function, precondition_choice_function = hmax(task, state)
    debug_message("hmax(state) = %s" % str(hmax_value), 0)
    return hmax_value

#        for landmark in self.landmarks:
#            for operator in landmark:
#                self.operator_to_landmark[operator] = landmark