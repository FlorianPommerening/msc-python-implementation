#ifndef RELAXEDOPERATOR_H
#define RELAXEDOPERATOR_H

#include <string>
#include <iostream>
#include <fstream>

#include "Variable.h"

class RelaxedOperator {
public:
    std::string name;
    int cost;
    VariableSet preconditions;
    VariableSet effects;
    bool isApplicable(const VariableSet &state) const;
    void apply(const VariableSet &state, VariableSet &successorState) const;
};

inline bool RelaxedOperator::isApplicable(const VariableSet &state) const {
    return this->preconditions.isSubsetOf(state);
}

inline void RelaxedOperator::apply(const VariableSet &state, VariableSet &successorState) const {
    this->effects.union_with(state, successorState);
}

#endif
