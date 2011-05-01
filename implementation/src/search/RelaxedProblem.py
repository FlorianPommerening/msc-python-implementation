# TODO use bitmaps instead of sets
class RelaxedProblem:
    def __init__(self, variables, initial_state, operators, goal):
        self.variables = variables
        self.initial_state = initial_state
        self.operators = operators
        self.goal = goal
        
    def operator_applicable(self, operator_id, state):
        operator = self.operators[operator_id]
        # precondition is subset of state
        return (operator.precondition & ~state).all(False)
    
    def apply_operator(self, operator_id, state):
        operator = self.operators[operator_id]
        # union of state and effect
        return state | operator.effect
    
    def is_goal_state(self, state):
        # goal is subset of state
        return (self.goal & ~state).all(False)
    
    def operator_cost(self, operator_id):
        return self.operators[operator_id].cost
    
    def dump(self):
        print "Variables"
        for var in self.variables:
            print var
        print
        print "Initial state"
        print self.initial_state.bin
        for (var, val) in zip(self.variables, self.initial_state):
            if val:
                print var
        print
        print "Goal"
        print self.goal.bin
        for (var, val) in zip(self.variables, self.goal):
            if val:
                print var
        print
        print "Operators"
        print len(self.operators)
        for op in self.operators:
            op.dump()


class RelaxedOperator:
    def __init__(self, name, precondition, effect, cost):
        self.name = name
        self.precondition = precondition
        self.effect = effect
        self.cost = cost

    def dump(self):
        print "%s (%d)" % (self.name, self.cost)
        print "  Precondition:", self.precondition.bin
        print "  Effect:", self.effect.bin 
