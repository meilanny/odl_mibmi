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

# Utility rule file for run.

# Include any custom commands dependencies for this target.
include CMakeFiles/run.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/run.dir/progress.make

CMakeFiles/run:
	/home/lanmei/gap_sdk_private/utils/gapy_v2/bin/gapy --target=gap9.evk --target-dir=/home/lanmei/gap_sdk_private/gvsoc/gvsoc_gap/models --target-dir=/home/lanmei/gap_sdk_private/gvsoc/gvsoc/models --model-dir=/home/lanmei/gap_sdk_private/install/workstation/models --platform=gvsoc --work-dir=/home/lanmei/merge_net_MIBMI_new/build --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/BNReluConvolution0_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/BNReluConvolution1_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/BNReluConvolution3_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/BNReluConvolution4_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/FullyConnected6_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_0.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_1.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_2.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_3.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_4.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_5.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_6.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_7.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_8.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_9.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_10.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_11.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_12.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_13.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_14.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_15.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_16.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_17.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_18.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_19.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_20.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_21.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_22.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_23.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_24.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_25.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_26.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_27.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_28.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_29.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_30.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_31.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_32.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_33.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_34.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_35.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_36.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_37.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_38.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_39.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_40.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_41.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_42.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_43.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_44.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_45.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_46.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_47.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_48.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_49.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_50.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_51.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_52.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_53.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_54.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_55.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_56.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_57.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_58.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_59.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_60.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_61.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_62.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_63.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_64.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_65.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_66.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_67.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_68.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_69.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_70.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_71.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_72.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_73.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_74.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_75.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_76.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_77.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_78.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_79.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_80.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_81.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_82.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_83.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_84.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_85.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_86.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_87.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_88.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_89.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_90.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_91.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_92.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_93.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_94.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_95.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_96.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_97.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_98.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_modify_mixedSW_final_MIBMINet_100trials_test/hex/inputs_99.hex@flash:readfs_flash:files --target-property=boot.flash_device=mram --target-property=boot.mode=flash --multi-flash-content=/home/lanmei/gap_sdk_private/utils/layouts/default_layout_multi_readfs.json --flash-property=/home/lanmei/merge_net_MIBMI_new/build/main@mram:app:binary run --binary=/home/lanmei/merge_net_MIBMI_new/build/main --flash-property=/home/lanmei/gap_sdk_private/install/target/bin/fsbl@mram:fsbl:binary --flash-property=/home/lanmei/gap_sdk_private/install/target/bin/ssbl@mram:ssbl:binary

run: CMakeFiles/run
run: CMakeFiles/run.dir/build.make
.PHONY : run

# Rule to build all files generated by this target.
CMakeFiles/run.dir/build: run
.PHONY : CMakeFiles/run.dir/build

CMakeFiles/run.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/run.dir/cmake_clean.cmake
.PHONY : CMakeFiles/run.dir/clean

CMakeFiles/run.dir/depend:
	cd /home/lanmei/merge_net_MIBMI_new/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lanmei/merge_net_MIBMI_new /home/lanmei/merge_net_MIBMI_new /home/lanmei/merge_net_MIBMI_new/build /home/lanmei/merge_net_MIBMI_new/build /home/lanmei/merge_net_MIBMI_new/build/CMakeFiles/run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/run.dir/depend

