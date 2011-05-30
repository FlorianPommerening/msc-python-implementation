#ifndef VARIABLE_H
#define VARIABLE_H

#include <set>
#include <string>
#include <vector>

class RelaxedOperator;

struct Variable {
public:
    Variable(std::string name);
    ~Variable();
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
    VariableSet(Variable **first, Variable **last);

    void add(Variable *element);
    void union_with(const VariableSet &other, VariableSet &unionSet) const;
    bool isDisjointWith(const VariableSet &other) const;
    bool isSubsetOf(const VariableSet &other) const;

    // allow iteration over set
    iterator begin() {return this->variables.begin();}
    iterator end() {return this->variables.end();}
    const_iterator begin() const {return this->variables.begin();}
    const_iterator end() const {return this->variables.end();}
private:
    std::set<Variable*> variables;
};

#endif
