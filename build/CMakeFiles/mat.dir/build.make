# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.25.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/julian/Documents/École/S6/Outils_C

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/julian/Documents/École/S6/Outils_C/build

# Include any dependencies generated for this target.
include CMakeFiles/mat.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mat.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mat.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mat.dir/flags.make

CMakeFiles/mat.dir/src/matrix.c.o: CMakeFiles/mat.dir/flags.make
CMakeFiles/mat.dir/src/matrix.c.o: /Users/julian/Documents/École/S6/Outils_C/src/matrix.c
CMakeFiles/mat.dir/src/matrix.c.o: CMakeFiles/mat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/julian/Documents/École/S6/Outils_C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/mat.dir/src/matrix.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/mat.dir/src/matrix.c.o -MF CMakeFiles/mat.dir/src/matrix.c.o.d -o CMakeFiles/mat.dir/src/matrix.c.o -c /Users/julian/Documents/École/S6/Outils_C/src/matrix.c

CMakeFiles/mat.dir/src/matrix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mat.dir/src/matrix.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/julian/Documents/École/S6/Outils_C/src/matrix.c > CMakeFiles/mat.dir/src/matrix.c.i

CMakeFiles/mat.dir/src/matrix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mat.dir/src/matrix.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/julian/Documents/École/S6/Outils_C/src/matrix.c -o CMakeFiles/mat.dir/src/matrix.c.s

CMakeFiles/mat.dir/src/vector.c.o: CMakeFiles/mat.dir/flags.make
CMakeFiles/mat.dir/src/vector.c.o: /Users/julian/Documents/École/S6/Outils_C/src/vector.c
CMakeFiles/mat.dir/src/vector.c.o: CMakeFiles/mat.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/julian/Documents/École/S6/Outils_C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/mat.dir/src/vector.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/mat.dir/src/vector.c.o -MF CMakeFiles/mat.dir/src/vector.c.o.d -o CMakeFiles/mat.dir/src/vector.c.o -c /Users/julian/Documents/École/S6/Outils_C/src/vector.c

CMakeFiles/mat.dir/src/vector.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mat.dir/src/vector.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/julian/Documents/École/S6/Outils_C/src/vector.c > CMakeFiles/mat.dir/src/vector.c.i

CMakeFiles/mat.dir/src/vector.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mat.dir/src/vector.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/julian/Documents/École/S6/Outils_C/src/vector.c -o CMakeFiles/mat.dir/src/vector.c.s

# Object files for target mat
mat_OBJECTS = \
"CMakeFiles/mat.dir/src/matrix.c.o" \
"CMakeFiles/mat.dir/src/vector.c.o"

# External object files for target mat
mat_EXTERNAL_OBJECTS =

libmat.dylib: CMakeFiles/mat.dir/src/matrix.c.o
libmat.dylib: CMakeFiles/mat.dir/src/vector.c.o
libmat.dylib: CMakeFiles/mat.dir/build.make
libmat.dylib: CMakeFiles/mat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/julian/Documents/École/S6/Outils_C/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C shared library libmat.dylib"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mat.dir/build: libmat.dylib
.PHONY : CMakeFiles/mat.dir/build

CMakeFiles/mat.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mat.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mat.dir/clean

CMakeFiles/mat.dir/depend:
	cd /Users/julian/Documents/École/S6/Outils_C/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/julian/Documents/École/S6/Outils_C /Users/julian/Documents/École/S6/Outils_C /Users/julian/Documents/École/S6/Outils_C/build /Users/julian/Documents/École/S6/Outils_C/build /Users/julian/Documents/École/S6/Outils_C/build/CMakeFiles/mat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mat.dir/depend
