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
CMAKE_SOURCE_DIR = /home/hsujim/Desktop/workarea/gr-hsujim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hsujim/Desktop/workarea/gr-hsujim/build

# Utility rule file for hsujim_swig_swig_doc.

# Include the progress variables for this target.
include swig/CMakeFiles/hsujim_swig_swig_doc.dir/progress.make

swig/CMakeFiles/hsujim_swig_swig_doc: swig/hsujim_swig_doc.i


swig/hsujim_swig_doc.i: swig/hsujim_swig_doc_swig_docs/xml/index.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hsujim/Desktop/workarea/gr-hsujim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating python docstrings for hsujim_swig_doc"
	cd /home/hsujim/Desktop/workarea/gr-hsujim/docs/doxygen && /usr/bin/python3 -B /home/hsujim/Desktop/workarea/gr-hsujim/docs/doxygen/swig_doc.py /home/hsujim/Desktop/workarea/gr-hsujim/build/swig/hsujim_swig_doc_swig_docs/xml /home/hsujim/Desktop/workarea/gr-hsujim/build/swig/hsujim_swig_doc.i

swig/hsujim_swig_doc_swig_docs/xml/index.xml: swig/_hsujim_swig_doc_tag
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/hsujim/Desktop/workarea/gr-hsujim/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating doxygen xml for hsujim_swig_doc docs"
	cd /home/hsujim/Desktop/workarea/gr-hsujim/build/swig && ./_hsujim_swig_doc_tag
	cd /home/hsujim/Desktop/workarea/gr-hsujim/build/swig && /usr/bin/doxygen /home/hsujim/Desktop/workarea/gr-hsujim/build/swig/hsujim_swig_doc_swig_docs/Doxyfile

hsujim_swig_swig_doc: swig/CMakeFiles/hsujim_swig_swig_doc
hsujim_swig_swig_doc: swig/hsujim_swig_doc.i
hsujim_swig_swig_doc: swig/hsujim_swig_doc_swig_docs/xml/index.xml
hsujim_swig_swig_doc: swig/CMakeFiles/hsujim_swig_swig_doc.dir/build.make

.PHONY : hsujim_swig_swig_doc

# Rule to build all files generated by this target.
swig/CMakeFiles/hsujim_swig_swig_doc.dir/build: hsujim_swig_swig_doc

.PHONY : swig/CMakeFiles/hsujim_swig_swig_doc.dir/build

swig/CMakeFiles/hsujim_swig_swig_doc.dir/clean:
	cd /home/hsujim/Desktop/workarea/gr-hsujim/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/hsujim_swig_swig_doc.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/hsujim_swig_swig_doc.dir/clean

swig/CMakeFiles/hsujim_swig_swig_doc.dir/depend:
	cd /home/hsujim/Desktop/workarea/gr-hsujim/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hsujim/Desktop/workarea/gr-hsujim /home/hsujim/Desktop/workarea/gr-hsujim/swig /home/hsujim/Desktop/workarea/gr-hsujim/build /home/hsujim/Desktop/workarea/gr-hsujim/build/swig /home/hsujim/Desktop/workarea/gr-hsujim/build/swig/CMakeFiles/hsujim_swig_swig_doc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/hsujim_swig_swig_doc.dir/depend

