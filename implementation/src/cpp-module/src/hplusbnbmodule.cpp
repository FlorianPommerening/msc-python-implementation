#include <boost/python/module.hpp>
#include <boost/python/def.hpp>
#include <boost/python/class.hpp>
#include <string>

using namespace std;

string const duplicate(string foo) {
   return foo + foo;
}

BOOST_PYTHON_MODULE(hplusbnb) {
    using namespace boost::python;
    def("duplicate", duplicate);
}
