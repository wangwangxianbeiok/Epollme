PROJECT(epollserver)
SET(SRC_LIST main.cpp Epollme.cpp Server.cpp)
ADD_EXECUTABLE(epollserver ${SRC_LIST})