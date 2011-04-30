from RelaxedProblem import RelaxedProblem 
from BranchAndBoundSearch import BranchAndBoundSearch 
from SASParser import SASParser

parser = SASParser(open("../output.sas"))
sas_problem = parser.parse()
problem = RelaxedProblem()
search = BranchAndBoundSearch(problem)
print "Best solution has cost %d" % search.run()




        
