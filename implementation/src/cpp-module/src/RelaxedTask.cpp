#include <string>
#include <iostream>
#include <fstream>

#include "RelaxedTask.h"
#include "foreach.h"

RelaxedTask::RelaxedTask() {
}

RelaxedTask::RelaxedTask(char *filename) {
    std::ifstream taskfile(filename);
    parseTask(taskfile, this);
    taskfile.close();
}

void RelaxedTask::crossreference() {
    foreach(RelaxedOperator &op, this->operators) {
        foreach(Variable *effect, op.effects) {
            effect->effect_of.push_back(&op);
        }
        foreach(Variable *precondition, op.preconditions) {
            precondition->precondition_of.push_back(&op);
        }
    }
}

const Variable *RelaxedTask::getVariable(const std::string name) const {
    foreach(const Variable &var, this->variables) {
        if (var.name == name) {
            return &var;
        }
    }
    throw "Unknown variable '" + name + "'";
}


void parseVariableSet(ifstream &taskfile, VariableSet &set, RelaxedTask *task) {
    std::string line;
    if (!std::getline(taskfile, line)) throw "Number of variables expected";
    int nPreconditions = atoi(line);
    for (int i = 0; i < nPreconditions; ++i) {
        if (!std::getline(taskfile, line)) throw "Name of variable expected";
        set.add(task->getVariable(line));
    }
}

void parseOperator(ifstream &taskfile, RelaxedOperator &op, RelaxedTask *task) {
    std::string line;
    if (!std::getline(taskfile, line) || line != "operator") throw "Operator expected";
    if (!std::getline(taskfile, op.name)) throw "Operator name expected";
    if (!std::getline(taskfile, line)) throw "Operator cost expected";
    op.cost = atoi(line);
    parseVariableSet(taskfile, op.preconditions, task);
    parseVariableSet(taskfile, op.effects, task);
}

void parseTask(ifstream &taskfile, RelaxedTask *task) {
    std::string line;
    if (!std::getline(taskfile, line) || line != "variables") throw "variables expected";
    if (!std::getline(taskfile, line)) throw "Number of variables expected";
    int nVariables = atoi(line);
    for (int i = 0; i < nVariables; ++i) {
        if (!std::getline(taskfile, line)) throw "Name of variable expected";
        task->variables.push_back(Variable(line));
    }
    if (!std::getline(taskfile, line) || line != "init") throw "init expected";
    if (!std::getline(taskfile, line)) throw "Initial state variable expected";
    task->init = task->getVariable(line);
    if (!std::getline(taskfile, line) || line != "goal") throw "goal expected";
    if (!std::getline(taskfile, line)) throw "Goal state variable expected";
    task->goal = task->getVariable(line);
    if (!std::getline(taskfile, line) || line != "operators") throw "operators expected";
    if (!std::getline(taskfile, line)) throw "Number of operators expected";
    int nOperators = atoi(line);
    for (int i = 0; i < nOperators; ++i) {
        RelaxedOperator op;
        parseOperator(taskfile, op, task);
        task->operators.push_back(op);
    }
}
