from RelaxedProblem import RelaxedProblem 
from BranchAndBoundSearch import BranchAndBoundSearch 
from SASProblem import SASProblem

sasproblem = SASProblem()
sasproblem.parse(open("/home/flogo/downward/src/output.sas"))
problem = RelaxedProblem()
search = BranchAndBoundSearch(problem)
print "Best solution has cost %d" % search.run()




        
