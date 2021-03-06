from collections import defaultdict

# TODO use bitmaps instead of sets
class RelaxedProblem:
    def __init__(self, variables, initial_state, operators, goal):
        self.variables = variables
        self.initial_state = initial_state
        self.operators = operators
        self.goal = goal

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
        # if len(self.goal) != 1:
        goal_op = RelaxedOperator("@@goal-operator", self.goal, frozenset(["@@goal"]), 0)
        self.operators.append(goal_op)
        self.variables.append("@@goal")
        self.goal = frozenset(["@@goal"])
#        if len(self.initial_state) != 1:
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

    def dump(self, stream = None):
        print >> stream, "Variables"
        print >> stream, len(self.variables) 
        for var in self.variables:
            print >> stream, var
        print >> stream, "Initial state"
        print >> stream, len(self.initial_state) 
        for var in self.initial_state:
            print >> stream, var
        print >> stream, "Goal"
        print >> stream, len(self.goal) 
        for var in self.goal:
            print >> stream, var
        print >> stream, "Operators"
        print >> stream, len(self.operators)
        for op in self.operators:
            op.dump(stream)


class RelaxedOperator:
    def __init__(self, name, precondition, effect, cost):
        self.name = name
        self.precondition = precondition
        self.effect = effect
        self.cost = cost
    
    def is_applicable(self, state):
        return self.precondition.issubset(state)
    
    def apply(self, state):
        return state.union(self.effect)

    def __eq__(self,other):
        return (self.name, self.precondition, self.effect, self.cost) == (other.name, other.precondition, other.effect, other.cost)
    def __hash__(self):
        return hash((self.name, self.precondition, self.effect, self.cost))
    def __repr__(self):
        return "%s (%d)" % (self.name, self.cost)

    def dump(self, stream=None):
        print >> stream, "Operator"
        print >> stream, self.name
        print >> stream, self.cost
        print >> stream, len(self.precondition)
        for var in self.precondition:
            print >> stream, var
        print >> stream, len(self.effect) 
        for var in self.effect:
            print >> stream, var
