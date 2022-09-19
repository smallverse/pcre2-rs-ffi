# CMake generated Testfile for 
# Source directory: /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master
# Build directory: /mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(pcre2_test "sh" "/mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build/pcre2_test.sh")
set_tests_properties(pcre2_test PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/CMakeLists.txt;1001;ADD_TEST;/mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/CMakeLists.txt;0;")
add_test(pcre2_grep_test "sh" "/mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/build/pcre2_grep_test.sh")
set_tests_properties(pcre2_grep_test PROPERTIES  _BACKTRACE_TRIPLES "/mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/CMakeLists.txt;1014;ADD_TEST;/mnt/c/resources/zhaijf/pcre2-rs-ffi/pcre2-master/CMakeLists.txt;0;")
