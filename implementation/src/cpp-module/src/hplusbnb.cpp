#include <iostream>
#include <vector>
#include <ostream>
#include <sstream>

#include "Variable.h"
#include "RelaxedOperator.h"
#include "RelaxedTask.h"

using namespace std;

void intToString(int i, string& res) {
    ostringstream temp;
    temp << i;
    temp.str(res);
}

int main() {
    std::vector<Variable*> variables;
    variables.reserve(4000);
    for (int i = 0; i < 4000; ++i) {
        string name;
        intToString(i, name);
        variables.push_back(new Variable(name));
    }
    VariableSet precondition;
    precondition.add(variables[4]);
//    precondition.add(variables[1700]);
    precondition.add(variables[300]);
    precondition.add(variables[51]);
    precondition.add(variables[40]);
    VariableSet effect;
    effect.add(variables[5]);
    effect.add(variables[1701]);
    effect.add(variables[301]);
    effect.add(variables[52]);
    effect.add(variables[41]);
    VariableSet state(&*(variables.begin()+2), &*(variables.begin()+500));
    VariableSet nextstate;
    cout << "Creating task" << endl;
    RelaxedTask task;
    cout << "Pushing a" << endl;
    task.variables.push_back(Variable("a"));
    cout << "Pushing b" << endl;
    task.variables.push_back(Variable("b"));
    cout << "Testing subset" << endl;
    if (precondition.isSubsetOf(state)) {
        cout << "is subset" << endl;
        state.union_with(effect, nextstate);
    }
    cout << "hello world" << endl;
    return 0;
}
