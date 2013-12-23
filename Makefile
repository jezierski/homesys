# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

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
CMAKE_SOURCE_DIR = /home/jezierski/public_html/homesys

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jezierski/public_html/homesys

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running interactive CMake command-line interface..."
	/usr/bin/cmake -i .
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/jezierski/public_html/homesys/CMakeFiles /home/jezierski/public_html/homesys/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/jezierski/public_html/homesys/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named build/homesys

# Build rule for target.
build/homesys: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 build/homesys
.PHONY : build/homesys

# fast build rule for target.
build/homesys/fast:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/build
.PHONY : build/homesys/fast

can232/CCan232.o: can232/CCan232.cpp.o
.PHONY : can232/CCan232.o

# target to build an object file
can232/CCan232.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can232/CCan232.cpp.o
.PHONY : can232/CCan232.cpp.o

can232/CCan232.i: can232/CCan232.cpp.i
.PHONY : can232/CCan232.i

# target to preprocess a source file
can232/CCan232.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can232/CCan232.cpp.i
.PHONY : can232/CCan232.cpp.i

can232/CCan232.s: can232/CCan232.cpp.s
.PHONY : can232/CCan232.s

# target to generate assembly for a file
can232/CCan232.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can232/CCan232.cpp.s
.PHONY : can232/CCan232.cpp.s

can_devices/CCanPWMActor.o: can_devices/CCanPWMActor.cpp.o
.PHONY : can_devices/CCanPWMActor.o

# target to build an object file
can_devices/CCanPWMActor.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanPWMActor.cpp.o
.PHONY : can_devices/CCanPWMActor.cpp.o

can_devices/CCanPWMActor.i: can_devices/CCanPWMActor.cpp.i
.PHONY : can_devices/CCanPWMActor.i

# target to preprocess a source file
can_devices/CCanPWMActor.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanPWMActor.cpp.i
.PHONY : can_devices/CCanPWMActor.cpp.i

can_devices/CCanPWMActor.s: can_devices/CCanPWMActor.cpp.s
.PHONY : can_devices/CCanPWMActor.s

# target to generate assembly for a file
can_devices/CCanPWMActor.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanPWMActor.cpp.s
.PHONY : can_devices/CCanPWMActor.cpp.s

can_devices/CCanRGBActor.o: can_devices/CCanRGBActor.cpp.o
.PHONY : can_devices/CCanRGBActor.o

# target to build an object file
can_devices/CCanRGBActor.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanRGBActor.cpp.o
.PHONY : can_devices/CCanRGBActor.cpp.o

can_devices/CCanRGBActor.i: can_devices/CCanRGBActor.cpp.i
.PHONY : can_devices/CCanRGBActor.i

# target to preprocess a source file
can_devices/CCanRGBActor.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanRGBActor.cpp.i
.PHONY : can_devices/CCanRGBActor.cpp.i

can_devices/CCanRGBActor.s: can_devices/CCanRGBActor.cpp.s
.PHONY : can_devices/CCanRGBActor.s

# target to generate assembly for a file
can_devices/CCanRGBActor.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanRGBActor.cpp.s
.PHONY : can_devices/CCanRGBActor.cpp.s

can_devices/CCanSimpleSwitchActor.o: can_devices/CCanSimpleSwitchActor.cpp.o
.PHONY : can_devices/CCanSimpleSwitchActor.o

# target to build an object file
can_devices/CCanSimpleSwitchActor.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanSimpleSwitchActor.cpp.o
.PHONY : can_devices/CCanSimpleSwitchActor.cpp.o

can_devices/CCanSimpleSwitchActor.i: can_devices/CCanSimpleSwitchActor.cpp.i
.PHONY : can_devices/CCanSimpleSwitchActor.i

# target to preprocess a source file
can_devices/CCanSimpleSwitchActor.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanSimpleSwitchActor.cpp.i
.PHONY : can_devices/CCanSimpleSwitchActor.cpp.i

can_devices/CCanSimpleSwitchActor.s: can_devices/CCanSimpleSwitchActor.cpp.s
.PHONY : can_devices/CCanSimpleSwitchActor.s

# target to generate assembly for a file
can_devices/CCanSimpleSwitchActor.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanSimpleSwitchActor.cpp.s
.PHONY : can_devices/CCanSimpleSwitchActor.cpp.s

can_devices/CCanSimpleSwitchSensor.o: can_devices/CCanSimpleSwitchSensor.cpp.o
.PHONY : can_devices/CCanSimpleSwitchSensor.o

# target to build an object file
can_devices/CCanSimpleSwitchSensor.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanSimpleSwitchSensor.cpp.o
.PHONY : can_devices/CCanSimpleSwitchSensor.cpp.o

can_devices/CCanSimpleSwitchSensor.i: can_devices/CCanSimpleSwitchSensor.cpp.i
.PHONY : can_devices/CCanSimpleSwitchSensor.i

# target to preprocess a source file
can_devices/CCanSimpleSwitchSensor.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanSimpleSwitchSensor.cpp.i
.PHONY : can_devices/CCanSimpleSwitchSensor.cpp.i

can_devices/CCanSimpleSwitchSensor.s: can_devices/CCanSimpleSwitchSensor.cpp.s
.PHONY : can_devices/CCanSimpleSwitchSensor.s

# target to generate assembly for a file
can_devices/CCanSimpleSwitchSensor.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/can_devices/CCanSimpleSwitchSensor.cpp.s
.PHONY : can_devices/CCanSimpleSwitchSensor.cpp.s

homesys/CActionTranslator.o: homesys/CActionTranslator.cpp.o
.PHONY : homesys/CActionTranslator.o

# target to build an object file
homesys/CActionTranslator.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CActionTranslator.cpp.o
.PHONY : homesys/CActionTranslator.cpp.o

homesys/CActionTranslator.i: homesys/CActionTranslator.cpp.i
.PHONY : homesys/CActionTranslator.i

# target to preprocess a source file
homesys/CActionTranslator.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CActionTranslator.cpp.i
.PHONY : homesys/CActionTranslator.cpp.i

homesys/CActionTranslator.s: homesys/CActionTranslator.cpp.s
.PHONY : homesys/CActionTranslator.s

# target to generate assembly for a file
homesys/CActionTranslator.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CActionTranslator.cpp.s
.PHONY : homesys/CActionTranslator.cpp.s

homesys/CActionsChain.o: homesys/CActionsChain.cpp.o
.PHONY : homesys/CActionsChain.o

# target to build an object file
homesys/CActionsChain.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CActionsChain.cpp.o
.PHONY : homesys/CActionsChain.cpp.o

homesys/CActionsChain.i: homesys/CActionsChain.cpp.i
.PHONY : homesys/CActionsChain.i

# target to preprocess a source file
homesys/CActionsChain.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CActionsChain.cpp.i
.PHONY : homesys/CActionsChain.cpp.i

homesys/CActionsChain.s: homesys/CActionsChain.cpp.s
.PHONY : homesys/CActionsChain.s

# target to generate assembly for a file
homesys/CActionsChain.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CActionsChain.cpp.s
.PHONY : homesys/CActionsChain.cpp.s

homesys/CDevice.o: homesys/CDevice.cpp.o
.PHONY : homesys/CDevice.o

# target to build an object file
homesys/CDevice.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CDevice.cpp.o
.PHONY : homesys/CDevice.cpp.o

homesys/CDevice.i: homesys/CDevice.cpp.i
.PHONY : homesys/CDevice.i

# target to preprocess a source file
homesys/CDevice.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CDevice.cpp.i
.PHONY : homesys/CDevice.cpp.i

homesys/CDevice.s: homesys/CDevice.cpp.s
.PHONY : homesys/CDevice.s

# target to generate assembly for a file
homesys/CDevice.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CDevice.cpp.s
.PHONY : homesys/CDevice.cpp.s

homesys/CDeviceManager.o: homesys/CDeviceManager.cpp.o
.PHONY : homesys/CDeviceManager.o

# target to build an object file
homesys/CDeviceManager.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CDeviceManager.cpp.o
.PHONY : homesys/CDeviceManager.cpp.o

homesys/CDeviceManager.i: homesys/CDeviceManager.cpp.i
.PHONY : homesys/CDeviceManager.i

# target to preprocess a source file
homesys/CDeviceManager.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CDeviceManager.cpp.i
.PHONY : homesys/CDeviceManager.cpp.i

homesys/CDeviceManager.s: homesys/CDeviceManager.cpp.s
.PHONY : homesys/CDeviceManager.s

# target to generate assembly for a file
homesys/CDeviceManager.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CDeviceManager.cpp.s
.PHONY : homesys/CDeviceManager.cpp.s

homesys/COperation.o: homesys/COperation.cpp.o
.PHONY : homesys/COperation.o

# target to build an object file
homesys/COperation.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/COperation.cpp.o
.PHONY : homesys/COperation.cpp.o

homesys/COperation.i: homesys/COperation.cpp.i
.PHONY : homesys/COperation.i

# target to preprocess a source file
homesys/COperation.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/COperation.cpp.i
.PHONY : homesys/COperation.cpp.i

homesys/COperation.s: homesys/COperation.cpp.s
.PHONY : homesys/COperation.s

# target to generate assembly for a file
homesys/COperation.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/COperation.cpp.s
.PHONY : homesys/COperation.cpp.s

homesys/CSoapServer.o: homesys/CSoapServer.cpp.o
.PHONY : homesys/CSoapServer.o

# target to build an object file
homesys/CSoapServer.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CSoapServer.cpp.o
.PHONY : homesys/CSoapServer.cpp.o

homesys/CSoapServer.i: homesys/CSoapServer.cpp.i
.PHONY : homesys/CSoapServer.i

# target to preprocess a source file
homesys/CSoapServer.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CSoapServer.cpp.i
.PHONY : homesys/CSoapServer.cpp.i

homesys/CSoapServer.s: homesys/CSoapServer.cpp.s
.PHONY : homesys/CSoapServer.s

# target to generate assembly for a file
homesys/CSoapServer.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CSoapServer.cpp.s
.PHONY : homesys/CSoapServer.cpp.s

homesys/CTimer.o: homesys/CTimer.cpp.o
.PHONY : homesys/CTimer.o

# target to build an object file
homesys/CTimer.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CTimer.cpp.o
.PHONY : homesys/CTimer.cpp.o

homesys/CTimer.i: homesys/CTimer.cpp.i
.PHONY : homesys/CTimer.i

# target to preprocess a source file
homesys/CTimer.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CTimer.cpp.i
.PHONY : homesys/CTimer.cpp.i

homesys/CTimer.s: homesys/CTimer.cpp.s
.PHONY : homesys/CTimer.s

# target to generate assembly for a file
homesys/CTimer.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/CTimer.cpp.s
.PHONY : homesys/CTimer.cpp.s

homesys/homesys.o: homesys/homesys.cpp.o
.PHONY : homesys/homesys.o

# target to build an object file
homesys/homesys.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/homesys.cpp.o
.PHONY : homesys/homesys.cpp.o

homesys/homesys.i: homesys/homesys.cpp.i
.PHONY : homesys/homesys.i

# target to preprocess a source file
homesys/homesys.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/homesys.cpp.i
.PHONY : homesys/homesys.cpp.i

homesys/homesys.s: homesys/homesys.cpp.s
.PHONY : homesys/homesys.s

# target to generate assembly for a file
homesys/homesys.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/homesys/homesys.cpp.s
.PHONY : homesys/homesys.cpp.s

raspberry/CGPIOClass.o: raspberry/CGPIOClass.cpp.o
.PHONY : raspberry/CGPIOClass.o

# target to build an object file
raspberry/CGPIOClass.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/raspberry/CGPIOClass.cpp.o
.PHONY : raspberry/CGPIOClass.cpp.o

raspberry/CGPIOClass.i: raspberry/CGPIOClass.cpp.i
.PHONY : raspberry/CGPIOClass.i

# target to preprocess a source file
raspberry/CGPIOClass.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/raspberry/CGPIOClass.cpp.i
.PHONY : raspberry/CGPIOClass.cpp.i

raspberry/CGPIOClass.s: raspberry/CGPIOClass.cpp.s
.PHONY : raspberry/CGPIOClass.s

# target to generate assembly for a file
raspberry/CGPIOClass.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/raspberry/CGPIOClass.cpp.s
.PHONY : raspberry/CGPIOClass.cpp.s

tools/CBlob.o: tools/CBlob.cpp.o
.PHONY : tools/CBlob.o

# target to build an object file
tools/CBlob.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CBlob.cpp.o
.PHONY : tools/CBlob.cpp.o

tools/CBlob.i: tools/CBlob.cpp.i
.PHONY : tools/CBlob.i

# target to preprocess a source file
tools/CBlob.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CBlob.cpp.i
.PHONY : tools/CBlob.cpp.i

tools/CBlob.s: tools/CBlob.cpp.s
.PHONY : tools/CBlob.s

# target to generate assembly for a file
tools/CBlob.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CBlob.cpp.s
.PHONY : tools/CBlob.cpp.s

tools/CBuffer.o: tools/CBuffer.cpp.o
.PHONY : tools/CBuffer.o

# target to build an object file
tools/CBuffer.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CBuffer.cpp.o
.PHONY : tools/CBuffer.cpp.o

tools/CBuffer.i: tools/CBuffer.cpp.i
.PHONY : tools/CBuffer.i

# target to preprocess a source file
tools/CBuffer.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CBuffer.cpp.i
.PHONY : tools/CBuffer.cpp.i

tools/CBuffer.s: tools/CBuffer.cpp.s
.PHONY : tools/CBuffer.s

# target to generate assembly for a file
tools/CBuffer.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CBuffer.cpp.s
.PHONY : tools/CBuffer.cpp.s

tools/CCanBuffer.o: tools/CCanBuffer.cpp.o
.PHONY : tools/CCanBuffer.o

# target to build an object file
tools/CCanBuffer.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CCanBuffer.cpp.o
.PHONY : tools/CCanBuffer.cpp.o

tools/CCanBuffer.i: tools/CCanBuffer.cpp.i
.PHONY : tools/CCanBuffer.i

# target to preprocess a source file
tools/CCanBuffer.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CCanBuffer.cpp.i
.PHONY : tools/CCanBuffer.cpp.i

tools/CCanBuffer.s: tools/CCanBuffer.cpp.s
.PHONY : tools/CCanBuffer.s

# target to generate assembly for a file
tools/CCanBuffer.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CCanBuffer.cpp.s
.PHONY : tools/CCanBuffer.cpp.s

tools/CConfiguration.o: tools/CConfiguration.cpp.o
.PHONY : tools/CConfiguration.o

# target to build an object file
tools/CConfiguration.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CConfiguration.cpp.o
.PHONY : tools/CConfiguration.cpp.o

tools/CConfiguration.i: tools/CConfiguration.cpp.i
.PHONY : tools/CConfiguration.i

# target to preprocess a source file
tools/CConfiguration.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CConfiguration.cpp.i
.PHONY : tools/CConfiguration.cpp.i

tools/CConfiguration.s: tools/CConfiguration.cpp.s
.PHONY : tools/CConfiguration.s

# target to generate assembly for a file
tools/CConfiguration.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CConfiguration.cpp.s
.PHONY : tools/CConfiguration.cpp.s

tools/CDatabase.o: tools/CDatabase.cpp.o
.PHONY : tools/CDatabase.o

# target to build an object file
tools/CDatabase.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CDatabase.cpp.o
.PHONY : tools/CDatabase.cpp.o

tools/CDatabase.i: tools/CDatabase.cpp.i
.PHONY : tools/CDatabase.i

# target to preprocess a source file
tools/CDatabase.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CDatabase.cpp.i
.PHONY : tools/CDatabase.cpp.i

tools/CDatabase.s: tools/CDatabase.cpp.s
.PHONY : tools/CDatabase.s

# target to generate assembly for a file
tools/CDatabase.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CDatabase.cpp.s
.PHONY : tools/CDatabase.cpp.s

tools/CDevicesConfig.o: tools/CDevicesConfig.cpp.o
.PHONY : tools/CDevicesConfig.o

# target to build an object file
tools/CDevicesConfig.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CDevicesConfig.cpp.o
.PHONY : tools/CDevicesConfig.cpp.o

tools/CDevicesConfig.i: tools/CDevicesConfig.cpp.i
.PHONY : tools/CDevicesConfig.i

# target to preprocess a source file
tools/CDevicesConfig.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CDevicesConfig.cpp.i
.PHONY : tools/CDevicesConfig.cpp.i

tools/CDevicesConfig.s: tools/CDevicesConfig.cpp.s
.PHONY : tools/CDevicesConfig.s

# target to generate assembly for a file
tools/CDevicesConfig.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CDevicesConfig.cpp.s
.PHONY : tools/CDevicesConfig.cpp.s

tools/CFirmwareBuffer.o: tools/CFirmwareBuffer.cpp.o
.PHONY : tools/CFirmwareBuffer.o

# target to build an object file
tools/CFirmwareBuffer.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CFirmwareBuffer.cpp.o
.PHONY : tools/CFirmwareBuffer.cpp.o

tools/CFirmwareBuffer.i: tools/CFirmwareBuffer.cpp.i
.PHONY : tools/CFirmwareBuffer.i

# target to preprocess a source file
tools/CFirmwareBuffer.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CFirmwareBuffer.cpp.i
.PHONY : tools/CFirmwareBuffer.cpp.i

tools/CFirmwareBuffer.s: tools/CFirmwareBuffer.cpp.s
.PHONY : tools/CFirmwareBuffer.s

# target to generate assembly for a file
tools/CFirmwareBuffer.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CFirmwareBuffer.cpp.s
.PHONY : tools/CFirmwareBuffer.cpp.s

tools/CFirmwareLoader.o: tools/CFirmwareLoader.cpp.o
.PHONY : tools/CFirmwareLoader.o

# target to build an object file
tools/CFirmwareLoader.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CFirmwareLoader.cpp.o
.PHONY : tools/CFirmwareLoader.cpp.o

tools/CFirmwareLoader.i: tools/CFirmwareLoader.cpp.i
.PHONY : tools/CFirmwareLoader.i

# target to preprocess a source file
tools/CFirmwareLoader.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CFirmwareLoader.cpp.i
.PHONY : tools/CFirmwareLoader.cpp.i

tools/CFirmwareLoader.s: tools/CFirmwareLoader.cpp.s
.PHONY : tools/CFirmwareLoader.s

# target to generate assembly for a file
tools/CFirmwareLoader.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CFirmwareLoader.cpp.s
.PHONY : tools/CFirmwareLoader.cpp.s

tools/CLog.o: tools/CLog.cpp.o
.PHONY : tools/CLog.o

# target to build an object file
tools/CLog.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CLog.cpp.o
.PHONY : tools/CLog.cpp.o

tools/CLog.i: tools/CLog.cpp.i
.PHONY : tools/CLog.i

# target to preprocess a source file
tools/CLog.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CLog.cpp.i
.PHONY : tools/CLog.cpp.i

tools/CLog.s: tools/CLog.cpp.s
.PHONY : tools/CLog.s

# target to generate assembly for a file
tools/CLog.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CLog.cpp.s
.PHONY : tools/CLog.cpp.s

tools/CParamsConverter.o: tools/CParamsConverter.cpp.o
.PHONY : tools/CParamsConverter.o

# target to build an object file
tools/CParamsConverter.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CParamsConverter.cpp.o
.PHONY : tools/CParamsConverter.cpp.o

tools/CParamsConverter.i: tools/CParamsConverter.cpp.i
.PHONY : tools/CParamsConverter.i

# target to preprocess a source file
tools/CParamsConverter.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CParamsConverter.cpp.i
.PHONY : tools/CParamsConverter.cpp.i

tools/CParamsConverter.s: tools/CParamsConverter.cpp.s
.PHONY : tools/CParamsConverter.s

# target to generate assembly for a file
tools/CParamsConverter.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CParamsConverter.cpp.s
.PHONY : tools/CParamsConverter.cpp.s

tools/CSerCom.o: tools/CSerCom.cpp.o
.PHONY : tools/CSerCom.o

# target to build an object file
tools/CSerCom.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CSerCom.cpp.o
.PHONY : tools/CSerCom.cpp.o

tools/CSerCom.i: tools/CSerCom.cpp.i
.PHONY : tools/CSerCom.i

# target to preprocess a source file
tools/CSerCom.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CSerCom.cpp.i
.PHONY : tools/CSerCom.cpp.i

tools/CSerCom.s: tools/CSerCom.cpp.s
.PHONY : tools/CSerCom.s

# target to generate assembly for a file
tools/CSerCom.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CSerCom.cpp.s
.PHONY : tools/CSerCom.cpp.s

tools/CTimeOut.o: tools/CTimeOut.cpp.o
.PHONY : tools/CTimeOut.o

# target to build an object file
tools/CTimeOut.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CTimeOut.cpp.o
.PHONY : tools/CTimeOut.cpp.o

tools/CTimeOut.i: tools/CTimeOut.cpp.i
.PHONY : tools/CTimeOut.i

# target to preprocess a source file
tools/CTimeOut.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CTimeOut.cpp.i
.PHONY : tools/CTimeOut.cpp.i

tools/CTimeOut.s: tools/CTimeOut.cpp.s
.PHONY : tools/CTimeOut.s

# target to generate assembly for a file
tools/CTimeOut.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CTimeOut.cpp.s
.PHONY : tools/CTimeOut.cpp.s

tools/CTools.o: tools/CTools.cpp.o
.PHONY : tools/CTools.o

# target to build an object file
tools/CTools.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CTools.cpp.o
.PHONY : tools/CTools.cpp.o

tools/CTools.i: tools/CTools.cpp.i
.PHONY : tools/CTools.i

# target to preprocess a source file
tools/CTools.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CTools.cpp.i
.PHONY : tools/CTools.cpp.i

tools/CTools.s: tools/CTools.cpp.s
.PHONY : tools/CTools.s

# target to generate assembly for a file
tools/CTools.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/tools/CTools.cpp.s
.PHONY : tools/CTools.cpp.s

webservice/soapC.o: webservice/soapC.cpp.o
.PHONY : webservice/soapC.o

# target to build an object file
webservice/soapC.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/webservice/soapC.cpp.o
.PHONY : webservice/soapC.cpp.o

webservice/soapC.i: webservice/soapC.cpp.i
.PHONY : webservice/soapC.i

# target to preprocess a source file
webservice/soapC.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/webservice/soapC.cpp.i
.PHONY : webservice/soapC.cpp.i

webservice/soapC.s: webservice/soapC.cpp.s
.PHONY : webservice/soapC.s

# target to generate assembly for a file
webservice/soapC.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/webservice/soapC.cpp.s
.PHONY : webservice/soapC.cpp.s

webservice/soaphomesysService.o: webservice/soaphomesysService.cpp.o
.PHONY : webservice/soaphomesysService.o

# target to build an object file
webservice/soaphomesysService.cpp.o:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/webservice/soaphomesysService.cpp.o
.PHONY : webservice/soaphomesysService.cpp.o

webservice/soaphomesysService.i: webservice/soaphomesysService.cpp.i
.PHONY : webservice/soaphomesysService.i

# target to preprocess a source file
webservice/soaphomesysService.cpp.i:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/webservice/soaphomesysService.cpp.i
.PHONY : webservice/soaphomesysService.cpp.i

webservice/soaphomesysService.s: webservice/soaphomesysService.cpp.s
.PHONY : webservice/soaphomesysService.s

# target to generate assembly for a file
webservice/soaphomesysService.cpp.s:
	$(MAKE) -f CMakeFiles/build/homesys.dir/build.make CMakeFiles/build/homesys.dir/webservice/soaphomesysService.cpp.s
.PHONY : webservice/soaphomesysService.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... build/homesys"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... can232/CCan232.o"
	@echo "... can232/CCan232.i"
	@echo "... can232/CCan232.s"
	@echo "... can_devices/CCanPWMActor.o"
	@echo "... can_devices/CCanPWMActor.i"
	@echo "... can_devices/CCanPWMActor.s"
	@echo "... can_devices/CCanRGBActor.o"
	@echo "... can_devices/CCanRGBActor.i"
	@echo "... can_devices/CCanRGBActor.s"
	@echo "... can_devices/CCanSimpleSwitchActor.o"
	@echo "... can_devices/CCanSimpleSwitchActor.i"
	@echo "... can_devices/CCanSimpleSwitchActor.s"
	@echo "... can_devices/CCanSimpleSwitchSensor.o"
	@echo "... can_devices/CCanSimpleSwitchSensor.i"
	@echo "... can_devices/CCanSimpleSwitchSensor.s"
	@echo "... homesys/CActionTranslator.o"
	@echo "... homesys/CActionTranslator.i"
	@echo "... homesys/CActionTranslator.s"
	@echo "... homesys/CActionsChain.o"
	@echo "... homesys/CActionsChain.i"
	@echo "... homesys/CActionsChain.s"
	@echo "... homesys/CDevice.o"
	@echo "... homesys/CDevice.i"
	@echo "... homesys/CDevice.s"
	@echo "... homesys/CDeviceManager.o"
	@echo "... homesys/CDeviceManager.i"
	@echo "... homesys/CDeviceManager.s"
	@echo "... homesys/COperation.o"
	@echo "... homesys/COperation.i"
	@echo "... homesys/COperation.s"
	@echo "... homesys/CSoapServer.o"
	@echo "... homesys/CSoapServer.i"
	@echo "... homesys/CSoapServer.s"
	@echo "... homesys/CTimer.o"
	@echo "... homesys/CTimer.i"
	@echo "... homesys/CTimer.s"
	@echo "... homesys/homesys.o"
	@echo "... homesys/homesys.i"
	@echo "... homesys/homesys.s"
	@echo "... raspberry/CGPIOClass.o"
	@echo "... raspberry/CGPIOClass.i"
	@echo "... raspberry/CGPIOClass.s"
	@echo "... tools/CBlob.o"
	@echo "... tools/CBlob.i"
	@echo "... tools/CBlob.s"
	@echo "... tools/CBuffer.o"
	@echo "... tools/CBuffer.i"
	@echo "... tools/CBuffer.s"
	@echo "... tools/CCanBuffer.o"
	@echo "... tools/CCanBuffer.i"
	@echo "... tools/CCanBuffer.s"
	@echo "... tools/CConfiguration.o"
	@echo "... tools/CConfiguration.i"
	@echo "... tools/CConfiguration.s"
	@echo "... tools/CDatabase.o"
	@echo "... tools/CDatabase.i"
	@echo "... tools/CDatabase.s"
	@echo "... tools/CDevicesConfig.o"
	@echo "... tools/CDevicesConfig.i"
	@echo "... tools/CDevicesConfig.s"
	@echo "... tools/CFirmwareBuffer.o"
	@echo "... tools/CFirmwareBuffer.i"
	@echo "... tools/CFirmwareBuffer.s"
	@echo "... tools/CFirmwareLoader.o"
	@echo "... tools/CFirmwareLoader.i"
	@echo "... tools/CFirmwareLoader.s"
	@echo "... tools/CLog.o"
	@echo "... tools/CLog.i"
	@echo "... tools/CLog.s"
	@echo "... tools/CParamsConverter.o"
	@echo "... tools/CParamsConverter.i"
	@echo "... tools/CParamsConverter.s"
	@echo "... tools/CSerCom.o"
	@echo "... tools/CSerCom.i"
	@echo "... tools/CSerCom.s"
	@echo "... tools/CTimeOut.o"
	@echo "... tools/CTimeOut.i"
	@echo "... tools/CTimeOut.s"
	@echo "... tools/CTools.o"
	@echo "... tools/CTools.i"
	@echo "... tools/CTools.s"
	@echo "... webservice/soapC.o"
	@echo "... webservice/soapC.i"
	@echo "... webservice/soapC.s"
	@echo "... webservice/soaphomesysService.o"
	@echo "... webservice/soaphomesysService.i"
	@echo "... webservice/soaphomesysService.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

