cmake_minimum_required(VERSION 3.10)

# Ім'я проекту
project(CalculatorApp)

# Встановлюємо стандарт C++ для проекту
set(CMAKE_CXX_STANDARD 17)            
set(CMAKE_CXX_STANDARD_REQUIRED True) 

# Додаємо виконуваний файл, вказуючи необхідні джерельні файли
add_executable(main main.cpp calculator.cpp)