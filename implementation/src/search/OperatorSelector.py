from .Debug import debug_message

class OperatorSelector(object):
    '''
    Base class for different ways to select the most promising operator to execute in a state  
    '''

    def most_promising_operator(self, searchnode, task, upper_bound, operators_to_remove):
        '''
        Returns the most promising operator in searchnode.current_state or None if no operator is applicable
        This method handles a bit of basic filtering and turns to _select() for the actual selection.
        To implement an OperatorSelector derive from this calls and override _select()

        operators_to_remove can be filled by this function to remove more operators 
        from the available operators, than just the one that is applied.
        This might be the case if an operator is redundant or a no-op 
        '''
        max_cost = upper_bound - searchnode.current_cost
        applicable_operators = []
        for op in task.operators:
            if not searchnode.is_operator_available(op) or op.cost > max_cost:
                continue
            if op.is_applicable(searchnode.current_state):
                applicable_operators.append(op)
        if not applicable_operators:
            return None, None
        return self._select(searchnode, task, applicable_operators, upper_bound, operators_to_remove)

    def _select(self, searchnode, task, applicable_operators, upper_bound, operators_to_remove):
        '''
        Returns index of most promising operator in searchnode.current_state.
        applicable_operators is guaranteed to contain at least one operator at this point.
        Base class implementation picks first applicable operator. More sophisticated behavior in derived classes
        '''
        add_first = True
        return applicable_operators[0], add_first


class AchieveTargetsRemoveRedundantOperatorSelector(OperatorSelector):
    def _select(self, searchnode, task, applicable_operators, upper_bound, operators_to_remove):
        '''
        Tries to pick operators achieving the most goal literals 
        and removes operators that do not change the current state
        '''
        add_first = True
        best = None
        most = 0
        missing_goals = task.goal - searchnode.current_state
        for op in applicable_operators:
            goals = len(op.effect & missing_goals)
            if goals > most:
                most = goals
                best = op
        if best:
            debug_message("Found goal achieving operator", 1)
            return best, add_first

        good_operators = []
        for op in applicable_operators:
            if (op.effect | searchnode.current_state) == searchnode.current_state:
                operators_to_remove.append(op)
            else:
                good_operators.append(op)
        if good_operators:
            return good_operators[0], add_first
        return None, None

class AchieveLandmarksRemoveRedundantOperatorSelector(OperatorSelector):
    def _select(self, searchnode, task, applicable_operators, upper_bound, operators_to_remove):
        '''
        Tries to pick operators achieving a landmark 
        and removes operators that do not change the current state
        '''
        add_first = True
        best = None
        smallest = float("inf")
        for op in applicable_operators:
            for landmark in searchnode.heuristic_calculator.landmarks:
                if len(landmark) < smallest and op in landmark:
                    smallest = len(landmark)
                    best = op
        if best is not None:
            debug_message("Found landmark achieving operator", 1)
            return best, add_first

        good_operators = []
        for op in applicable_operators:
            if (op.effect | searchnode.current_state) == searchnode.current_state:
                operators_to_remove.append(op)
            else:
                good_operators.append(op)
        if good_operators:
            return good_operators[0], add_first
        return None, None

class AchieveLandmarksOrGoalsOperatorSelector(OperatorSelector):
    def _select(self, searchnode, task, applicable_operators, upper_bound, operators_to_remove):
        '''
        Tries to pick operators achieving a landmark 
        if this is not possible, it tries to achieve a goal literal,
        or a precondition for an operator, achieving a goal literal
        '''
        add_first = True
        best = None
        smallest = float("inf")
        for op in applicable_operators:
            for landmark in searchnode.heuristic_calculator.landmarks:
                if len(landmark) < smallest and op in landmark:
                    smallest = len(landmark)
                    best = op
        if best is not None:
            debug_message("Found landmark achieving operator", 1)
            # if landmark only contains this operator add it immediately,
            # otherwise try to force a decision for this landmark by removing one operator contained
            # in the landmark and thus making a smaller landmark in the next step 
            return best, add_first

        try_achieve_vars = set()
        next_achieve_vars = set(task.goal)
        while try_achieve_vars != try_achieve_vars.union(next_achieve_vars):
            try_achieve_vars.update(next_achieve_vars)
            next_achieve_vars = set()
            for var in sorted(try_achieve_vars):
                for op in task.effect_to_operators[var]:
                    if not searchnode.is_operator_available(op):
                        continue
                    if op.is_applicable(searchnode.current_state):
                        return op, add_first
                    next_achieve_vars.update(op.precondition)

        return None, None
