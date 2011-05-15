from collections import defaultdict

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
    
    def convert_to_canonical_form(self):
        """
        Guarantees that initial state and goal contain exactly one variable and that
        each operator has at least one precondition
        """
        needs_dummy_var = False
        for op in self.operators:
            if len(op.precondition) == 0:
                needs_dummy_var = True
                op.precondition.add("@@dummy")
        if needs_dummy_var:
            self.initial_state.add("@@dummy")
        if len(self.goal) != 1:
            goal_op = RelaxedOperator("@@goal-operator", self.goal, frozenset(["@@goal"]), 0)
            self.operators.append(goal_op)
            self.variables.append("@@goal")
            self.goal = frozenset(["@@goal"])
        if len(self.initial_state) != 1:
            init_op = RelaxedOperator("@@init-operator", frozenset(["@@init"]), self.initial_state, 0)
            self.operators.append(init_op)
            self.variables.append("@@init")
            self.initial_state = frozenset(["@@init"])
    
    def crossreference(self):
        self.precondition_to_operators = defaultdict(list)
        self.effect_to_operators = defaultdict(list)
        for op in self.operators:
            assert len(op.precondition), "operator without precondition unsupported"
            for p in op.precondition:
                self.precondition_to_operators[p].append(op)
            for e in op.effect:
                self.effect_to_operators[e].append(op)

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
