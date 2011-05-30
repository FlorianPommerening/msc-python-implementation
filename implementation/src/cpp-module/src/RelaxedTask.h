#ifndef RELAXEDTASK_H
#define RELAXEDTASK_H

#include <string>
#include "Variable.h"
#include "RelaxedOperator.h"

/// A relaxed planning task in canonical form
/// (only one goal literal, only one literal in initial state and at least one precondition in each operator)
class RelaxedTask {
public:
    RelaxedTask();
    RelaxedTask(char *filename);
    Variable *init;
    Variable *goal;
    std::vector<Variable> variables;
    std::vector<RelaxedOperator> operators;

    const Variable *getVariable(const std::string name) const;
    void crossreference();
};

#endif
