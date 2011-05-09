from .SASTask import *
import re

class ParseError(BaseException):
    pass

class SASParser:
    def parse_task(self, input):
        self._inputstream = (line for line in input)
        metric = self._parse_metric()
        variables = self._parse_variables()
        init = self._parse_state(len(variables.ranges))
        goal = self._parse_goal()
        operators = self._parse_operators()
        axioms = self._parse_axioms()
        return SASTask(variables, init, goal, operators, axioms, metric)

    def parse_translationkey(self, input):
        variable_line_exp = re.compile(r'^var(\d+):$')
        value_line_exp = re.compile(r'^\s*(\d+):\s*(.+)$')
        translationkey = {}
        variable = None
        for line in input:
            match = variable_line_exp.match(line.strip())
            if match:
                variable = int(match.group(1))
                translationkey[variable] = {}
            else:
                match = value_line_exp.match(line.strip())
                if match and variable is not None:
                    value = int(match.group(1))
                    name = match.group(2)
                    translationkey[variable][value] = name
                else:
                    raise ParseError("Invalid line in translation key: '%s'" % line)
        return translationkey
    
    def _read_value(self, expected_value=None):
        try:
            value = self._inputstream.next().strip()
            if expected_value is not None and (value != expected_value):
                raise ParseError("Expected '%s' but got: '%s'" % (expected_value, value))
            return value
        except StopIteration:
            raise ParseError("Expected %s but stream ended." % (expected_value or 'a value'))

    def _read_number(self):
        try:
            value = self._read_value()
            return int(value)
        except:
            raise ParseError("Expected number but got: '%s'" % (value))

    def _read_list(self, name=None, count=None):
        if name:
            self._read_value("begin_%s" % name)
        if count is None:
            count = self._read_number()
        for _ in xrange(count):
            yield self._read_value()
        if name:
            self._read_value("end_%s" % name)

    def _parse_metric(self):
        # TODO check format of metric
        self._read_value("begin_metric")
        metric = self._read_number()
        self._read_value("end_metric")
        return metric
    
    def _parse_variables(self):
        ranges = []
        axiom_layers = []
        variable_id = 0
        for entry in self._read_list("variables"):
            try:
                (name, size, axiom_layer) = entry.split()
                if name != "var%d" % variable_id:
                    raise ParseError()
                axiom_layers.append(int(axiom_layer))
                ranges.append(int(size))
                variable_id +=1
            except:
                raise ParseError("Invalid variable entry for var%d: '%s'" % (variable_id, entry))
        return SASVariables(ranges, axiom_layers)
    
    def _parse_state(self, variable_count):
        values = []
        for value in self._read_list("state", variable_count):
            try:
                values.append(int(value))
            except:
                raise ParseError("Invalid state entry: '%s'" % value)
        return SASInit(values)

    def _parse_goal(self):
        pairs = []
        for entry in self._read_list("goal"):
            try:
                (variable, value) = entry.split()
                pairs.append((int(variable), int(value)))
            except:
                raise ParseError("Invalid goal entry: '%s'" % entry)
        return SASGoal(pairs)
    
    def _parse_operators(self):
        operators = []
        count = self._read_number()
        for _ in xrange(count):
            operators.append(self._parse_operator())
        return operators

    def _parse_operator(self):
        self._read_value("begin_operator")
        name = self._read_value()
        prevail = []
        for entry in self._read_list():
            try:
                (var, val) = entry.split()
                prevail.append((int(var), int(val)))
            except:
                raise ParseError("Invalid prevail entry in operator '%s': '%s'" % (name, entry))
        pre_post = []
        for effect in self._read_list():
            effectstream = (int(entry) for entry in effect.split())
            cond = []
            try:
                cond_count = effectstream.next()
                for _ in xrange(cond_count):
                    (cvar, cval) = (effectstream.next(),
                                    effectstream.next())
                    cond.append((cvar, cval))
                (var, pre, post) = (effectstream.next(),
                                    effectstream.next(),
                                    effectstream.next())
                pre_post.append((var, pre, post, cond))
            except:
                raise ParseError("Invalid effect entry in operator '%s': '%s'" % (name, effect))
        cost = self._read_number()
        self._read_value("end_operator")
        return SASOperator(name, prevail, pre_post, cost)

    def _parse_axioms(self):
        axioms = []
        count = self._read_number()
        for _ in xrange(count):
            axioms.append(self._parse_axiom())
        return axioms
    
    def _parse_axiom(self):
        condition = []
        self._read_value("begin_rule")
        for entry in self._read_list():
            try:
                (variable, value) = entry.split()
                condition.append((int(variable), int(value)))
            except:
                raise ParseError("Invalid condition entry in axiom: '%s'" % entry)
        try:
            effectline = self._read_value()
            (variable, old_value, new_value) = effectline.split()
            # only binary domains supported
            if 1 - int(old_value) != int(new_value):
                raise ParseError()
            effect = (variable, new_value)
        except:
            raise ParseError("Invalid effect in axiom: '%s'" % effectline)
        self._read_value("end_rule")
        return SASAxiom(condition, effect)
