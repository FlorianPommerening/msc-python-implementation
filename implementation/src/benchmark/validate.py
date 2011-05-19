from benchmark.timeout import run_with_timeout 
from search.DeleteRelaxation import delete_relaxation
from search.lmcut import incremental_lmcut

import sys

def validateRelevanceAnalysis(sas_task, translationkey, filtered_h, timeout=None, silent=False):
    print "  validating relevance analysis... ",
    unfiltered_task = delete_relaxation(sas_task, translationkey)
    unfiltered_task.convert_to_canonical_form()
    unfiltered_task.crossreference()
    unfiltered_h = run_with_timeout(timeout, None, incremental_lmcut, unfiltered_task)
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
    for i, step in iterateSteps(debug_value_list, all):
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
    for i, step in iterateSteps(debug_value_list, all):
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
        
def iterateSteps(debug_value_list, all):
    if all:
        for i, step in enumerate(debug_value_list.steps):
            yield (i, step)
    else:
        yield (0, debug_value_list.steps[0])
        