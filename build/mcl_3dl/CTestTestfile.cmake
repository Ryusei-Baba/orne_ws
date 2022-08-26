# CMake generated Testfile for 
# Source directory: /home/ryusei/orne_ws/src/mcl_3dl
# Build directory: /home/ryusei/orne_ws/build/mcl_3dl
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_mcl_3dl_roslint_package "/home/ryusei/orne_ws/build/mcl_3dl/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/ryusei/orne_ws/build/mcl_3dl/test_results/mcl_3dl/roslint-mcl_3dl.xml" "--working-dir" "/home/ryusei/orne_ws/build/mcl_3dl" "--return-code" "/opt/ros/noetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/ryusei/orne_ws/build/mcl_3dl/test_results/mcl_3dl/roslint-mcl_3dl.xml make roslint_mcl_3dl")
set_tests_properties(_ctest_mcl_3dl_roslint_package PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslint/cmake/roslint-extras.cmake;67;catkin_run_tests_target;/home/ryusei/orne_ws/src/mcl_3dl/CMakeLists.txt;91;roslint_add_test;/home/ryusei/orne_ws/src/mcl_3dl/CMakeLists.txt;0;")
subdirs("gtest")
subdirs("test")
