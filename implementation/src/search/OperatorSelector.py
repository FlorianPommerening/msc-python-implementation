from .Debug import debug_message

class OperatorSelector(object):
    '''
    Base class for different ways to select the most promising operator to execute in a state  
    '''

    def most_promising_operator_id(self, searchnode, problem, upper_bound, operators_to_remove):
        '''
        Returns index of most promising operator in searchnode.current_state or None if no operator is applicable
        This method handles a bit of basic filtering and turns to _select() for the actual selection.
        To implement an OperatorSelector derive from this calls and override _select()

        operators_to_remove can be filled by this function to remove more operators 
        from searchnode.available_operator_ids, than just the one that is applied.
        This might be the case if an operator is redundant or a no-op 
        '''
        max_cost = upper_bound - searchnode.current_cost
        applicable_operators = []
        for operator_id in searchnode.available_operator_ids:
            if problem.operator_cost(operator_id) > max_cost:
                continue
            if problem.operator_applicable(operator_id, searchnode.current_state):
                applicable_operators.append(operator_id)
        if not applicable_operators:
            return None
        return self._select(searchnode, problem, applicable_operators, upper_bound, operators_to_remove)

    def _select(self, searchnode, problem, applicable_operators, upper_bound, operators_to_remove):
        '''
        Returns index of most promising operator in searchnode.current_state.
        applicable_operators is guaranteed to contain at least one operator at this point.
        Base class implementation picks first applicable operator. More sophisticated behavior in derived classes
        '''
        return applicable_operators[0]


class AchieveTargetsRemoveRedundantOperatorSelector(OperatorSelector):
    def _select(self, searchnode, problem, applicable_operators, upper_bound, operators_to_remove):
        '''
        Tries to pick operators achieving the most goal literals 
        and removes operators that do not change the current state
        '''
        best = None
        most = 0
        missing_goals = problem.goal - searchnode.current_state
        for operator_id in applicable_operators:
            goals = len(problem.operators[operator_id].effect & missing_goals)
            if goals > most:
                most = goals
                best = operator_id
        if best:
            debug_message("Found goal achieving operator", 1)
            return best

        good_operators = []
        for operator_id in applicable_operators:
            if (problem.operators[operator_id].effect | searchnode.current_state) == searchnode.current_state:
                operators_to_remove.append(operator_id)
            else:
                good_operators.append(operator_id)
        if good_operators:
            return good_operators[0]
        return None

class AchieveLandmarksRemoveRedundantOperatorSelector(OperatorSelector):
    def _select(self, searchnode, problem, applicable_operators, upper_bound, operators_to_remove):
        '''
        Tries to pick operators achieving a landmark 
        and removes operators that do not change the current state
        '''
        best = None
        smallest = float("inf")
        for operator_id in applicable_operators:
            for landmark in searchnode.heuristic_calculator.landmarks:
                if len(landmark) < smallest and problem.operators[operator_id] in landmark:
                    smallest = len(landmark)
                    best = operator_id
        if best is not None:
            debug_message("Found landmark achieving operator", 1)
            return best

        good_operators = []
        for operator_id in applicable_operators:
            if (problem.operators[operator_id].effect | searchnode.current_state) == searchnode.current_state:
                operators_to_remove.append(operator_id)
            else:
                good_operators.append(operator_id)
        if good_operators:
            return good_operators[0]
        return None
