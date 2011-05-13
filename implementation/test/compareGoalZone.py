from relaxedtasktranslator import varname

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
