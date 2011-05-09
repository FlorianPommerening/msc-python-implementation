# TODO use bitmaps instead of sets
class RelaxedProblem:
    def __init__(self, variables, initial_state, operators, goal):
        self.variables = variables
        self.initial_state = initial_state
        self.operators = operators
        self.goal = goal
        
    def operator_applicable(self, operator_id, state):
        operator = self.operators[operator_id]
        return operator.precondition.issubset(state)
    
    def apply_operator(self, operator_id, state):
        operator = self.operators[operator_id]
        return state.union(operator.effect)
    
    def is_goal_state(self, state):
        return self.goal.issubset(state)
    
    def operator_cost(self, operator_id):
        return self.operators[operator_id].cost
    
    def dump(self):
        print "Variables"
        for var in self.variables:
            print var
        print
        print "Initial state"
        for var in self.initial_state:
            print var
        print
        print "Goal"
        print self.goal
        for var in self.goal:
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
        print "  Precondition:"
        for var in self.precondition:
            print var
        print "  Effect:" 
        for var in self.effect:
            print var
