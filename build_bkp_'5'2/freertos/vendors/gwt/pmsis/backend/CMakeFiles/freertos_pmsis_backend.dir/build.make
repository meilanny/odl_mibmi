# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lanmei/merge_net_MIBMI_new

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lanmei/merge_net_MIBMI_new/build

# Include any dependencies generated for this target.
include freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/compiler_depend.make

# Include the progress variables for this target.
include freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/progress.make

# Include the compile flags for this target's objects.
include freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/flags.make

freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.obj: freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/flags.make
freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.obj: /home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/backend/pmsis_backend_native_task_api.c
freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.obj: freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanmei/merge_net_MIBMI_new/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.obj"
	cd /home/lanmei/merge_net_MIBMI_new/build/freertos/vendors/gwt/pmsis/backend && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.obj -MF CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.obj.d -o CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.obj -c /home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/backend/pmsis_backend_native_task_api.c

freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.i"
	cd /home/lanmei/merge_net_MIBMI_new/build/freertos/vendors/gwt/pmsis/backend && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/backend/pmsis_backend_native_task_api.c > CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.i

freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.s"
	cd /home/lanmei/merge_net_MIBMI_new/build/freertos/vendors/gwt/pmsis/backend && /home/lanmei/gap_riscv_toolchain/bin/riscv32-unknown-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/backend/pmsis_backend_native_task_api.c -o CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.s

# Object files for target freertos_pmsis_backend
freertos_pmsis_backend_OBJECTS = \
"CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.obj"

# External object files for target freertos_pmsis_backend
freertos_pmsis_backend_EXTERNAL_OBJECTS =

freertos/vendors/gwt/pmsis/backend/libfreertos_pmsis_backend.a: freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/pmsis_backend_native_task_api.c.obj
freertos/vendors/gwt/pmsis/backend/libfreertos_pmsis_backend.a: freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/build.make
freertos/vendors/gwt/pmsis/backend/libfreertos_pmsis_backend.a: freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lanmei/merge_net_MIBMI_new/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libfreertos_pmsis_backend.a"
	cd /home/lanmei/merge_net_MIBMI_new/build/freertos/vendors/gwt/pmsis/backend && $(CMAKE_COMMAND) -P CMakeFiles/freertos_pmsis_backend.dir/cmake_clean_target.cmake
	cd /home/lanmei/merge_net_MIBMI_new/build/freertos/vendors/gwt/pmsis/backend && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/freertos_pmsis_backend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/build: freertos/vendors/gwt/pmsis/backend/libfreertos_pmsis_backend.a
.PHONY : freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/build

freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/clean:
	cd /home/lanmei/merge_net_MIBMI_new/build/freertos/vendors/gwt/pmsis/backend && $(CMAKE_COMMAND) -P CMakeFiles/freertos_pmsis_backend.dir/cmake_clean.cmake
.PHONY : freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/clean

freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/depend:
	cd /home/lanmei/merge_net_MIBMI_new/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lanmei/merge_net_MIBMI_new /home/lanmei/gap_sdk_private/rtos/pmsis/os/freeRTOS/vendors/gwt/pmsis/backend /home/lanmei/merge_net_MIBMI_new/build /home/lanmei/merge_net_MIBMI_new/build/freertos/vendors/gwt/pmsis/backend /home/lanmei/merge_net_MIBMI_new/build/freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : freertos/vendors/gwt/pmsis/backend/CMakeFiles/freertos_pmsis_backend.dir/depend

