from RelaxedProblem import RelaxedProblem 
from BranchAndBoundSearch import BranchAndBoundSearch 
from SASParser import SASParser
from DeleteRelaxation import delete_relaxation
from OperatorSelector import AchieveTargetsRemoveRedundantOperatorSelector

parser = SASParser()
sastask = parser.parse_task(open("../output.sas"))
translationkey = parser.parse_translationkey(open("../test.groups"))
problem = delete_relaxation(sastask, translationkey)
search = BranchAndBoundSearch(problem, AchieveTargetsRemoveRedundantOperatorSelector())
print "Best solution has cost %d" % search.run()




        
