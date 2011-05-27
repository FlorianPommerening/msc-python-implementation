#include "Variable.h"
#include <algorithm>

Variable::Variable(std::string name): name(name) {
}

VariableSet::VariableSet() {
}

VariableSet::VariableSet(Variable **first, Variable **last): variables(first, last) {
}

void VariableSet::add(Variable *element) {
    this->variables.insert(element);
}

void VariableSet::union_with(VariableSet &other, VariableSet &unionSet) {
    unionSet.variables.clear();
    std::set_union(this->variables.begin(), this->variables.end(),
                   other.variables.begin(), other.variables.end(),
                   std::inserter(unionSet.variables, unionSet.variables.begin()));
}

const bool VariableSet::isDisjointWith(const VariableSet &other) {
    std::set<Variable *>::iterator first1 = this->variables.begin();
    std::set<Variable *>::iterator last1 = this->variables.end();
    std::set<Variable *>::iterator first2 = other.variables.begin();
    std::set<Variable *>::iterator last2 = other.variables.end();
    while (first1!=last1 && first2!=last2)
    {
      if (*first1<*first2) ++first1;
      else if (*first2<*first1) ++first2;
      else return false;
    }
    return true;
}

const bool VariableSet::isSubsetOf(const VariableSet &other) {
    return std::includes(other.variables.begin(), other.variables.end(),
                         this->variables.begin(), this->variables.end());
}
