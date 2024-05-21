#!/bin/bash

# Проверка на наличие необходимых файлов
if [ ! -f "module.cpp" ]; then
    echo "Файл module.cpp не найден."
    exit 1
fi

if [ ! -f "DataContainer.h" ]; then
    echo "Файл DataContainer.h не найден."
    exit 1
fi

if [ ! -f "utils.h" ]; then
    echo "Файл utils.h не найден."
    exit 1
fi

# Пути к pybind11 и Python
PYBIND11_INCLUDE="-I./extern/pybind11/include"
PYTHON_INCLUDE=$(python3-config --includes)
PYTHON_LIB=$(python3-config --ldflags)

# Компиляция scheduler_1
g++ -O3 -Wall -shared -std=c++17 -fPIC $PYBIND11_INCLUDE $PYTHON_INCLUDE \
    module.cpp -o scheduler_1$(python3-config --extension-suffix) $PYTHON_LIB

# Компиляция my_module
g++ -O3 -Wall -shared -std=c++17 -fPIC $PYBIND11_INCLUDE $PYTHON_INCLUDE \
    module.cpp InputData.cpp -o my_module$(python3-config --extension-suffix) $PYTHON_LIB

# Compile main.cpp to executable
g++ -O3 -Wall -std=c++17 main.cpp -o main -v

echo "Сборка завершена."
