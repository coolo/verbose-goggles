#include <exception>
#include <iostream>

#include "test_lib.hpp"

int main() {
    print_hello();

    try {
        throw std::invalid_argument( "test exception, good to be caught" );
    } catch (const std::exception& e) {
        std::cerr << "Exception caught: " << e.what() << std::endl;
    }

    return 0;
}
