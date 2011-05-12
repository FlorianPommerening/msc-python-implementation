from translate.relaxed_tasks import *
import re

def varname(var):
    if var == "@@init" or var == "@@goal":
        return var
    match = re.match(r"^var\d+#\d+ (.+)$", var)
    if not match:
        assert False, "cannot translate variable '%s'" % var
    return match.groups(1)[0]

def opname(op):
    if op.name == "@@goal-operator":
        return "@@goal-action"
    if op.name == "@@init-operator":
        return "@@init-action"
    return "(%s)" % op.name

def translate_relaxed_task(task):
    variables = {name:RelaxedAtom(varname(name)) for name in task.variables}
    atoms = sorted(variables.values())
    init = sorted([variables[name] for name in task.initial_state])
    goals = sorted([variables[name] for name in task.goal])
    actions = []
    for op in task.operators:
	preconditions = sorted([variables[name] for name in op.precondition])
	effects = sorted([variables[name] for name in op.effect])
        actions.append(RelaxedAction(opname(op), preconditions, effects, op.cost))
    return RelaxedTask(atoms, init, goals, actions)

