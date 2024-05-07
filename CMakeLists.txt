

cmake_minimum_required(VERSION 3.4)
project(Scheduler_1)
set(CMAKE_CXX_STANDARD 17)

# Находим пакеты Python и его библиотеки
find_package(Python3 REQUIRED COMPONENTS Development)

# Добавляем pybind11 как поддиректорию
add_subdirectory(extern/pybind11)

# Указываем директории с заголовочными файлами Python и pybind11
include_directories(${Python3_INCLUDE_DIRS} extern/pybind11/include)

# Создаем модуль с помощью pybind11
pybind11_add_module(my_module module.cpp)

# Создаем исполняемый файл
add_executable(Scheduler_1 main.cpp
        utils.h
        DataContainer.h)

# Указываем библиотеки для связывания с Python
target_link_libraries(my_module PRIVATE ${Python3_LIBRARIES})
target_link_libraries(Scheduler_1 PRIVATE ${Python3_LIBRARIES})
