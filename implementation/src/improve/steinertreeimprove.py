def discover_plan(task, h_add_achiever, initial_state=None, goal_variable=None, ignored_add_effects=None):
    pass
    return extract_plan(task, h_add_achiever, initial_state=initial_state, goal_variable=goal_variable)

def extract_plan(task, h_add_achiever, initial_state=None, goal_variable=None, assume_variable=None):
    if initial_state is None:
        initial_state = task.initial_state
    if goal_variable is None:
        goal_variable = task.goal[0]
    closed = {v:(v in initial_state) for v in task.variables}
    if assume_variable is not None:
        closed[assume_variable] = True
    queue = [goal_variable]
    plan = set()
    while queue:
        v = queue.pop()
        plan.add((h_add_achiever[v], v))
        for w in h_add_achiever[v].preconditions:
            if not closed[w]:
                closed[w] = True
                queue.insert(0, w)

def collect_achieved_facts(plan):
    return [a.effects for (a,_) in plan]

def find_replaced_plan_part(task, h_add_achiever, y, plan):
    plan_without_y = extract_plan(task, h_add_achiever, assume_variable=y)
    return plan - plan_without_y

def find_dependent_plan_part(task, h_add_achiever, y):
    def find_dependent_plan_part_for_goal(closed, h_add_achiever, y, goal):
        achiever = h_add_achiever[goal]
        dependent = set()
        if closed[goal]:
            return None
        if y in achiever.preconditions:
            return set([(achiever, goal)])
        for v in achiever.preconditions:
            dependent |= find_dependent_plan_part_for_goal(closed, h_add_achiever, y, v)
        if dependent:
            dependent.add((achiever, goal))
        return dependent
    closed = {v:(v in task.initial_state) for v in task.variables}
    return find_dependent_plan_part_for_goal(closed, h_add_achiever, y, task.goal[0])

def extract_contained_fluents(plan):
    return set([p for (_,p) in plan])

def plan_cost(plan):
    return sum([a.cost for (a,_) in plan])

def improve_plan(task, h_add_achiever, plan):
    improvable_facts = collect_achieved_facts(plan)
    for y in improvable_facts:
        replaced_plan_part = find_replaced_plan_part(task, h_add_achiever, y, plan)
        dependent_plan_part = find_dependent_plan_part(task, h_add_achiever, y)
        remaining_plan_part = plan - (replaced_plan_part | dependent_plan_part)
        initial_state_after_replace = task.initial_state | extract_contained_fluents(remaining_plan_part)
        ignored_add_effects = extract_contained_fluents(dependent_plan_part)
        alternative_h_add_achiever = {}
        alternative_plan = discover_plan(task, alternative_h_add_achiever, initial_state=initial_state_after_replace, goal_variable=y, ignored_add_effects=ignored_add_effects)
        if plan_cost(alternative_plan) < plan_cost(replaced_plan_part):
            for q in collect_achieved_facts(alternative_plan):
                h_add_achiever[q] = alternative_h_add_achiever[q]
            return True
    return False

def opimize_plan(task, plan):
    # TODO do some mojo with the h^add supporters, so that plan will be discovered in the first step
    h_add_achiever = {}
    plan = extract_plan(task, h_add_achiever)
    while improve_plan(task, h_add_achiever, plan):
        pass
    return plan