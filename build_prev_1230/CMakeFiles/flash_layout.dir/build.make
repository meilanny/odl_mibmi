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

# Utility rule file for flash_layout.

# Include any custom commands dependencies for this target.
include CMakeFiles/flash_layout.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/flash_layout.dir/progress.make

CMakeFiles/flash_layout:
	/home/lanmei/gap_sdk_private/utils/gapy_v2/bin/gapy --target=gap9.evk --target-dir=/home/lanmei/gap_sdk_private/gvsoc/gvsoc_gap/models --target-dir=/home/lanmei/gap_sdk_private/gvsoc/gvsoc/models --model-dir=/home/lanmei/gap_sdk_private/install/workstation/models --platform=gvsoc --work-dir=/home/lanmei/merge_net_MIBMI_new/build --flash-property=/home/lanmei/merge_net_MIBMI_new/1218_D2_15_mixedSW_final_MIBMINet/hex/BNReluConvolution0_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1218_D2_15_mixedSW_final_MIBMINet/hex/BNReluConvolution1_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1218_D2_15_mixedSW_final_MIBMINet/hex/BNReluConvolution3_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1218_D2_15_mixedSW_final_MIBMINet/hex/BNReluConvolution4_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1218_D2_15_mixedSW_final_MIBMINet/hex/FullyConnected6_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1218_D2_15_mixedSW_final_MIBMINet/hex/inputs.hex@flash:readfs_flash:files --target-property=boot.flash_device=mram --target-property=boot.mode=flash --multi-flash-content=/home/lanmei/gap_sdk_private/utils/layouts/default_layout_multi_readfs.json --flash-property=/home/lanmei/merge_net_MIBMI_new/build/main@mram:app:binary flash_layout --binary=/home/lanmei/merge_net_MIBMI_new/build/main --flash-property=/home/lanmei/gap_sdk_private/install/target/bin/fsbl@mram:fsbl:binary --flash-property=/home/lanmei/gap_sdk_private/install/target/bin/ssbl@mram:ssbl:binary

flash_layout: CMakeFiles/flash_layout
flash_layout: CMakeFiles/flash_layout.dir/build.make
.PHONY : flash_layout

# Rule to build all files generated by this target.
CMakeFiles/flash_layout.dir/build: flash_layout
.PHONY : CMakeFiles/flash_layout.dir/build

CMakeFiles/flash_layout.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/flash_layout.dir/cmake_clean.cmake
.PHONY : CMakeFiles/flash_layout.dir/clean

CMakeFiles/flash_layout.dir/depend:
	cd /home/lanmei/merge_net_MIBMI_new/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lanmei/merge_net_MIBMI_new /home/lanmei/merge_net_MIBMI_new /home/lanmei/merge_net_MIBMI_new/build /home/lanmei/merge_net_MIBMI_new/build /home/lanmei/merge_net_MIBMI_new/build/CMakeFiles/flash_layout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/flash_layout.dir/depend

