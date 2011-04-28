class RelaxedProblem:
    def __init__(self):
        self.variables = ('s', 't', 'q1', 'q2', 'q3')
        self.initial_state = frozenset(['s'])
        self.operators = (
                          (frozenset(['s']), frozenset(['q1', 'q2']), 1),
                          (frozenset(['s']), frozenset(['q1', 'q3']), 1),
                          (frozenset(['s']), frozenset(['q2', 'q3']), 4),
                          (frozenset(['q1', 'q2', 'q3']), frozenset(['t']), 1),
                         )
        self.goal =  frozenset(['t'])
        
    def operator_applicable(self, operator_id, state):
        precondition = self.operators[operator_id][0]
        return precondition.issubset(state)
    
    def apply_operator(self, operator_id, state):
        effect = self.operators[operator_id][1]
        return state.union(effect)
    
    def is_goal_state(self, state):
        return self.goal.issubset(state)
    
    def operator_cost(self, operator_id):
        return self.operators[operator_id][2]