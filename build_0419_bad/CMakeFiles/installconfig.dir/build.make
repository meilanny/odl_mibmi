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

# Utility rule file for installconfig.

# Include any custom commands dependencies for this target.
include CMakeFiles/installconfig.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/installconfig.dir/progress.make

CMakeFiles/installconfig:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/lanmei/merge_net_MIBMI_new/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying current config to global sdk.config file"
	/home/lanmei/gap_sdk_private/utils/cmake/kconfigtool.py /home/lanmei/gap_sdk_private/utils/kconfig/Kconfig /home/lanmei/gap_sdk_private/install/workstation/sdk.config /home/lanmei/merge_net_MIBMI_new /home/lanmei/merge_net_MIBMI_new/build --ccache CONFIG_OPENOCD_SCRIPT_DEFAULT="YES" --ccache CONFIG_PLATFORM_BOARD="YES" --ccache CONFIG_PLATFORM_GVSOC="NO" --cmakeconfig /home/lanmei/merge_net_MIBMI_new/build/__vars.cmake --appconfigname sdk.config installconfig /home/lanmei/merge_net_MIBMI_new/build/__vars_timestamp

installconfig: CMakeFiles/installconfig
installconfig: CMakeFiles/installconfig.dir/build.make
.PHONY : installconfig

# Rule to build all files generated by this target.
CMakeFiles/installconfig.dir/build: installconfig
.PHONY : CMakeFiles/installconfig.dir/build

CMakeFiles/installconfig.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/installconfig.dir/cmake_clean.cmake
.PHONY : CMakeFiles/installconfig.dir/clean

CMakeFiles/installconfig.dir/depend:
	cd /home/lanmei/merge_net_MIBMI_new/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lanmei/merge_net_MIBMI_new /home/lanmei/merge_net_MIBMI_new /home/lanmei/merge_net_MIBMI_new/build /home/lanmei/merge_net_MIBMI_new/build /home/lanmei/merge_net_MIBMI_new/build/CMakeFiles/installconfig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/installconfig.dir/depend

