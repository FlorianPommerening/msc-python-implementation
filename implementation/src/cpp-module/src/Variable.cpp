#include <algorithm>
#include <iostream>

#include "Variable.h"

Variable::Variable(std::string name): name(name) {
}

Variable::~Variable() {
    std::cout << "Variable " << this->name << " destroyed" << std::endl;
}

VariableSet::VariableSet() {
}

VariableSet::VariableSet(Variable **first, Variable **last): variables(first, last) {
}

void VariableSet::add(Variable *element) {
    this->variables.insert(element);
}

void VariableSet::union_with(const VariableSet &other, VariableSet &unionSet) const {
    unionSet.variables.clear();
    std::set_union(this->variables.begin(), this->variables.end(),
                   other.variables.begin(), other.variables.end(),
                   std::inserter(unionSet.variables, unionSet.variables.begin()));
}

bool VariableSet::isDisjointWith(const VariableSet &other) const {
    if (this->variables.empty() || other.variables.empty()) {
        return true;
    }
    std::set<Variable *>::iterator it1 = this->variables.begin();
    std::set<Variable *>::iterator last1 = this->variables.end();
    std::set<Variable *>::iterator it2 = other.variables.begin();
    std::set<Variable *>::iterator last2 = other.variables.end();
    if (*it1 > *(other.variables.rbegin()) || *it2 > *(this->variables.rbegin())) {
        return true;
    }
    while (it1!=last1 && it2!=last2)
    {
      if (*it1 == *it2) return false;
      else if (*it1 < *it2) ++it1;
      else ++it2;
    }
    return true;
}

bool VariableSet::isSubsetOf(const VariableSet &other) const {
    return std::includes(other.variables.begin(), other.variables.end(),
                         this->variables.begin(), this->variables.end());
}
