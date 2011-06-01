#ifndef RELAXEDTASK_H
#define RELAXEDTASK_H

#include <string>
#include <fstream>

#include "Variable.h"
#include "RelaxedOperator.h"

/// A relaxed planning task in canonical form
/// (only one goal literal, only one literal in initial state and at least one precondition in each operator)
class RelaxedTask {
public:
    RelaxedTask();
    RelaxedTask(RelaxedTask const & other);
    RelaxedTask& operator=(const RelaxedTask &rhs);

    Variable *init;
    Variable *goal;
    std::vector<Variable> variables;
    std::vector<RelaxedOperator> operators;

    void parseFile(const char *filename);
    Variable *getVariable(const std::string name);
    void crossreference();

private:
    void parseTask(std::ifstream &taskfile);
    void parseVariableSet(std::ifstream &taskfile, VariableSet &set);
};

#endif
