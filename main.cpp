#include <pybind11/pybind11.h>
#include <pybind11/stl.h>


#include <vector>

std::vector<int> add_arrays(const std::vector<int>& a, const std::vector<int>& b) {
    std::vector<int> result;
    for (size_t i = 0; i < a.size(); i++) {
        result.push_back(a[i] + b[i]);
    }
    return result;
}

PYBIND11_MODULE(my_module, m) {
m.def("add_arrays", &add_arrays, "A function that adds two integer arrays");
}
