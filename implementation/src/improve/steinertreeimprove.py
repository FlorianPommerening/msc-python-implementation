def extract_plan(task, h_add_supporters, initial_state=None, goal_variable=None, assume_variable=None, ignored_add_effects=None):
    if initial_state is None:
        initial_state = task.initial_state
    if goal_variable is None:
        goal_variable = task.goal[0]
    pass

def collect_improvable_facts(task, h_add_supporters, plan):
    pass

def find_replaced_plan_part(task, h_add_supporters, y, plan):
    plan_without_y = extract_plan(task, assume_variable=y)
    return plan - plan_without_y

def find_dependent_plan_part(task, h_add_supporters, y, plan):
    pass

def extract_supported_fluents(plan):
    pass

def plan_cost(plan):
    pass

def improve_plan(task, h_add_supporters, plan):
    improvable_facts = collect_improvable_facts(plan)
    for y in improvable_facts:
        replaced_plan_part = find_replaced_plan_part(task, h_add_supporters, y, plan)
        dependent_plan_part = find_dependent_plan_part(y, plan)
        remaining_plan_part = plan - (replaced_plan_part | dependent_plan_part)
        initial_state_after_replace = task.initial_state | extract_supported_fluents(remaining_plan_part)
        ignored_add_effects = extract_supported_fluents(dependent_plan_part)
        alternative_plan = extract_plan(task, h_add_supporters, initial_state=initial_state_after_replace, goal_variable=y, ignored_add_effects=ignored_add_effects)
        if plan_cost(alternative_plan) < plan_cost(replaced_plan_part):
            pass


def opimize_plan(task, plan):
    # TODO do some mojo with the h^add supporters, so that plan will be discovered in the first step
    h_add_supporters = {}
    plan = extract_plan(task, h_add_supporters)
    while improve_plan(task, h_add_supporters, plan):
        pass
    return plan