#! /usr/bin/python
from translate import *
from relaxedtasktranslator import translate_relaxed_task
from search.SASParser import SASParser
from search.DeleteRelaxation import delete_relaxation
from search.RelevanceAnalysis import filter_irrelevant_variables
from search.lmcut import incremental_lmcut

def maltetranslated(task):
    relaxed_task = translate_relaxed_task(task)
    relaxed_task.convert_to_canonical_form()
    crossreference_task(relaxed_task)
    return additive_hmax(relaxed_task)

def flo(task):
    return incremental_lmcut(task, task.initial_state, [], {})


