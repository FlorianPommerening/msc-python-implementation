#ifndef VARIABLE_H
#define VARIABLE_H

#include <set>
#include <string>
#include <vector>

enum VariableState {
    UNREACHABLE = -1,
};

class RelaxedOperator;

struct Variable {
public:
    Variable(std::string name);
    std::string name;
    int hmax;
    std::vector<RelaxedOperator *> precondition_of;
    std::vector<RelaxedOperator *> effect_of;
};

class VariableSet {
public:
    typedef std::set<Variable*>::const_reference const_reference;
    typedef std::set<Variable*>::iterator iterator;
    typedef std::set<Variable*>::const_iterator const_iterator;

    VariableSet();

    void add(Variable *element);
    void setToUnion(const VariableSet &set1, const VariableSet &set2);
    bool isDisjointWith(const VariableSet &other) const;
    bool isSubsetOf(const VariableSet &other) const;
    int size() const;

    // allow iteration over set
    iterator begin();
    iterator end();
    const_iterator begin() const;
    const_iterator end() const;
private:
    std::set<Variable*> variables;
};

inline int VariableSet::size() const {
    return this->variables.size();
}

inline VariableSet::iterator VariableSet::begin() {
    return this->variables.begin();
}

inline VariableSet::iterator VariableSet::end() {
    return this->variables.end();
}

inline VariableSet::const_iterator VariableSet::begin() const {
    return this->variables.begin();
}

inline VariableSet::const_iterator VariableSet::end() const {
    return this->variables.end();
}

#endif
