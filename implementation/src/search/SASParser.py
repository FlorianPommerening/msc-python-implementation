class ParseError(BaseException):
    pass

class SASProblem:
    def __init__(self):
        self.variables = []
        self.initial_state = []
        self.operators = []
        self.goal = []
        self.metric = 0
        
    def expect(self, inputstream, expected_value):
        actual_value = inputstream.next().strip()
        if (actual_value != expected_value):
            raise ParseError("Expected '%s' Got: '%s'" % (expected_value, actual_value))

    def parse_list(self, inputstream, name=None):
        if name:
            self.expect(inputstream, "begin_%s" % name)
        count = int(inputstream.next().strip())
        for _ in xrange(count):
            yield inputstream.next().strip()
        if name:
            self.expect(inputstream, "end_%s" % name)
        

    def parse_metric(self, inputstream):
        """
        Metric is ignored for now
        """
        self.expect(inputstream, "begin_metric")
        self.metric = int(inputstream.next().strip())
        self.expect(inputstream, "end_metric")
    
    def parse_variables(self, inputstream):
        for entry in self.parse_list(inputstream, "variables"):
            (name, size, axiom_layer) = entry.split()
            axiom_layer = int(axiom_layer)
            size = int(size)
            if axiom_layer != -1:
                raise ParseError("Axioms not supported")
            self.variables.append((name, size))    
    
    def parse_state(self, inputstream):
        self.expect(inputstream, "begin_state")
        for _ in xrange(len(self.variables)):
            self.initial_state.append(int(inputstream.next().strip()))
        self.expect(inputstream, "end_state")
    
    
    def parse_goal(self, inputstream):
        for entry in self.parse_list(inputstream, "goal"):
            (variable, value) = entry.split()
            self.goal.append((variable, value))    
    
    def parse_operators(self, inputstream):
        count = int(inputstream.next().strip())
        for _ in xrange(count):
            self.expect(inputstream, "begin_operator")
            name = inputstream.next().strip()
            prevail = []
            for entry in self.parse_list(inputstream):
                prevail.append(tuple(entry.split()))
            pre_post = []
            for effect in self.parse_list(inputstream):
                effectstream = (int(entry) for entry in effect.split())
                cond = []
                cond_count = effectstream.next()
                for _ in xrange(cond_count):
                    (cvar, cval) = (effectstream.next(),
                                    effectstream.next())
                    cond.append((cvar, cval))
                (var, pre, post) = (effectstream.next(),
                                    effectstream.next(),
                                    effectstream.next())
                pre_post.append((var, pre, post, cond))
            cost = int(inputstream.next().strip())
            self.operators.append((name, prevail, pre_post, cost))
            self.expect(inputstream, "end_operator")
    
    def parse_axioms(self, inputstream):
        """
        Axioms ignored for now
        """
        count = int(inputstream.next().strip())
        for _ in xrange(count):
            self.expect(inputstream, "begin_rule")
            for condition in self.parse_list(inputstream):
                pass
            inputstream.next().strip()
            self.expect(inputstream, "end_rule")
    
    def parse(self, input):
        inputstream = (line for line in input)
        self.parse_metric(inputstream)
        self.parse_variables(inputstream)
        self.parse_state(inputstream)
        self.parse_goal(inputstream)
        self.parse_operators(inputstream)
        self.parse_axioms(inputstream)