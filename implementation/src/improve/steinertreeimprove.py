from heapq import heappush, heappop

def discover_plan(task, h_add_achiever, initial_state=None, goal_variable=None, ignored_add_effects=None):
    def push(var, cost, op):
        if ignored_add_effects and var in ignored_add_effects:
            return
        h_add_var_cost[var] = cost
        h_add_achiever[var] = op
        heappush(heap, (cost, var))
    def pop():
        while heap:
            (cost, var)  = heappop(heap)
            if h_add_var_cost[var] < cost:
                continue
            return var
        return None
        
    if initial_state is None:
        initial_state = task.initial_state
    if goal_variable is None:
        goal_variable = list(task.goal)[0]
    h_add_op_cost = {op:op.cost for op in task.operators}
    h_add_var_cost = {v:float("inf") for v in task.variables}
    
    heap = []
    for v in initial_state:
        push(v, 0, None)
    
    unsatisfied_preconditions = {op:len(op.precondition) for op in task.operators}
            
    while heap:
        v = pop()
        if v == goal_variable:
            break
        for op in task.precondition_to_operators[v]:
            h_add_op_cost[op] += h_add_var_cost[v]
            unsatisfied_preconditions[op] -= 1
            if unsatisfied_preconditions[op] == 0:
                for w in op.effect:
                    if h_add_var_cost[w] > h_add_op_cost[op]:
                        push(w, h_add_op_cost[op], op)
    plan = extract_plan(task, h_add_achiever, initial_state=initial_state, goal_variable=goal_variable)
    return h_add_var_cost[goal_variable], plan

def serialize_plan(task, plan, initial_state=None):
    if initial_state is None:
        initial_state = task.initial_state
    state = set(initial_state)
    serialized_plan = []
    finished = False
    while not finished:
        finished = True
        for (op,_) in plan:
            if op in serialized_plan:
                continue
            if op.is_applicable(state):
                state = op.apply(state)
                serialized_plan.append(op)
            else:
                finished = False
    return serialized_plan

def extract_plan(task, h_add_achiever, initial_state=None, goal_variable=None, assume_variable=None):
    if initial_state is None:
        initial_state = task.initial_state
    if goal_variable is None:
        goal_variable = list(task.goal)[0]
    closed = {v:(v in initial_state) for v in task.variables}
    plan = set()
    if assume_variable is not None:
        if assume_variable == goal_variable:
            return plan
        closed[assume_variable] = True
    stack = [goal_variable]
    while stack:
        v = stack.pop()
        plan.add((h_add_achiever[v], v))
        for w in h_add_achiever[v].precondition:
            if not closed[w]:
                closed[w] = True
                stack.append(w)
    return plan

def collect_achieved_facts(plan):
    achieved = set()
    for (a,_) in plan:
        achieved |= a.effect
    return achieved

def find_replaced_plan_part(task, h_add_achiever, y, plan):
    plan_without_y = extract_plan(task, h_add_achiever, assume_variable=y)
    actions_used_for_other_purpose = set([a for (a,_) in plan_without_y])
    replaced_plan_part = set([(a,p) for (a,p) in plan if a not in actions_used_for_other_purpose])
    return replaced_plan_part


def find_dependent_plan_part(task, h_add_achiever, y):
    def find_dependent_plan_part_for_goal(goal):
        if closed[goal]:
            return
        is_dependent[goal] = False
        achiever = h_add_achiever[goal]
        for v in achiever.precondition:
            if v == y:
                is_dependent[goal] = True
                continue
            find_dependent_plan_part_for_goal(v)
            is_dependent[goal] |= is_dependent[v] 
        if is_dependent[goal]:
            dependent_part.add((achiever, goal))
        closed[goal] = True
    dependent_part = set()
    is_dependent = {}
    closed = {v:False for v in task.variables}
    for v in task.initial_state:
        closed[v] = True
        is_dependent[v] = False
    find_dependent_plan_part_for_goal(list(task.goal)[0])
    return dependent_part

def extract_contained_fluents(plan):
    return set([p for (_,p) in plan])

def plan_cost(plan):
    return sum([unique.cost for unique in set([a for (a,_) in plan])])

def improve_plan(task, h_add_achiever, plan):
    improvable_facts = collect_achieved_facts(plan)
    for y in improvable_facts:
        replaced_plan_part = find_replaced_plan_part(task, h_add_achiever, y, plan)
        if not replaced_plan_part:
            continue
        dependent_plan_part = find_dependent_plan_part(task, h_add_achiever, y)
        remaining_plan_part = plan - (replaced_plan_part | dependent_plan_part)
        initial_state_after_replace = task.initial_state | extract_contained_fluents(remaining_plan_part)
        ignored_add_effects = extract_contained_fluents(dependent_plan_part)
        alternative_h_add_achiever = {}
        _, alternative_plan = discover_plan(task, alternative_h_add_achiever, initial_state=initial_state_after_replace, goal_variable=y, ignored_add_effects=ignored_add_effects)
        if plan_cost(alternative_plan) < plan_cost(replaced_plan_part):
            for (a,q) in alternative_plan:
            # TODO should this be:
            # for q in collect_achieved_facts(alternative_plan):
                h_add_achiever[q] = a
            return True
    return False

def opimize_plan(task, plan, h_add_achiever={}):
    # TODO do some mojo with the h^add supporters, so that plan will be discovered in the first step
    plan = extract_plan(task, h_add_achiever)
    while improve_plan(task, h_add_achiever, plan):
        plan = extract_plan(task, h_add_achiever)
        print "better plan", plan_cost(plan)
    return plan