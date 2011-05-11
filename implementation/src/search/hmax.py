from collections import defaultdict
from heapq import heappush, heappop

def hmax(task, state, operator_costs=None):
    if operator_costs is None:
        operator_costs = {op:op.cost for op in task.operators}
        
    hmax, closed, operators_with_precondition, precondition_choice_function = {}, {}, defaultdict(list), {}
    for v in task.variables:
        hmax[v] = float("infinity")
        closed[v] = False

    for op in task.operators:
        assert len(op.precondition), "operator without precondition unsupported"
        op.unsatisfied_preconditions = len(op.precondition)
        for e in op.precondition:
            operators_with_precondition[e].append(op)

    # nodes are stored with the key (hmax, depth) to use depth for tie-breaking
    # this gives better (more) landmarks
    heap = []
    for v in state:
        hmax[v] = 0
        heappush(heap, ((0,0),v))

    while heap:
        ((key, depth), u) = heappop(heap)
        if hmax[u] > key:
            # the hmax value of this key was decreased after inserting it
            # this could be done with the min-heap operation decrease-key,
            # but it is faster to insert duplicates and ignore the ones with the old key
            continue
        closed[u] = True
        for op in operators_with_precondition[u]:
            op.unsatisfied_preconditions -= 1
            if op.unsatisfied_preconditions == 0:
                # We discovered all preconditions of this action.
                # Since preconditions are expanded in order of their hmax-value,
                # one of the maximizing preconditions is always expanded last
                # can just choose u as precondition
                # (could also iterate over a.preconditions and search for other preconditions)
                precondition_choice_function[op] = u
                for v in op.effect:
                    if closed[v]:
                        continue
                    successor_cost = hmax[u] + operator_costs[op]
                    if successor_cost < hmax[v]:
                        hmax[v] = successor_cost
                        heappush(heap, ((successor_cost, depth+1), v))
    result = 0
    for g in task.goal:
        if hmax[g] > result:
            result = hmax[g]
    return result, hmax, precondition_choice_function
