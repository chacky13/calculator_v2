# Визначаємо компілятор і його параметри
CXX = g++                          
CXXFLAGS = -Wall -Wextra -std=c++17 
TARGET = main                     

# Джерельні файли
SRCS = main.cpp calculator.cpp     
OBJS = $(SRCS:.cpp=.o)            

# Головна ціль: компілюємо виконуваний файл
all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Ціль для очищення проміжних файлів
clean:
	rm -f $(OBJS) $(TARGET)         

.PHONY: all clean             
