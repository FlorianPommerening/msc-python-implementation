from relaxedtasktranslator import varname

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