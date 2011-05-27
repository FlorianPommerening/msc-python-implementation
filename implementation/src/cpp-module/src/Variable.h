#ifndef VARIABLE_H
#define VARIABLE_H

#include <set>
#include <string>

struct Variable {
public:
    Variable(std::string name);
    std::string name;
};

class VariableSet {
public:
    VariableSet();
    VariableSet(Variable **first, Variable **last);
    void add(Variable *element);
    void union_with(VariableSet &other, VariableSet &unionSet);
    const bool isDisjointWith(const VariableSet &other);
    const bool isSubsetOf(const VariableSet &other);
private:
    std::set<Variable*> variables;
};

#endif
