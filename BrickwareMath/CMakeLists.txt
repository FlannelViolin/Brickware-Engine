file(GLOB BRICKWARE_MATH_HEADERS "include/*.h")
file(GLOB BRICKWARE_MATH_SOURCE "src/*.cpp")

include_directories(include/)

add_library(BrickwareMath SHARED ${BRICKWARE_MATH_HEADES} ${BRICKWARE_MATH_SOURCE})

set_property(TARGET BrickwareMath PROPERTY FOLDER "lib")

install(TARGETS BrickwareMath LIBRARY DESTINATION ${PROJECT_BINARY_DIR}/bin)
