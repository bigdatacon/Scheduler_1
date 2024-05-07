#include <iostream>
#include "utils.h"

int main() {
    std::vector<int> a = {1, 2, 3};
    std::vector<int> b = {434234, 5, 6};
    std::vector<int> result = add_arrays(a, b);
    for (int num : result) {
        std::cout << num << " ";
    }
    std::cout << std::endl;
    return 0;
}
