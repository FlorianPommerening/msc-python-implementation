from .lmcut import incremental_lmcut

class SearchNode(object):
    '''
    Represents one node in the Branch-and-Bound search tree
    '''

    def __init__(self):
        self.current_state = frozenset()
        self.available_operator_ids = []
        self.partial_plan = []
        self.current_cost = 0
        self.operator_id_to_landmark = {}
        self.landmarks = []
        self.heuristic_value = 0
        self.cost_lower_bound = 0
    
    def initial_node(self, problem):
        '''
        Create initial node from problem.
        Returns self for ease of use
        '''
        self.current_state = problem.initial_state
        self.available_operator_ids = range(len(problem.operators))
        self.heuristic_value = incremental_lmcut(problem,
                                                 problem.initial_state,
                                                 self.landmarks,
                                                 self.operator_id_to_landmark)
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
        copy.operator_id_to_landmark = self.operator_id_to_landmark.copy()
        copy.landmarks = list(self.landmarks)
        copy.heuristic_value = self.heuristic_value
        copy.cost_lower_bound = self.cost_lower_bound
        return copy        
    
    def successor_with_operator(self, operator_id, problem):
        '''
        Generates a successor state in which the operator with operator_id was applied.
        '''
        successor = self._copy()
        successor.current_state = problem.apply_operator(operator_id, self.current_state)
        successor.remove_operators([operator_id])
        successor.partial_plan.append(operator_id)
        successor.current_cost += problem.operator_cost(operator_id)
        successor.heuristic_value = incremental_lmcut(problem, 
                                                      successor.current_state, 
                                                      successor.landmarks, 
                                                      successor.operator_id_to_landmark,
                                                      added_operator=operator_id)
        successor.cost_lower_bound = successor.current_cost + successor.heuristic_value
        return successor
    
    def successor_without_operator(self, operator_id, problem):
        '''
        Generates a successor state in which the operator with operator_id will not be used in any plan.
        '''
        successor = self._copy()
        successor.remove_operators([operator_id])
        successor.heuristic_value = incremental_lmcut(problem, 
                                                      successor.current_state, 
                                                      successor.landmarks, 
                                                      successor.operator_id_to_landmark,
                                                      removed_operator=operator_id)
        successor.cost_lower_bound = successor.current_cost + successor.heuristic_value
        return successor
    
    def __str__(self):
        return """Node
State: %s
Available operators: %s
Partial plan: %s
Estimated cost: %s + %s = %s
Landmarks: %s
Operator_id -> Landmark: %s

""" % ( ", ".join(self.current_state),
        self.available_operator_ids,
        self.partial_plan,
        self.current_cost, 
        self.heuristic_value,
        self.cost_lower_bound,
        self.landmarks,
        self.operator_id_to_landmark)
