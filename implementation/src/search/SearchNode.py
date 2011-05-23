from .lmcut import LMcut

class SearchNode(object):
    '''
    Represents one node in the Branch-and-Bound search tree
    '''

    def __init__(self):
        self.current_state = frozenset()
        self.available_operator_ids = []
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
        self.available_operator_ids = range(len(task.operators))
        self.heuristic_calculator = LMcut().initial_state(task)
        self.cost_lower_bound = self.current_cost + self.heuristic_value
        return self
    
    def remove_operators(self, operators_to_remove):
        for id in operators_to_remove:
            self.available_operator_ids.remove(id)
    
    def _copy(self):
        '''
        Returns a copy of this node
        '''
        copy = SearchNode()
        copy.current_state = self.current_state
        copy.available_operator_ids = list(self.available_operator_ids)
        copy.partial_plan = list(self.partial_plan)
        copy.current_cost = self.current_cost
        copy.cost_lower_bound = self.cost_lower_bound
        copy.heuristic_calculator = self.heuristic_calculator.copy()
        return copy        
    
    def successor_with_operator(self, operator_id, task):
        '''
        Generates a successor state in which the operator with operator_id was applied.
        '''
        successor = self._copy()
        successor.current_state = task.apply_operator(operator_id, self.current_state)
        successor.remove_operators([operator_id])
        successor.partial_plan.append(operator_id)
        successor.current_cost += task.operator_cost(operator_id)
        successor.heuristic_calculator.operator_applied(self.heuristic_calculator.task.operators[operator_id], successor.current_state)
        successor.cost_lower_bound = successor.current_cost + successor.heuristic_value
        return successor
    
    def successor_without_operator(self, operator_id, problem):
        '''
        Generates a successor state in which the operator with operator_id will not be used in any plan.
        '''
        successor = self._copy()
        successor.remove_operators([operator_id])
        successor.heuristic_calculator.operator_forbidden(self.heuristic_calculator.task.operators[operator_id], successor.current_state)
        successor.cost_lower_bound = successor.current_cost + successor.heuristic_value
        return successor
    
    def successors(self, operator_id, problem):
        yield ("with",    self.successor_with_operator(operator_id, problem))
        yield ("without", self.successor_without_operator(operator_id, problem))
    
    def __str__(self):
        landmarks_str = "    " + "\n    ".join(", ".join(op.name for op in lm) for lm in self.heuristic_calculator.landmarks)
        return """Node
State: %s
Available operators: %s
Partial plan: %s
Estimated cost: %s + %s = %s
Landmarks: 
%s

""" % ( ", ".join(self.current_state),
        self.available_operator_ids,
        self.partial_plan,
        self.current_cost, 
        self.heuristic_value,
        self.cost_lower_bound,
        landmarks_str
        )
