file(GLOB BRICKWARE_TEST_HEADERS "include/*.h")
file(GLOB BRICKWARE_TEST_SOURCE "src/*.cpp")

#C++ 11
set(CMAKE_CXX_FLAGS "-std=c++11 -g ${CMAKE_CXX_FLAGS}")

include_directories("include/")
include_directories("../BrickwareMath/include")
include_directories("../BrickwareCore/include")
include_directories(SYSTEM)

add_executable(BrickwareTest ${BRICKWARE_TEST_SOURCE} ${BRICKWARE_TEST_SOURCE})

#Need to link math library manually
if(UNIX)
	target_link_libraries(BrickwareTest m)
endif(UNIX)

#Link GL, GLEW and GLFW
target_link_libraries(BrickwareTest GL)
target_link_libraries(BrickwareTest GLEW)
target_link_libraries(BrickwareTest glfw)

#Link math library
target_link_libraries(BrickwareTest BrickwareMath)
#Link core libary
target_link_libraries(BrickwareTest BrickwareCore)

set_property(TARGET BrickwareTest PROPERTY FOLDER "lib")

install(TARGETS BrickwareTest DESTINATION ${PROJECT_BINARY_DIR}/bin)
