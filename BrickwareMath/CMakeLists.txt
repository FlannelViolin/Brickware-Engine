file(GLOB BRICKWARE_MATH_HEADERS "include/*.h")
file(GLOB BRICKWARE_MATH_SOURCE "src/*.cpp")

#C++ 11
set(CMAKE_CXX_FLAGS "-std=c++11 -g ${CMAKE_CXX_FLAGS}")

include_directories(include/)
include_directories(SYSTEM)

add_library(BrickwareMath SHARED ${BRICKWARE_MATH_HEADERS} ${BRICKWARE_MATH_SOURCE})

#Need to link some basic libraries
if(UNIX)
	target_link_libraries(BrickwareMath m)
endif(UNIX)

set_property(TARGET BrickwareMath PROPERTY FOLDER "lib")

install(TARGETS BrickwareMath LIBRARY DESTINATION ${PROJECT_BINARY_DIR}/bin)
