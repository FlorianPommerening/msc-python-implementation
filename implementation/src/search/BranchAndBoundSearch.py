from .SearchNode import SearchNode 
from .OperatorSelector import OperatorSelector
from .Debug import debug_message
from sys import maxint

class BranchAndBoundSearch(object):
    '''
    Main class of search. Initialize search object with _problem and call run 
    '''
    def __init__(self, problem, operatorSelector=None):
        self._problem = problem
        self._operatorSelector = operatorSelector or OperatorSelector()
        self._cost_upper_bound = maxint

    def run(self):
        '''
        Returns length of the shortest plan for self._problem or -1 if no plan exists
        '''
        self._cost_upper_bound = maxint
        initial_node = SearchNode().initial_node(self._problem)
        if initial_node.heuristic_value == float("infinity"):
            return initial_node.heuristic_value
        return self.recursive_branch_and_bound_search(initial_node)
        
    def recursive_branch_and_bound_search(self, searchnode):
        '''
        Returns length of the shortest plan starting from searchnode.current_state and
        using only operators from searchnode.available_operator_ids.
        Returns float("infinity") if no plan exists or the shortest plan is not smaller than self._cost_upper_bound. 
        '''
        debug_message(searchnode)
        
        if searchnode.cost_lower_bound >= self._cost_upper_bound:
            debug_message("Exceeded bound (%d) => backtracking" % self._cost_upper_bound, 1)
            return float("infinity")
        if self._problem.is_goal_state(searchnode.current_state):
            debug_message("Found solution with cost %d => Updating upper bound" % searchnode.current_cost, 2)
            self._cost_upper_bound = searchnode.current_cost
            return searchnode.current_cost
        operators_to_remove = []
        next_operator_id = self._operatorSelector.most_promising_operator_id(
                                       searchnode, self._problem, self._cost_upper_bound, operators_to_remove)
        if next_operator_id is None:
            debug_message("No more operators => backtracking", 1)
            return float("infinity")
        if operators_to_remove:
            debug_message("Found %d redundant operators" % len(operators_to_remove), 1)
            searchnode.remove_operators(operators_to_remove)

        better_plan_found = False
        for next_node in [searchnode.successor_with_operator(next_operator_id, self._problem),
                          searchnode.successor_without_operator(next_operator_id, self._problem)]:
            plan_cost = self.recursive_branch_and_bound_search(next_node)
            if plan_cost != float("infinity"):
                better_plan_found = True

        if better_plan_found:
            return self._cost_upper_bound
        else:
            return float("infinity")
    


        