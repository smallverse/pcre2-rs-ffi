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
CMAKE_SOURCE_DIR = /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build

# Include any dependencies generated for this target.
include CMakeFiles/pcre2-posix-static.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pcre2-posix-static.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pcre2-posix-static.dir/flags.make

CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.o: CMakeFiles/pcre2-posix-static.dir/flags.make
CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.o: ../src/pcre2posix.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.o   -c /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/src/pcre2posix.c

CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/src/pcre2posix.c > CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.i

CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/src/pcre2posix.c -o CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.s

# Object files for target pcre2-posix-static
pcre2__posix__static_OBJECTS = \
"CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.o"

# External object files for target pcre2-posix-static
pcre2__posix__static_EXTERNAL_OBJECTS =

libpcre2-posix.a: CMakeFiles/pcre2-posix-static.dir/src/pcre2posix.c.o
libpcre2-posix.a: CMakeFiles/pcre2-posix-static.dir/build.make
libpcre2-posix.a: CMakeFiles/pcre2-posix-static.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libpcre2-posix.a"
	$(CMAKE_COMMAND) -P CMakeFiles/pcre2-posix-static.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcre2-posix-static.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pcre2-posix-static.dir/build: libpcre2-posix.a

.PHONY : CMakeFiles/pcre2-posix-static.dir/build

CMakeFiles/pcre2-posix-static.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pcre2-posix-static.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pcre2-posix-static.dir/clean

CMakeFiles/pcre2-posix-static.dir/depend:
	cd /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build/CMakeFiles/pcre2-posix-static.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pcre2-posix-static.dir/depend

