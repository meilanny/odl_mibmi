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

# Utility rule file for exec.

# Include any custom commands dependencies for this target.
include CMakeFiles/exec.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/exec.dir/progress.make

CMakeFiles/exec:
	/home/lanmei/gap_sdk_private/utils/gapy_v2/bin/gapy --target=gap9.evk --target-dir=/home/lanmei/gap_sdk_private/utils/gapy_v2/targets --platform=board --work-dir=/home/lanmei/merge_net_MIBMI_new/build --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/BNReluConvolution0_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/BNReluConvolution1_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/BNReluConvolution3_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/BNReluConvolution4_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/FullyConnected6_weights.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_0.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_1.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_2.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_3.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_4.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_5.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_6.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_7.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_8.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_9.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_10.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_11.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_12.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_13.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_14.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_15.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_16.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_17.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_18.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_19.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_20.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_21.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_22.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_23.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_24.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_25.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_26.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_27.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_28.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_29.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_30.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_31.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_32.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_33.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_34.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_35.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_36.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_37.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_38.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_39.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_40.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_41.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_42.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_43.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_44.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_45.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_46.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_47.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_48.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_49.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_50.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_51.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_52.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_53.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_54.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_55.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_56.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_57.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_58.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_59.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_60.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_61.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_62.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_63.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_64.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_65.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_66.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_67.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_68.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_69.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_70.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_71.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_72.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_73.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_74.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_75.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_76.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_77.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_78.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_79.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_80.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_81.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_82.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_83.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_84.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_85.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_86.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_87.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_88.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_89.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_90.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_91.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_92.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_93.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_94.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_95.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_96.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_97.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_98.hex@flash:readfs_flash:files --flash-property=/home/lanmei/merge_net_MIBMI_new/1229_D2_15_mixedSW_final_MIBMINet_100trials_reduced_L1_alloc_80000/hex/inputs_99.hex@flash:readfs_flash:files --target-property=boot.flash_device=mram --target-property=boot.mode=flash --openocd-cable=/home/lanmei/gap_sdk_private/utils/openocd_tools/tcl/gapuino_ftdi.cfg --openocd-script=/home/lanmei/gap_sdk_private/utils/openocd_tools/tcl/gap9revb.tcl --openocd-tools=/home/lanmei/gap_sdk_private/utils/openocd_tools --multi-flash-content=/home/lanmei/gap_sdk_private/utils/layouts/default_layout_multi_readfs.json --flash-property=/home/lanmei/merge_net_MIBMI_new/build/main@mram:app:binary run --binary=/home/lanmei/merge_net_MIBMI_new/build/main --flash-property=/home/lanmei/gap_sdk_private/install/target/bin/fsbl@mram:fsbl:binary --flash-property=/home/lanmei/gap_sdk_private/install/target/bin/ssbl@mram:ssbl:binary

exec: CMakeFiles/exec
exec: CMakeFiles/exec.dir/build.make
.PHONY : exec

# Rule to build all files generated by this target.
CMakeFiles/exec.dir/build: exec
.PHONY : CMakeFiles/exec.dir/build

CMakeFiles/exec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/exec.dir/cmake_clean.cmake
.PHONY : CMakeFiles/exec.dir/clean

CMakeFiles/exec.dir/depend:
	cd /home/lanmei/merge_net_MIBMI_new/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lanmei/merge_net_MIBMI_new /home/lanmei/merge_net_MIBMI_new /home/lanmei/merge_net_MIBMI_new/build /home/lanmei/merge_net_MIBMI_new/build /home/lanmei/merge_net_MIBMI_new/build/CMakeFiles/exec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/exec.dir/depend

