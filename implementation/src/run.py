from search.BranchAndBoundSearch import BranchAndBoundSearch 
from search.SASParser import SASParser
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.OperatorSelector import AchieveTargetsRemoveRedundantOperatorSelector
from search.Debug import plot_justification_graph,plot_explanation_graph

parser = SASParser()
sastask = parser.parse_task(open("output.sas"))
translationkey = parser.parse_translationkey(open("test.groups"))
problem = delete_relaxation(sastask, translationkey)
filter_irrelevant_variables(problem)
plot_justification_graph(problem, problem.initial_state, "justificationgraph.dot")
plot_explanation_graph(problem, problem.initial_state, "explanationgraph.dot", problem.goal)
search = BranchAndBoundSearch(problem, AchieveTargetsRemoveRedundantOperatorSelector())
print "starting search"
print "Best solution has cost %d" % search.run()




        
