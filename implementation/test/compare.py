from relaxedtasktranslator import varname, opname
import sys


def validateCut(debug_value_list, task, all=False, silent=False):
    if all:
        steps = debug_value_list.steps
    else:
        steps = [debug_value_list.steps[0]]
    for i, step in enumerate(steps):
        print "%d," % i,
        sys.stdout.flush() 
        operators = [op for op in task.operators if op not in step.cut]
        state = task.initial_state
        old_state = None
        while state != old_state:
            old_state = state
            for op in operators:
                if op.precondition.issubset(state):
                    state = state.union(op.effect)
        if task.goal.issubset(state):
            if not silent:
                assert False, "Found invalid cut: [%s]" % [op.name for op in step.cut]
            return False
    print 
    return True
        
def compareCuts(my_debug_value_list, malte_debug_value_list, all=False, silent=False):
    for i, my_step, malte_step in iterateSteps(my_debug_value_list, malte_debug_value_list, all):
        my_cut = set(map(opname, my_step.cut))
        malte_cut = set([op.name for op in malte_step.cut])
        if my_cut - malte_cut and not silent:
            print
            print "Additional atoms in my cut %d:" % i
            for op in sorted(my_cut - malte_cut):
                print op
            print
            print "Malte's cut %d:" % i
            for op in sorted(malte_cut):
                print op
        if malte_cut - my_cut and not silent:
            print
            print "Additional atoms in malte's cut %d:" % i
            for op in sorted(my_cut - malte_cut):
                print op
            print
            print "My cut %d:" % i
            for op in sorted(my_cut):
                print op
                
    n_me = len(my_debug_value_list.steps)
    n_malte = len(malte_debug_value_list.steps)
    if all and n_me < n_malte:
        for i in range(n_me, n_malte):
            if not malte_debug_value_list.steps[i].cut:
                continue
            print
            print "Additional cut from malte:"
            for op in malte_debug_value_list.steps[i].cut:
                print op.name
    if all and n_malte < n_me:
        for i in range(n_malte, n_me):
            print
            print "Additional cut from me:"
            for op in my_debug_value_list.steps[i].cut:
                print opname(op)

def compareHmax(my_debug_value_list, malte_debug_value_list, silent=False, all=False):
    for i, my_step, malte_step in iterateSteps(my_debug_value_list, malte_debug_value_list, all):
        my_hmax = my_step.hmax_function
        my_result = my_step.hmax_value
        malte_hmax = malte_step.hmax_function
        malte_result = malte_step.hmax_value
        for var in my_hmax:
            if malte_hmax[varname(var)] != my_hmax[var]:
                # DEBUG
                print i, var, "(malte: %d, my: %d)" % (malte_hmax[varname(var)], my_hmax[var])
                if not silent:
                    assert False, "Different hmax value for %s in step %d: (malte: %d, flo: %d)" % (var, i, malte_hmax[varname(var)], my_hmax[var])
                return False
        if my_result != malte_result:
            if not silent:
                assert False, "Different hmax value for goal in step %d: (malte: %d, flo: %d)" % (i, malte_result, my_result)
            return False
    return True

def compareGoalZone(my_debug_value_list, malte_debug_value_list, silent=False, all=False):
    for i, my_step, malte_step in iterateSteps(my_debug_value_list, malte_debug_value_list, all):
        my_near_goal_area = set(map(varname, my_step.near_goal_area))
        malte_near_goal_area = set(map(str, malte_step.near_goal_area))
        if my_near_goal_area - malte_near_goal_area and not silent:
            print
            print "Additional atoms in my goal zone (%d):" % i
            for var in sorted(my_near_goal_area - malte_near_goal_area):
                print var
        if malte_near_goal_area - my_near_goal_area and not silent:
            print
            print "Additional atoms in malte's goal zone (%d):" %i
            for var in sorted(malte_near_goal_area - my_near_goal_area):
                print var
        if malte_near_goal_area != my_near_goal_area:
            return False
    return True

def iterateSteps(my_debug_value_list, malte_debug_value_list, all):
    if all:
        for i, (my_step, malte_step) in enumerate(zip(my_debug_value_list.steps, malte_debug_value_list.steps)):
            yield (i, my_step, malte_step)
    else:
        yield (0, my_debug_value_list.steps[0], malte_debug_value_list.steps[0])
