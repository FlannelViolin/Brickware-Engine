# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/arsen/Code/Brickware-Engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/arsen/Code/Brickware-Engine

# Include any dependencies generated for this target.
include BrickwareMath/CMakeFiles/BrickwareMath.dir/depend.make

# Include the progress variables for this target.
include BrickwareMath/CMakeFiles/BrickwareMath.dir/progress.make

# Include the compile flags for this target's objects.
include BrickwareMath/CMakeFiles/BrickwareMath.dir/flags.make

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o: BrickwareMath/CMakeFiles/BrickwareMath.dir/flags.make
BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o: BrickwareMath/src/Matrix3.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arsen/Code/Brickware-Engine/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o -c /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Matrix3.cpp

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.i"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Matrix3.cpp > CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.i

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.s"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Matrix3.cpp -o CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.s

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o.requires:
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o.requires

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o.provides: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o.requires
	$(MAKE) -f BrickwareMath/CMakeFiles/BrickwareMath.dir/build.make BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o.provides.build
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o.provides

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o.provides.build: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o: BrickwareMath/CMakeFiles/BrickwareMath.dir/flags.make
BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o: BrickwareMath/src/Vector2.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arsen/Code/Brickware-Engine/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o -c /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Vector2.cpp

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.i"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Vector2.cpp > CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.i

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.s"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Vector2.cpp -o CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.s

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o.requires:
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o.requires

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o.provides: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o.requires
	$(MAKE) -f BrickwareMath/CMakeFiles/BrickwareMath.dir/build.make BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o.provides.build
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o.provides

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o.provides.build: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o: BrickwareMath/CMakeFiles/BrickwareMath.dir/flags.make
BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o: BrickwareMath/src/Quaternion.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arsen/Code/Brickware-Engine/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o -c /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Quaternion.cpp

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.i"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Quaternion.cpp > CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.i

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.s"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Quaternion.cpp -o CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.s

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o.requires:
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o.requires

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o.provides: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o.requires
	$(MAKE) -f BrickwareMath/CMakeFiles/BrickwareMath.dir/build.make BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o.provides.build
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o.provides

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o.provides.build: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o: BrickwareMath/CMakeFiles/BrickwareMath.dir/flags.make
BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o: BrickwareMath/src/Vector4.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arsen/Code/Brickware-Engine/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o -c /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Vector4.cpp

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.i"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Vector4.cpp > CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.i

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.s"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Vector4.cpp -o CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.s

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o.requires:
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o.requires

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o.provides: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o.requires
	$(MAKE) -f BrickwareMath/CMakeFiles/BrickwareMath.dir/build.make BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o.provides.build
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o.provides

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o.provides.build: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o: BrickwareMath/CMakeFiles/BrickwareMath.dir/flags.make
BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o: BrickwareMath/src/Vector3.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arsen/Code/Brickware-Engine/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o -c /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Vector3.cpp

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.i"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Vector3.cpp > CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.i

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.s"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Vector3.cpp -o CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.s

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o.requires:
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o.requires

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o.provides: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o.requires
	$(MAKE) -f BrickwareMath/CMakeFiles/BrickwareMath.dir/build.make BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o.provides.build
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o.provides

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o.provides.build: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o: BrickwareMath/CMakeFiles/BrickwareMath.dir/flags.make
BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o: BrickwareMath/src/Matrix4.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/arsen/Code/Brickware-Engine/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o -c /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Matrix4.cpp

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.i"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Matrix4.cpp > CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.i

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.s"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/arsen/Code/Brickware-Engine/BrickwareMath/src/Matrix4.cpp -o CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.s

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o.requires:
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o.requires

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o.provides: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o.requires
	$(MAKE) -f BrickwareMath/CMakeFiles/BrickwareMath.dir/build.make BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o.provides.build
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o.provides

BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o.provides.build: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o

# Object files for target BrickwareMath
BrickwareMath_OBJECTS = \
"CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o" \
"CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o" \
"CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o" \
"CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o" \
"CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o" \
"CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o"

# External object files for target BrickwareMath
BrickwareMath_EXTERNAL_OBJECTS =

BrickwareMath/libBrickwareMath.so: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o
BrickwareMath/libBrickwareMath.so: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o
BrickwareMath/libBrickwareMath.so: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o
BrickwareMath/libBrickwareMath.so: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o
BrickwareMath/libBrickwareMath.so: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o
BrickwareMath/libBrickwareMath.so: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o
BrickwareMath/libBrickwareMath.so: BrickwareMath/CMakeFiles/BrickwareMath.dir/build.make
BrickwareMath/libBrickwareMath.so: BrickwareMath/CMakeFiles/BrickwareMath.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library libBrickwareMath.so"
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BrickwareMath.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
BrickwareMath/CMakeFiles/BrickwareMath.dir/build: BrickwareMath/libBrickwareMath.so
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/build

BrickwareMath/CMakeFiles/BrickwareMath.dir/requires: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix3.cpp.o.requires
BrickwareMath/CMakeFiles/BrickwareMath.dir/requires: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector2.cpp.o.requires
BrickwareMath/CMakeFiles/BrickwareMath.dir/requires: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Quaternion.cpp.o.requires
BrickwareMath/CMakeFiles/BrickwareMath.dir/requires: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector4.cpp.o.requires
BrickwareMath/CMakeFiles/BrickwareMath.dir/requires: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Vector3.cpp.o.requires
BrickwareMath/CMakeFiles/BrickwareMath.dir/requires: BrickwareMath/CMakeFiles/BrickwareMath.dir/src/Matrix4.cpp.o.requires
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/requires

BrickwareMath/CMakeFiles/BrickwareMath.dir/clean:
	cd /home/arsen/Code/Brickware-Engine/BrickwareMath && $(CMAKE_COMMAND) -P CMakeFiles/BrickwareMath.dir/cmake_clean.cmake
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/clean

BrickwareMath/CMakeFiles/BrickwareMath.dir/depend:
	cd /home/arsen/Code/Brickware-Engine && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/arsen/Code/Brickware-Engine /home/arsen/Code/Brickware-Engine/BrickwareMath /home/arsen/Code/Brickware-Engine /home/arsen/Code/Brickware-Engine/BrickwareMath /home/arsen/Code/Brickware-Engine/BrickwareMath/CMakeFiles/BrickwareMath.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : BrickwareMath/CMakeFiles/BrickwareMath.dir/depend
