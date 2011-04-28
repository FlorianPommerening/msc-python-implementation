from RelaxedProblem import RelaxedProblem 
from BranchAndBoundSearch import BranchAndBoundSearch 

problem = RelaxedProblem()
search = BranchAndBoundSearch(problem)
print "Best solution has cost %d" % search.run()




        
