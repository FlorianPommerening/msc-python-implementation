from RelaxedProblem import RelaxedProblem 
from BranchAndBoundSearch import BranchAndBoundSearch 
from SASParser import SASParser

parser = SASParser()
sas_problem = parser.parse_task(open("../output.sas"))
translationkey = parser.parse_translationkey(open("../test.groups"))
problem = RelaxedProblem()
search = BranchAndBoundSearch(problem)
print "Best solution has cost %d" % search.run()




        
