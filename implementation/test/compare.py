from benchmark.timeout import run_with_timeout 
from search.DeleteRelaxation import delete_relaxation
from search.lmcut import calculate_lmcut
from relaxedtasktranslator import varname, opname

import sys

def validateRelevanceAnalysis(sas_task, translationkey, filtered_h, timeout=None, silent=False):
    print "  validating relevance analysis... ",
    unfiltered_task = delete_relaxation(sas_task, translationkey)
    unfiltered_task.convert_to_canonical_form()
    unfiltered_task.crossreference()
    unfiltered_h = run_with_timeout(timeout, None, calculate_lmcut, unfiltered_task)
    if unfiltered_h is None:
        print "timed out"
        return True
    if unfiltered_h != filtered_h:
        if not silent:
            assert False, "Relevance analysis changed heuristic from %d to %d" % (unfiltered_h, filtered_h)
        print "different heuristic value"
        return False
    print "same heuristic value"
    return True

def validatePcf(debug_value_list, task, all=False, silent=False):
    print "  validating pcf... ",
    for i, step in iterateSteps(debug_value_list, None, all):
        hmax = step.hmax_function
        pcf = step.pcf
        for op in task.operators:
            if pcf.has_key(op):
                maxhmax = max(hmax[p] for p in op.precondition)
                best_p = (p for p in op.precondition if hmax[p] == maxhmax).next()
                if maxhmax != hmax[pcf[op]]:
                    if not silent:
                        assert False, "invalid entry in pcf %d: operator '%s' has pcf of '%s' with hmax %d and precondition '%s' with hmax %d" % (
                                                     i, op.name, pcf[op], hmax[pcf[op]], best_p, maxhmax)
                    print "invalid"
                    return False
    print "valid"
    return True

def validateCut(debug_value_list, task, all=False, silent=False):
    print "  validating cuts (%d ops, %d vars)... " % (len(task.operators), len(task.variables)),
    i = -1
    for i, step in iterateSteps(debug_value_list, None, all):
        if i > 0:
            sys.stdout.write("\b"*len(str(i-1)))
        sys.stdout.write(str(i))
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
            print "invalid"
            return False
    sys.stdout.write("\b"*len(str(i)))
    print "valid"
    return True
        
def compareCuts(my_debug_value_list, malte_debug_value_list, all=False, silent=False):
    print "  comparing cuts... ",
    same = True
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
        same &= (my_cut == malte_cut)

    n_me = len(my_debug_value_list.steps)
    n_malte = len(malte_debug_value_list.steps)
    same &= (n_me == n_malte)
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
    if same:
        print "same"
        return True
    else:
        print "different"
        return False

def compareHmax(my_debug_value_list, malte_debug_value_list, silent=False, all=False):
    def fail(var, step, malte, me):
        if not silent:
            assert False, "Different hmax value for %s in step %d: (malte: %d, flo: %d)" % (var, step, malte, me)
        print "different"
    print "  comparing hmax... ",
    for i, my_step, malte_step in iterateSteps(my_debug_value_list, malte_debug_value_list, all):
        my_hmax = my_step.hmax_function
        my_result = my_step.hmax_value
        malte_hmax = malte_step.hmax_function
        malte_result = malte_step.hmax_value
        for var in my_hmax:
            if malte_hmax[varname(var)] != my_hmax[var]:
                fail(var, i, malte_hmax[varname(var)], my_hmax[var])
                return False
        if my_result != malte_result:
            fail("goal", i, malte_result, my_result)
            return False
    print "same"
    return True

def compareGoalZone(my_debug_value_list, malte_debug_value_list, silent=False, all=False):
    print "  comparing goalzone... ",
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
            print "different"
            return False
    print "same"
    return True

def iterateSteps(my_debug_value_list, malte_debug_value_list, all):
    if malte_debug_value_list is not None:
        if all:
            for i, (my_step, malte_step) in enumerate(zip(my_debug_value_list.steps, malte_debug_value_list.steps)):
                yield (i, my_step, malte_step)
        else:
            yield (0, my_debug_value_list.steps[0], malte_debug_value_list.steps[0])
    else:
        if all:
            for i, step in enumerate(my_debug_value_list.steps):
                yield (i, step)
        else:
            yield (0, my_debug_value_list.steps[0])
        
