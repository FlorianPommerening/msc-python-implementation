class OperatorSelector(object):
    '''
    Base class for different ways to select the most promising operator to execute in a state  
    '''

    def most_promising_operator_id(self, searchnode, problem, upper_bound):
        '''
        Returns index of most promising operator in searchnode.current_state or -1 if no operator is applicable
        Base class implementation picks first applicable operator. More sophisticated behavior in derived classes
        '''
        for operator_id in searchnode.available_operator_ids:
            if problem.operator_applicable(operator_id, searchnode.current_state):
                return operator_id
        return -1