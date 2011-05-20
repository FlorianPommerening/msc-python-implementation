from sys import stdout

DEBUGSTREAM = open('debug.out', 'w')# stdout
DEBUGLEVEL = 0
# 0 everything
# 1 regular events (i.e. backtracking)
# 2 rare events (i.e. found better solution)
# 3 warnings
# 4 errors
# 5 nothing

def debug_message(msg, level=0):
    if DEBUGSTREAM and level >= DEBUGLEVEL:
        print >> DEBUGSTREAM, msg

class DebugValueList:
    def __init__(self):
        self.steps = []
    def newEntry(self):
        new = DebugValues()
        self.steps.append(new)
        return new

class DebugValues:
    def __init__(self):
        self.hmax_function = {}
        self.near_goal_area = [] 
        self.pcf = {}
        self.hmax_value = 0
        self.cut = []

def dotvarname(var):
    if len(var.split()) < 3:
        result = var.split()[0]
    else:
        result = "_".join(var.split()[2:])
    result = result.replace("@", "")
    result = result.replace("#", "_")
    result = result.replace("(", "_")
    result = result.replace(")", "")
    result = result.replace(",", "")
    return result
def dotopname(op):
    result = op.name.replace(" ", "_")
    result = result.replace("@", "")
    result = result.replace("-", "_")
    return result

def plot_justification_graph(task, state, filename, step=0):
    from search.lmcut import calculate_lmcut
    debug_value_list = DebugValueList()
    calculate_lmcut(task, debug_value_list=debug_value_list)
    pcf = debug_value_list.steps[step].pcf
    cut = debug_value_list.steps[step].cut
    goalzone = debug_value_list.steps[step].near_goal_area
    file = open(filename, 'w')
    file.write("digraph justificationgraph {\n")
    for var in task.variables:
        if var in state:
            color = "[fillcolor=green][style=filled]"
        elif var in task.goal:
            color = "[fillcolor=red][style=filled]"
        else:
            color = ""        
        if var in goalzone:
            color += "[color=red]"
        file.write("    %s[shape=box]%s\n" % (dotvarname(var), color))
    for op in task.operators:
        if pcf.has_key(op):
            pre = pcf[op]
        else:
            continue
        for post in op.effect:
            if op in cut and post in goalzone:
                color = "[color=red][label=%s]" % dotopname(op)
            else:
                color = ""
            file.write("    %s -> %s%s\n" % (dotvarname(pre), dotvarname(post), color))
    file.write("}\n")
    file.close()


def plot_explanation_graph(task, state, filename, target_vars, step=0):
    from lmcut import calculate_lmcut
    debug_value_list = DebugValueList()
    calculate_lmcut(task, debug_value_list=debug_value_list)
    pcf = debug_value_list.steps[step].pcf
    hmax_function = debug_value_list.steps[step].hmax_function

    edges = []
    variables = set()
    stack = list(target_vars)
    closed = []
    while stack:
        var = stack.pop()
        if var in closed:
            continue
        closed.append(var)
        all_ops = []
        best_op = None
        best_h = float("infinity")
        for op in task.operators:
            if var not in op.effect:
                continue
            all_ops.append(op)
            if pcf.has_key(op) and hmax_function[pcf[op]] < best_h:
                best_h = hmax_function[pcf[op]]
                best_op = op
        if best_op:
            all_ops = [best_op]
        colors = ['red', 'green', 'blue', 'yellow', 'magenta', 'cyan', 'burlywood', 'orange', 'darkgreen', 'grey', 'purple']
        colorindex = 0
        for op in all_ops:
            if pcf.has_key(op):
                pre = pcf[op]
                if pre not in closed:
                    stack.append(pre)
                edges.append("    %s -> %s[color=black]\n" % (dotvarname(pre), dotvarname(var)))
                variables.add(var)
                variables.add(pre)
            else:
                for pre in list(op.precondition):
                    if pre not in closed:
                        stack.append(pre)
                    if colorindex == 0:
                        label = "[label=%s]" % dotopname(op)
                    else:
                        label = ""
                    edges.append("    %s -> %s[color=%s]%s\n" % (dotvarname(pre), dotvarname(var), colors[colorindex % len(colors)], label))
                    variables.add(var)
                    variables.add(pre)
            colorindex += 1
    
    file = open(filename, 'w')
    file.write("digraph justificationgraph {\n")
    for var in state:
        if var not in variables:
            continue
        if var in target_vars:
            fillcolor = "[fillcolor=red][style=filled]"            
        elif hmax_function[var] < float("infinity"):
            fillcolor = "[fillcolor=green][style=filled][label=%s_h%d]" % (dotvarname(var), hmax_function[var])            
        file.write("    %s[shape=box][color=green]%s\n" % (dotvarname(var), fillcolor))
    for var in variables:
        if var in state or var in task.goal:
            continue
        if var in target_vars:
            fillcolor = "[fillcolor=red][style=filled]"            
        elif hmax_function[var] < float("infinity"):
            fillcolor = "[fillcolor=green][style=filled][label=%s_h%d]" % (dotvarname(var), hmax_function[var])            
        file.write("    %s[shape=box]%s\n" % (dotvarname(var), fillcolor))
    for var in task.goal:
        if var in state:
            continue
        if var in target_vars:
            fillcolor = "[fillcolor=red][style=filled]"            
        if hmax_function[var] < float("infinity"):
            fillcolor = "[fillcolor=green][style=filled][label=%s_h%d]" % (dotvarname(var), hmax_function[var])            
        file.write("    %s[shape=box][color=red]%s\n" % (dotvarname(var), fillcolor))
    file.writelines(edges)
    file.write("}\n")
    file.close()
