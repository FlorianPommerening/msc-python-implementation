from sys import stdout
from hmax import hmax

DEBUGSTREAM = stdout#open('debug.out', 'w')# stdout
DEBUGLEVEL = 2 
# 0 everything
# 1 regular events (i.e. backtracking)
# 2 rare events (i.e. found better solution)
# 3 warnings
# 4 errors
# 5 nothing

def debug_message(msg, level=0):
    if DEBUGSTREAM and level >= DEBUGLEVEL:
        print >> DEBUGSTREAM, msg


def plot_justification_graph(task, state, filename):
    def dotvarname(var):
        result = var.split()[0]
        result = result.replace("#", "_")
        return result
    def dotopname(op):
        result = op.name.replace(" ", "_")
        result = result.replace("-", "_")
        return result
    _, _, pcf = hmax(task, state)
    file = open(filename, 'w')
    file.write("digraph justificationgraph {\n")
    for var in task.variables:
        if var in state:
            color = "[fillcolor=green][style=filled]"
        elif var in task.goal:
            color = "[fillcolor=red][style=filled]"
        else:
            color = ""        
        file.write("    %s[shape=box]%s\n" % (dotvarname(var), color))
    for op in task.operators:
        if pcf.has_key(op):
            pre = pcf[op]
        else:
            continue
        for post in op.effect:
            file.write("    %s -> %s\n" % (dotvarname(pre), dotvarname(post)))
    file.write("}\n")
    file.close()


def plot_explanation_graph(task, state, filename, target_vars):
    def dotvarname(var):
        result = var.split()[0]
        result = result.replace("#", "_")
        return result
    def dotopname(op):
        result = op.name.replace(" ", "_")
        result = result.replace("-", "_")
        return result
    
    
    edges = []
    variables = set()
    _, hmax_value, pcf = hmax(task, state)
    
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
            if pcf.has_key(op) and hmax_value[pcf[op]] < best_h:
                best_h = hmax_value[pcf[op]]
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
    for var in variables:
        if var in state:
            color = "[color=green]"
        elif var in task.goal:
            color = "[color=red]"
        else:
            color = ""        
        if var in target_vars:
            color += "[fillcolor=red][style=filled]"            
        if hmax_value[var] < float("infinity"):
            color += "[fillcolor=green][style=filled][label=%s_h%d]" % (dotvarname(var), hmax_value[var])            
        file.write("    %s[shape=box]%s\n" % (dotvarname(var), color))
    file.writelines(edges)
    file.write("}\n")
    file.close()
