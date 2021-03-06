from .lmcut import LMcut

class SearchNode(object):
    '''
    Represents one node in the Branch-and-Bound search tree
    '''

    def __init__(self):
        self.current_state = frozenset()
        self.partial_plan = []
        self.current_cost = 0
        self.cost_lower_bound = 0
        self.heuristic_calculator = None
        
    def get_heuristic_value(self):
        return self.heuristic_calculator.heuristic_value
    
    heuristic_value = property(get_heuristic_value)
    
    def initial_node(self, task):
        '''
        Create initial node from problem.
        Returns self for ease of use
        Cannot use constructor, because empty constructor is needed for clone
        '''
        self.current_state = task.initial_state
        self.heuristic_calculator = LMcut().initial_state(task)
        self.cost_lower_bound = self.current_cost + self.heuristic_value
        return self

    def is_operator_available(self, op):
        return self.heuristic_calculator.operator_costs[op] != -1

    def remove_redundant_operators(self, operators_to_remove):
        '''
        should only be called for operators that are redundant or no-ops.
        '''
        for op in operators_to_remove:
            self.heuristic_calculator.operator_costs[op] = -1

    def _copy(self):
        '''
        Returns a copy of this node
        '''
        copy = SearchNode()
        copy.current_state = self.current_state
        copy.partial_plan = list(self.partial_plan)
        copy.current_cost = self.current_cost
        copy.cost_lower_bound = self.cost_lower_bound
        copy.heuristic_calculator = self.heuristic_calculator.copy()
        return copy        
    
    def successor_with_operator(self, operator):
        '''
        Generates a successor state in which the operator with operator_id was applied.
        '''
        successor = self._copy()
        successor.current_state = operator.apply(self.current_state)
        successor.partial_plan.append(operator)
        successor.current_cost += operator.cost
        successor.heuristic_calculator.operator_applied(operator, successor.current_state)
        successor.cost_lower_bound = successor.current_cost + successor.heuristic_value
        return successor
    
    def successor_without_operator(self, operator):
        '''
        Generates a successor state in which the operator with operator_id will not be used in any plan.
        '''
        successor = self._copy()
        successor.heuristic_calculator.operator_forbidden(operator, successor.current_state)
        successor.cost_lower_bound = successor.current_cost + successor.heuristic_value
        return successor
    
    def successors(self, operator, add_first):
        if add_first:
            yield ("with",    self.successor_with_operator(operator))
            yield ("without", self.successor_without_operator(operator))
        else:
            yield ("without", self.successor_without_operator(operator))
            yield ("with",    self.successor_with_operator(operator))

    def __str__(self):
        landmarks_str = "    " + "\n    ".join(", ".join(op.name for op in lm) for lm in self.heuristic_calculator.landmarks)
        return """Node
State: %s
Forbidden operators: %s
Partial plan: %s
Estimated cost: %s + %s = %s
Landmarks: 
%s

""" % ( ", ".join(self.current_state),
        [op for op in self.heuristic_calculator.task.operators if not self.is_operator_available(op)],
        self.partial_plan,
        self.current_cost, 
        self.heuristic_value,
        self.cost_lower_bound,
        landmarks_str
        )
