from search.BranchAndBoundSearch import BranchAndBoundSearch 
from search.SASParser import SASParser
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.OperatorSelector import AchieveTargetsRemoveRedundantOperatorSelector

parser = SASParser()
sastask = parser.parse_task(open("output.sas"))
translationkey = parser.parse_translationkey(open("test.groups"))
problem = delete_relaxation(sastask, translationkey)
filter_irrelevant_variables(problem)
search = BranchAndBoundSearch(problem, AchieveTargetsRemoveRedundantOperatorSelector())
print "Best solution has cost %d" % search.run()




        
