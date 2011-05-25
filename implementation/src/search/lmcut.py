from collections import defaultdict
from .hmax import hmax
from .Debug import debug_message

def calculate_lmcut(task, debug_value_list=None):
    '''
    Convenience method to calculate heuristic value of initial state
    '''
    return LMcut().initial_state(task, debug_value_list).heuristic_value

class LMcut:
    def __init__(self):
        '''
        The fields of this class are used to keep track of previous calls to incremental_lmcut
        '''
        self.task = None
        self.landmarks = []
#        TODO: mapping an operator to exactly one landmark is only possible with unit cost operators.
#              think about another way to do this with arbitrary costs
        self.operator_to_landmark = {}
        self.operator_costs = {}
        self.heuristic_value = 0
        
    def initial_state(self, task, debug_value_list=None):
        '''
        calculates the heuristic value for the initial state and returns self for convenience
        cannot use constructor as empty constructor is needed for clone
        '''
        self.task = task
        self.operator_costs = {op:op.cost for op in task.operators}
        self.heuristic_value = self._lmcut(self.task.initial_state, debug_value_list)
        return self

    def operator_applied(self, applied_operator, state):
        '''
        applied_operator contains operator that was just added to the plan (executed to reach state)
        returns a heuristic value for state

        op+ is not in any LM:
             All LMs stay LMs.
             op cost of all operators stays the same
        op+ is in LM l+ which also contains op1, ..., opn:
             l+ is no longer a LM.
             By removing l+ the heuristic value decreases by l+.cost.
             All other LMs stay LMs.
             Operator costs of operators op1, ..., opn can be increases by l+.cost.
        '''
        self.operator_costs[applied_operator] = -1
        if self.operator_to_landmark.has_key(applied_operator):
            landmark = self.operator_to_landmark[applied_operator]
            self.landmarks.remove(landmark)
            # TODO maybe store instead of recalculate
            landmark_cost = 0
            for op in landmark:
                if op.cost > landmark_cost:
                    landmark_cost = op.cost
            self.heuristic_value -= landmark_cost
            for op in landmark:
                if op != applied_operator:
                    self.operator_costs[op] += landmark_cost
        return self._lmcut(state)


    def operator_forbidden(self, forbidden_operator, state):
        '''
        forbidden_operator contains the operator, which was just excluded from the plan (i.e. no plan will use this operator)
        returns a heuristic value for state

        op- is not in any LM:
             All LMs stay LMs.
             op cost of all operators stays the same
        op- is the only operator in LM l-:
             problem unsolvable: return infinity
        op- is in LM l- which also contains op1, ..., opn:
             remove op- from l-
             All LMs (including l-\{op-}) stay LMs.
             heuristic value can change if op- was maximum cost in l-
             op cost of all operators stays the same
        ''' 
        self.operator_costs[forbidden_operator] = -1
        if self.operator_to_landmark.has_key(forbidden_operator):
            landmark = self.operator_to_landmark[forbidden_operator]
            landmark.remove(forbidden_operator)
            if len(landmark) == 0:
                self.heuristic_value = float("infinity")
                return self.heuristic_value
            # TODO maybe store instead of recalculate
            landmark_cost = 0
            for op in landmark:
                if op.cost > landmark_cost:
                    landmark_cost = op.cost
            old_landmark_cost = max(landmark_cost, forbidden_operator.cost)
            self.heuristic_value -= (old_landmark_cost - landmark_cost)            
        return self._lmcut(state)

    def _lmcut(self, state, debug_value_list=None):
        '''
        Returns heuristic value of state by calculating LMcut with the current operator cost function.
        The returned value includes the cost of all previously discovered landmarks stored in self.heuristic_value, 
        wich are assumed to stay valid. All landmarks that became invalid should be removed before calling this function
        and self.heuristic_value has to be up to date
        Newly discovered landmarks are appended to self.landmarks and registered in self.operator_to_landmark
        '''
        #TODO: for now this only works with operator costs in (0,1)

        hmax_value, hmax_function, precondition_choice_function = hmax(self.task, state, self.operator_costs)
        debug_message("hmax(state) = %s" % str(hmax_value), 0)
        if hmax_value == float("infinity"):
            return hmax_value
    
        debug_values = None
        additional_cost = 0
        while hmax_value != 0:
            if debug_value_list is not None:
                debug_values = debug_value_list.newEntry()
            cut = self._find_cut(state, precondition_choice_function, debug_values)
            if debug_values is not None:
                debug_values.hmax_function = hmax_function
                debug_values.pcf = precondition_choice_function
                debug_values.hmax_value = hmax_value
                debug_values.cut = list(cut)
    
            self.landmarks.append(cut)
            for op in cut:
                self.operator_to_landmark[op] = cut
            landmark_cost = max([self.operator_costs[op] for op in cut])
            additional_cost += landmark_cost
            for op in cut:
                self.operator_costs[op] -= landmark_cost
            hmax_value, hmax_function, precondition_choice_function = hmax(self.task, state, self.operator_costs)

        debug_message("hlmcut(state) = %d" % additional_cost, 0)
        self.heuristic_value += additional_cost
        return self.heuristic_value
    
    def _find_cut(self, state, precondition_choice_function, debug_values=None):
        effect_to_zero_cost_operators = defaultdict(list)
        for op, cost in self.operator_costs.items():
            if cost == 0:
                for e in op.effect:
                    effect_to_zero_cost_operators[e].append(op)
    
        goal_zone = set()
        stack = list(self.task.goal)
        while stack:
            v = stack.pop()
            assert v != "@@init"
            if v in goal_zone:
                continue
            goal_zone.add(v)
            for op in effect_to_zero_cost_operators[v]:
                if self.operator_costs[op] == -1:
                    continue
                # if pcf has no key for op, this means that the preconditions of op
                # are not satisfiable with the available operators
                if not precondition_choice_function.has_key(op):
                    continue
                stack.append(precondition_choice_function[op])
        if debug_values is not None:
            debug_values.near_goal_area = list(goal_zone)
    
        for op in self.task.operators:
            op.unsatisfied_preconditions = len(op.precondition)
        
        stack = list(state)
        closed = []
        cut = set()
        while stack:
            v = stack.pop()
            if v in closed:
                continue
            closed.append(v)
            for op in self.task.precondition_to_operators[v]:
                if self.operator_costs[op] == -1:
                    continue
                op.unsatisfied_preconditions -= 1
                if op.unsatisfied_preconditions == 0:
                    for e in op.effect:
                        if e in goal_zone:
                            cut.add(op)
                            break
                    else:
                        stack.extend(op.effect)
        return cut

    def copy(self):
        copy = LMcut()
        copy.task = self.task
        copy.landmarks = [list(landmark) for landmark in self.landmarks]
        # TODO is there an faster way to get the new references?
        copy.operator_to_landmark = {}
        for landmark in copy.landmarks:
            for op in landmark:
                copy.operator_to_landmark[op] = landmark
        copy.operator_costs = self.operator_costs.copy()
        copy.heuristic_value = self.heuristic_value
        return copy
        