from SearchNode import SearchNode 
from OperatorSelector import OperatorSelector
from Debug import debug_message
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
        return self.recursive_branch_and_bound_search(initial_node)
        
    def recursive_branch_and_bound_search(self, searchnode):
        '''
        Returns length of the shortest plan starting from searchnode.current_state and
        using only operators from searchnode.available_operator_ids.
        Returns -1 if no plan exists or the shortest plan is not smaller than self._cost_upper_bound. 
        '''
        debug_message(searchnode)
        
        if searchnode.cost_lower_bound >= self._cost_upper_bound:
            debug_message("Exceeded bound (%d) => backtracking" % self._cost_upper_bound, 1)
            return -1
        if self._problem.is_goal_state(searchnode.current_state):
            debug_message("Found solution with cost %d => Updating upper bound" % searchnode.current_cost, 2)
            self._cost_upper_bound = searchnode.current_cost
            return searchnode.current_cost
        next_operator_id = self._operatorSelector.most_promising_operator_id(
                                       searchnode, self._problem, self._cost_upper_bound)
        if next_operator_id == -1:
            debug_message("No more operators => backtracking", 1)
            return -1

        better_plan_found = False
        for next_node in [searchnode.use_operator(next_operator_id, self._problem),
                          searchnode.forbid_operator(next_operator_id, self._problem)]:
            plan_cost = self.recursive_branch_and_bound_search(next_node)
            if plan_cost != -1:
                better_plan_found = True

        if better_plan_found:
            return self._cost_upper_bound
        else:
            return -1
    


        