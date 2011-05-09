from .Debug import debug_message
from collections import deque


def filter_irrelevant_variables(task):
    """
    removes all variables from a relaxed planning task, that are not required to
    reach the goal. I.e. all goal variables are relevant, and all variables occurring
    in a precondition of an operator with at least one relevant effect variable are 
    also relevant.
    This function also removes the irrelevant variables from each operator and
    removes the operator if its effect becomes empty by doing this.
    """
    irrelevant_operators = list(task.operators)
    relevant_operators = []
    relevant_variables = []    
    relevant_variable_queue = deque(task.goal)
    while relevant_variable_queue:
        v = relevant_variable_queue.popleft()
        if v in relevant_variables:
            continue
        relevant_variables.append(v)
        operators_to_remove = []
        for op in irrelevant_operators:
            if v in op.effect:
                relevant_operators.append(op)
                operators_to_remove.append(op)
                relevant_variable_queue.extend(op.precondition)
        for op in operators_to_remove:
            irrelevant_operators.remove(op)
                        
    # filter variables
    old_variable_count = len(task.variables) 
    task.variables = relevant_variables
    relevant_variable_set = frozenset(relevant_variables)
    task.initial_state &= relevant_variable_set
    debug_message("Relevance analysis removed %d of %d variables" % (old_variable_count - len(task.variables), old_variable_count), 2)
    # filter operators
    old_operator_count = len(task.operators) 
    task.operators = []
    for op in relevant_operators:
        op.precondition &= relevant_variable_set
        op.effect &= relevant_variable_set
        if op.effect:
            task.operators.append(op)
    debug_message("Relevance analysis removed %d of %d operators" % (old_operator_count - len(task.operators), old_operator_count), 2)