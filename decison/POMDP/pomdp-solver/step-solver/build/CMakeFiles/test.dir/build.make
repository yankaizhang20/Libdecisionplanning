# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/build

# Include any dependencies generated for this target.
include CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test.dir/flags.make

CMakeFiles/test.dir/StepSolver.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/StepSolver.o: ../StepSolver.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/test.dir/StepSolver.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/StepSolver.o -c /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/StepSolver.cc

CMakeFiles/test.dir/StepSolver.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/StepSolver.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/StepSolver.cc > CMakeFiles/test.dir/StepSolver.i

CMakeFiles/test.dir/StepSolver.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/StepSolver.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/StepSolver.cc -o CMakeFiles/test.dir/StepSolver.s

CMakeFiles/test.dir/StepSolvertest.o: CMakeFiles/test.dir/flags.make
CMakeFiles/test.dir/StepSolvertest.o: ../StepSolvertest.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/test.dir/StepSolvertest.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/StepSolvertest.o -c /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/StepSolvertest.cc

CMakeFiles/test.dir/StepSolvertest.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/StepSolvertest.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/StepSolvertest.cc > CMakeFiles/test.dir/StepSolvertest.i

CMakeFiles/test.dir/StepSolvertest.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/StepSolvertest.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/StepSolvertest.cc -o CMakeFiles/test.dir/StepSolvertest.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/StepSolver.o" \
"CMakeFiles/test.dir/StepSolvertest.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

test: CMakeFiles/test.dir/StepSolver.o
test: CMakeFiles/test.dir/StepSolvertest.o
test: CMakeFiles/test.dir/build.make
test: CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test.dir/build: test

.PHONY : CMakeFiles/test.dir/build

CMakeFiles/test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test.dir/clean

CMakeFiles/test.dir/depend:
	cd /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/build /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/build /home/zyk/0career/3project/POMDP/pomdp-solver/step-solver/build/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test.dir/depend

