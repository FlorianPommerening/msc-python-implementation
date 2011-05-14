from relaxedtasktranslator import varname
import sys


def validateCut(debug_value_list, task, all=False):
    if all:
        cuts = [step.cut for step in debug_value_list.steps]
    else:
        cuts = [debug_value_list.steps[0].cut]
    valid = True
    for i, cut in enumerate(cuts):
        print "%d," % i,
        sys.stdout.flush() 
        operators = [op for op in task.operators if op not in cut]
        state = task.initial_state
        old_state = None
        while state != old_state:
            old_state = state
            for op in operators:
                if op.precondition.issubset(state):
                    state = state.union(op.effect)
        valid &= not task.goal.issubset(state)
        # DEBUG
        assert valid, "Found invalid cut: [%s]" % [op.name for op in cut]
    print 
    return valid
        


def compareHmax(my_debug_value_list, malte_debug_value_list, silent=False):
    # only compare first step for now
    my_hmax = my_debug_value_list.steps[0].hmax_function
    my_result = my_debug_value_list.steps[0].hmax_value
    malte_hmax = malte_debug_value_list.steps[0].hmax_function
    malte_result = malte_debug_value_list.steps[0].hmax_value
    failed = False
    for var in my_hmax:
        if malte_hmax[varname(var)] != my_hmax[var]:
            failed = True
            if not silent:
                assert False, "Different hmax value for %s: (malte: %d, flo: %d)" % (var, malte_hmax[varname(var)], my_hmax[var])
    if my_result == malte_result:
        failed = True
        if not silent:
            assert False, "Different hmax value for goal: (malte: %d, flo: %d)" % (malte_result, my_result)
    return failed

def compareGoalZone(my_debug_value_list, malte_debug_value_list, silent=False):
    # only compare first step for now
    my_near_goal_area = set(map(varname, my_debug_value_list.steps[0].near_goal_area))
    malte_near_goal_area = set(map(str, malte_debug_value_list.steps[0].near_goal_area))

    if my_near_goal_area - malte_near_goal_area and not silent:
        print
        print "Additional atoms in my goal zone:"
        for var in sorted(my_near_goal_area - malte_near_goal_area):
            print var
    if malte_near_goal_area - my_near_goal_area and not silent:
        print
        print "Additional atoms in malte's goal zone:"
        for var in sorted(malte_near_goal_area - my_near_goal_area):
            print var
    return malte_near_goal_area == my_near_goal_area
