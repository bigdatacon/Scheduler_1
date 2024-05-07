#include <pybind11/pybind11.h>
#include <pybind11/stl.h>
#include "utils.h"

PYBIND11_MODULE(my_module, m) {
    m.def("add_arrays", &add_arrays, "A function that adds two integer arrays");
}
