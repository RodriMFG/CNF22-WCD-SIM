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
CMAKE_SOURCE_DIR = /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build

# Include any dependencies generated for this target.
include CMakeFiles/sim.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sim.dir/flags.make

CMakeFiles/sim.dir/sim.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/sim.cc.o: ../sim.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sim.dir/sim.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/sim.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/sim.cc

CMakeFiles/sim.dir/sim.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/sim.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/sim.cc > CMakeFiles/sim.dir/sim.cc.i

CMakeFiles/sim.dir/sim.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/sim.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/sim.cc -o CMakeFiles/sim.dir/sim.cc.s

CMakeFiles/sim.dir/src/LXeActionInitialization.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeActionInitialization.cc.o: ../src/LXeActionInitialization.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sim.dir/src/LXeActionInitialization.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeActionInitialization.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeActionInitialization.cc

CMakeFiles/sim.dir/src/LXeActionInitialization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeActionInitialization.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeActionInitialization.cc > CMakeFiles/sim.dir/src/LXeActionInitialization.cc.i

CMakeFiles/sim.dir/src/LXeActionInitialization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeActionInitialization.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeActionInitialization.cc -o CMakeFiles/sim.dir/src/LXeActionInitialization.cc.s

CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.o: ../src/LXeDetectorConstruction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeDetectorConstruction.cc

CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeDetectorConstruction.cc > CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.i

CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeDetectorConstruction.cc -o CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.s

CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.o: ../src/LXeDetectorMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeDetectorMessenger.cc

CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeDetectorMessenger.cc > CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.i

CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeDetectorMessenger.cc -o CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.s

CMakeFiles/sim.dir/src/LXeEventAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeEventAction.cc.o: ../src/LXeEventAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/sim.dir/src/LXeEventAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeEventAction.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeEventAction.cc

CMakeFiles/sim.dir/src/LXeEventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeEventAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeEventAction.cc > CMakeFiles/sim.dir/src/LXeEventAction.cc.i

CMakeFiles/sim.dir/src/LXeEventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeEventAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeEventAction.cc -o CMakeFiles/sim.dir/src/LXeEventAction.cc.s

CMakeFiles/sim.dir/src/LXeEventMessenger.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeEventMessenger.cc.o: ../src/LXeEventMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/sim.dir/src/LXeEventMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeEventMessenger.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeEventMessenger.cc

CMakeFiles/sim.dir/src/LXeEventMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeEventMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeEventMessenger.cc > CMakeFiles/sim.dir/src/LXeEventMessenger.cc.i

CMakeFiles/sim.dir/src/LXeEventMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeEventMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeEventMessenger.cc -o CMakeFiles/sim.dir/src/LXeEventMessenger.cc.s

CMakeFiles/sim.dir/src/LXeHistoManager.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeHistoManager.cc.o: ../src/LXeHistoManager.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/sim.dir/src/LXeHistoManager.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeHistoManager.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeHistoManager.cc

CMakeFiles/sim.dir/src/LXeHistoManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeHistoManager.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeHistoManager.cc > CMakeFiles/sim.dir/src/LXeHistoManager.cc.i

CMakeFiles/sim.dir/src/LXeHistoManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeHistoManager.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeHistoManager.cc -o CMakeFiles/sim.dir/src/LXeHistoManager.cc.s

CMakeFiles/sim.dir/src/LXeMainVolume.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeMainVolume.cc.o: ../src/LXeMainVolume.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/sim.dir/src/LXeMainVolume.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeMainVolume.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeMainVolume.cc

CMakeFiles/sim.dir/src/LXeMainVolume.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeMainVolume.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeMainVolume.cc > CMakeFiles/sim.dir/src/LXeMainVolume.cc.i

CMakeFiles/sim.dir/src/LXeMainVolume.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeMainVolume.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeMainVolume.cc -o CMakeFiles/sim.dir/src/LXeMainVolume.cc.s

CMakeFiles/sim.dir/src/LXePMTHit.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXePMTHit.cc.o: ../src/LXePMTHit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/sim.dir/src/LXePMTHit.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXePMTHit.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXePMTHit.cc

CMakeFiles/sim.dir/src/LXePMTHit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXePMTHit.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXePMTHit.cc > CMakeFiles/sim.dir/src/LXePMTHit.cc.i

CMakeFiles/sim.dir/src/LXePMTHit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXePMTHit.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXePMTHit.cc -o CMakeFiles/sim.dir/src/LXePMTHit.cc.s

CMakeFiles/sim.dir/src/LXePMTSD.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXePMTSD.cc.o: ../src/LXePMTSD.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/sim.dir/src/LXePMTSD.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXePMTSD.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXePMTSD.cc

CMakeFiles/sim.dir/src/LXePMTSD.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXePMTSD.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXePMTSD.cc > CMakeFiles/sim.dir/src/LXePMTSD.cc.i

CMakeFiles/sim.dir/src/LXePMTSD.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXePMTSD.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXePMTSD.cc -o CMakeFiles/sim.dir/src/LXePMTSD.cc.s

CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.o: ../src/LXePrimaryGeneratorAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXePrimaryGeneratorAction.cc

CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXePrimaryGeneratorAction.cc > CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.i

CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXePrimaryGeneratorAction.cc -o CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.s

CMakeFiles/sim.dir/src/LXeRun.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeRun.cc.o: ../src/LXeRun.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/sim.dir/src/LXeRun.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeRun.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeRun.cc

CMakeFiles/sim.dir/src/LXeRun.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeRun.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeRun.cc > CMakeFiles/sim.dir/src/LXeRun.cc.i

CMakeFiles/sim.dir/src/LXeRun.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeRun.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeRun.cc -o CMakeFiles/sim.dir/src/LXeRun.cc.s

CMakeFiles/sim.dir/src/LXeRunAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeRunAction.cc.o: ../src/LXeRunAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/sim.dir/src/LXeRunAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeRunAction.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeRunAction.cc

CMakeFiles/sim.dir/src/LXeRunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeRunAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeRunAction.cc > CMakeFiles/sim.dir/src/LXeRunAction.cc.i

CMakeFiles/sim.dir/src/LXeRunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeRunAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeRunAction.cc -o CMakeFiles/sim.dir/src/LXeRunAction.cc.s

CMakeFiles/sim.dir/src/LXeScintHit.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeScintHit.cc.o: ../src/LXeScintHit.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/sim.dir/src/LXeScintHit.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeScintHit.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeScintHit.cc

CMakeFiles/sim.dir/src/LXeScintHit.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeScintHit.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeScintHit.cc > CMakeFiles/sim.dir/src/LXeScintHit.cc.i

CMakeFiles/sim.dir/src/LXeScintHit.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeScintHit.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeScintHit.cc -o CMakeFiles/sim.dir/src/LXeScintHit.cc.s

CMakeFiles/sim.dir/src/LXeScintSD.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeScintSD.cc.o: ../src/LXeScintSD.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/sim.dir/src/LXeScintSD.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeScintSD.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeScintSD.cc

CMakeFiles/sim.dir/src/LXeScintSD.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeScintSD.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeScintSD.cc > CMakeFiles/sim.dir/src/LXeScintSD.cc.i

CMakeFiles/sim.dir/src/LXeScintSD.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeScintSD.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeScintSD.cc -o CMakeFiles/sim.dir/src/LXeScintSD.cc.s

CMakeFiles/sim.dir/src/LXeStackingAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeStackingAction.cc.o: ../src/LXeStackingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/sim.dir/src/LXeStackingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeStackingAction.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeStackingAction.cc

CMakeFiles/sim.dir/src/LXeStackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeStackingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeStackingAction.cc > CMakeFiles/sim.dir/src/LXeStackingAction.cc.i

CMakeFiles/sim.dir/src/LXeStackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeStackingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeStackingAction.cc -o CMakeFiles/sim.dir/src/LXeStackingAction.cc.s

CMakeFiles/sim.dir/src/LXeSteppingAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeSteppingAction.cc.o: ../src/LXeSteppingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Building CXX object CMakeFiles/sim.dir/src/LXeSteppingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeSteppingAction.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeSteppingAction.cc

CMakeFiles/sim.dir/src/LXeSteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeSteppingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeSteppingAction.cc > CMakeFiles/sim.dir/src/LXeSteppingAction.cc.i

CMakeFiles/sim.dir/src/LXeSteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeSteppingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeSteppingAction.cc -o CMakeFiles/sim.dir/src/LXeSteppingAction.cc.s

CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.o: ../src/LXeSteppingMessenger.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_18) "Building CXX object CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeSteppingMessenger.cc

CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeSteppingMessenger.cc > CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.i

CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeSteppingMessenger.cc -o CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.s

CMakeFiles/sim.dir/src/LXeTrackingAction.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeTrackingAction.cc.o: ../src/LXeTrackingAction.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_19) "Building CXX object CMakeFiles/sim.dir/src/LXeTrackingAction.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeTrackingAction.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeTrackingAction.cc

CMakeFiles/sim.dir/src/LXeTrackingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeTrackingAction.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeTrackingAction.cc > CMakeFiles/sim.dir/src/LXeTrackingAction.cc.i

CMakeFiles/sim.dir/src/LXeTrackingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeTrackingAction.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeTrackingAction.cc -o CMakeFiles/sim.dir/src/LXeTrackingAction.cc.s

CMakeFiles/sim.dir/src/LXeTrajectory.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeTrajectory.cc.o: ../src/LXeTrajectory.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_20) "Building CXX object CMakeFiles/sim.dir/src/LXeTrajectory.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeTrajectory.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeTrajectory.cc

CMakeFiles/sim.dir/src/LXeTrajectory.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeTrajectory.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeTrajectory.cc > CMakeFiles/sim.dir/src/LXeTrajectory.cc.i

CMakeFiles/sim.dir/src/LXeTrajectory.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeTrajectory.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeTrajectory.cc -o CMakeFiles/sim.dir/src/LXeTrajectory.cc.s

CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.o: ../src/LXeUserTrackInformation.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_21) "Building CXX object CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeUserTrackInformation.cc

CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeUserTrackInformation.cc > CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.i

CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeUserTrackInformation.cc -o CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.s

CMakeFiles/sim.dir/src/LXeWLSFiber.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeWLSFiber.cc.o: ../src/LXeWLSFiber.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_22) "Building CXX object CMakeFiles/sim.dir/src/LXeWLSFiber.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeWLSFiber.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeWLSFiber.cc

CMakeFiles/sim.dir/src/LXeWLSFiber.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeWLSFiber.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeWLSFiber.cc > CMakeFiles/sim.dir/src/LXeWLSFiber.cc.i

CMakeFiles/sim.dir/src/LXeWLSFiber.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeWLSFiber.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeWLSFiber.cc -o CMakeFiles/sim.dir/src/LXeWLSFiber.cc.s

CMakeFiles/sim.dir/src/LXeWLSSlab.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/LXeWLSSlab.cc.o: ../src/LXeWLSSlab.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_23) "Building CXX object CMakeFiles/sim.dir/src/LXeWLSSlab.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/LXeWLSSlab.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeWLSSlab.cc

CMakeFiles/sim.dir/src/LXeWLSSlab.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/LXeWLSSlab.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeWLSSlab.cc > CMakeFiles/sim.dir/src/LXeWLSSlab.cc.i

CMakeFiles/sim.dir/src/LXeWLSSlab.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/LXeWLSSlab.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/LXeWLSSlab.cc -o CMakeFiles/sim.dir/src/LXeWLSSlab.cc.s

CMakeFiles/sim.dir/src/detector.cc.o: CMakeFiles/sim.dir/flags.make
CMakeFiles/sim.dir/src/detector.cc.o: ../src/detector.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_24) "Building CXX object CMakeFiles/sim.dir/src/detector.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sim.dir/src/detector.cc.o -c /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/detector.cc

CMakeFiles/sim.dir/src/detector.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sim.dir/src/detector.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/detector.cc > CMakeFiles/sim.dir/src/detector.cc.i

CMakeFiles/sim.dir/src/detector.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sim.dir/src/detector.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/src/detector.cc -o CMakeFiles/sim.dir/src/detector.cc.s

# Object files for target sim
sim_OBJECTS = \
"CMakeFiles/sim.dir/sim.cc.o" \
"CMakeFiles/sim.dir/src/LXeActionInitialization.cc.o" \
"CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.o" \
"CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.o" \
"CMakeFiles/sim.dir/src/LXeEventAction.cc.o" \
"CMakeFiles/sim.dir/src/LXeEventMessenger.cc.o" \
"CMakeFiles/sim.dir/src/LXeHistoManager.cc.o" \
"CMakeFiles/sim.dir/src/LXeMainVolume.cc.o" \
"CMakeFiles/sim.dir/src/LXePMTHit.cc.o" \
"CMakeFiles/sim.dir/src/LXePMTSD.cc.o" \
"CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.o" \
"CMakeFiles/sim.dir/src/LXeRun.cc.o" \
"CMakeFiles/sim.dir/src/LXeRunAction.cc.o" \
"CMakeFiles/sim.dir/src/LXeScintHit.cc.o" \
"CMakeFiles/sim.dir/src/LXeScintSD.cc.o" \
"CMakeFiles/sim.dir/src/LXeStackingAction.cc.o" \
"CMakeFiles/sim.dir/src/LXeSteppingAction.cc.o" \
"CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.o" \
"CMakeFiles/sim.dir/src/LXeTrackingAction.cc.o" \
"CMakeFiles/sim.dir/src/LXeTrajectory.cc.o" \
"CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.o" \
"CMakeFiles/sim.dir/src/LXeWLSFiber.cc.o" \
"CMakeFiles/sim.dir/src/LXeWLSSlab.cc.o" \
"CMakeFiles/sim.dir/src/detector.cc.o"

# External object files for target sim
sim_EXTERNAL_OBJECTS =

sim: CMakeFiles/sim.dir/sim.cc.o
sim: CMakeFiles/sim.dir/src/LXeActionInitialization.cc.o
sim: CMakeFiles/sim.dir/src/LXeDetectorConstruction.cc.o
sim: CMakeFiles/sim.dir/src/LXeDetectorMessenger.cc.o
sim: CMakeFiles/sim.dir/src/LXeEventAction.cc.o
sim: CMakeFiles/sim.dir/src/LXeEventMessenger.cc.o
sim: CMakeFiles/sim.dir/src/LXeHistoManager.cc.o
sim: CMakeFiles/sim.dir/src/LXeMainVolume.cc.o
sim: CMakeFiles/sim.dir/src/LXePMTHit.cc.o
sim: CMakeFiles/sim.dir/src/LXePMTSD.cc.o
sim: CMakeFiles/sim.dir/src/LXePrimaryGeneratorAction.cc.o
sim: CMakeFiles/sim.dir/src/LXeRun.cc.o
sim: CMakeFiles/sim.dir/src/LXeRunAction.cc.o
sim: CMakeFiles/sim.dir/src/LXeScintHit.cc.o
sim: CMakeFiles/sim.dir/src/LXeScintSD.cc.o
sim: CMakeFiles/sim.dir/src/LXeStackingAction.cc.o
sim: CMakeFiles/sim.dir/src/LXeSteppingAction.cc.o
sim: CMakeFiles/sim.dir/src/LXeSteppingMessenger.cc.o
sim: CMakeFiles/sim.dir/src/LXeTrackingAction.cc.o
sim: CMakeFiles/sim.dir/src/LXeTrajectory.cc.o
sim: CMakeFiles/sim.dir/src/LXeUserTrackInformation.cc.o
sim: CMakeFiles/sim.dir/src/LXeWLSFiber.cc.o
sim: CMakeFiles/sim.dir/src/LXeWLSSlab.cc.o
sim: CMakeFiles/sim.dir/src/detector.cc.o
sim: CMakeFiles/sim.dir/build.make
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4Tree.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4FR.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4GMocren.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4visHepRep.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4RayTracer.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4VRML.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4OpenGL.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4gl2ps.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4vis_management.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4modeling.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4interfaces.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4persistency.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4error_propagation.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4readout.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4physicslists.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4tasking.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4parmodels.so
sim: /usr/lib/x86_64-linux-gnu/libXmu.so
sim: /usr/lib/x86_64-linux-gnu/libXext.so
sim: /usr/lib/x86_64-linux-gnu/libXt.so
sim: /usr/lib/x86_64-linux-gnu/libICE.so
sim: /usr/lib/x86_64-linux-gnu/libSM.so
sim: /usr/lib/x86_64-linux-gnu/libX11.so
sim: /usr/lib/x86_64-linux-gnu/libGL.so
sim: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.12.8
sim: /usr/lib/x86_64-linux-gnu/libQt5PrintSupport.so.5.12.8
sim: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.12.8
sim: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.12.8
sim: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.12.8
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4run.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4event.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4tracking.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4processes.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4analysis.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4tools.so
sim: /usr/lib/x86_64-linux-gnu/libexpat.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4digits_hits.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4track.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4particles.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4geometry.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4materials.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4zlib.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4graphics_reps.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4intercoms.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4global.so
sim: /home/rodrimfg/softwere/geant4/geant4-v11.0.2/install/lib/libG4ptl.so.0.0.2
sim: /home/rodrimfg/softwere/clhep/install/lib/libCLHEP-2.4.5.3.so
sim: CMakeFiles/sim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_25) "Linking CXX executable sim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sim.dir/build: sim

.PHONY : CMakeFiles/sim.dir/build

CMakeFiles/sim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sim.dir/clean

CMakeFiles/sim.dir/depend:
	cd /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build /home/rodrimfg/Desktop/CNF22-WCD-SIM/WDC/wdcLXe/build/CMakeFiles/sim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sim.dir/depend
