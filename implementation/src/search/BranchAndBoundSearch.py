from .SearchNode import SearchNode 
from .OperatorSelector import OperatorSelector
from .Debug import debug_message
from sys import maxint

class BranchAndBoundSearch(object):
    '''
    Main class of search. Initialize search object with _task and call run 
    '''
    def __init__(self, task, operatorSelector=None):
        self._task = task
        self._operatorSelector = operatorSelector or OperatorSelector()
        self._cost_upper_bound = maxint

    def run(self, debug_value_tree=None, validateCuts=False):
        '''
        Returns length of the shortest plan for self._task or -1 if no plan exists
        '''
        self._cost_upper_bound = maxint
        initial_node = SearchNode().initial_node(self._task)
        if initial_node.heuristic_value == float("infinity"):
            return initial_node.heuristic_value
        return self.recursive_branch_and_bound_search(initial_node, debug_value_tree, validateCuts)
        
    def recursive_branch_and_bound_search(self, searchnode, debug_value_tree=None, validateCuts=False):
        '''
        Returns length of the shortest plan starting from searchnode.current_state and
        using only operators that are available in searchnode.heuristic_calculator.
        Returns float("infinity") if no plan exists or the shortest plan is not smaller than self._cost_upper_bound. 
        '''
        debug_message(searchnode)
        
        if debug_value_tree is not None:
            values = debug_value_tree.values
            values.cost = searchnode.current_cost
            values.heuristic = searchnode.heuristic_value
            values.upper_bound = self._cost_upper_bound
            values.landmarks = [list(landmark) for landmark in searchnode.heuristic_calculator.landmarks]
            values.operator_costs = searchnode.heuristic_calculator.operator_costs.copy()

        # HACK this package should not depend on benchmark, but saving all cuts and validating them later
        # uses too much space for large problems
        if validateCuts:
            from benchmark.validate import validateCut
            for landmark in searchnode.heuristic_calculator.landmarks:
                available_operators = [op for op in self._task.operators if searchnode.is_operator_available(op)]
                if not validateCut(self._task, landmark, searchnode.current_state, available_operators):
                    assert False, "invalid landmark detected: '%s'" % landmark

        if searchnode.cost_lower_bound >= self._cost_upper_bound:
            debug_message("Exceeded bound (%d) => backtracking" % self._cost_upper_bound, 1)
            return float("infinity")
        if self._task.is_goal_state(searchnode.current_state):
            debug_message("Found solution with cost %d => Updating upper bound" % searchnode.current_cost, 2)
            if debug_value_tree is not None:
                debug_value_tree.values.is_goal_state = True
            self._cost_upper_bound = searchnode.current_cost
            return searchnode.current_cost
        operators_to_remove = []
        next_operator = self._operatorSelector.most_promising_operator(
                                       searchnode, self._task, self._cost_upper_bound, operators_to_remove)
        if next_operator is None:
            debug_message("No more operators => backtracking", 1)
            return float("infinity")
        if operators_to_remove:
            debug_message("Found %d redundant operators" % len(operators_to_remove), 1)
            searchnode.remove_redundant_operators(operators_to_remove)

        better_plan_found = False
        # TODO allow OperatorSelector to choose whether to test with or without operator first
        for edge_text, next_node in searchnode.successors(next_operator):
            if debug_value_tree is not None:
                successor_debug_tree = debug_value_tree.newChild((edge_text, next_operator))
            else:
                successor_debug_tree = None
            plan_cost = self.recursive_branch_and_bound_search(next_node, successor_debug_tree, validateCuts)
            if plan_cost != float("infinity"):
                better_plan_found = True
                # This test allows to break before the other successor is calculated in cases
                # where a new solution with the cost of the previous lower bound was found.
                # In this case the other successor can never find a better solution.
                if searchnode.cost_lower_bound >= self._cost_upper_bound:
                    debug_message("Exceeded bound (%d) => backtracking" % self._cost_upper_bound, 1)
                    break

        if better_plan_found:
            return self._cost_upper_bound
        else:
            return float("infinity")
