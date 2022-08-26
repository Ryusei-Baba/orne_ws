# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mcl_3dl_msgs: 1 messages, 2 services")

set(MSG_I_FLAGS "-Imcl_3dl_msgs:/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mcl_3dl_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg" NAME_WE)
add_custom_target(_mcl_3dl_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcl_3dl_msgs" "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv" NAME_WE)
add_custom_target(_mcl_3dl_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcl_3dl_msgs" "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv" ""
)

get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv" NAME_WE)
add_custom_target(_mcl_3dl_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mcl_3dl_msgs" "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Services
_generate_srv_cpp(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcl_3dl_msgs
)
_generate_srv_cpp(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Module File
_generate_module_cpp(mcl_3dl_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcl_3dl_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mcl_3dl_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mcl_3dl_msgs_generate_messages mcl_3dl_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_cpp _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_cpp _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_cpp _mcl_3dl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mcl_3dl_msgs_gencpp)
add_dependencies(mcl_3dl_msgs_gencpp mcl_3dl_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mcl_3dl_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Services
_generate_srv_eus(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mcl_3dl_msgs
)
_generate_srv_eus(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Module File
_generate_module_eus(mcl_3dl_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mcl_3dl_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mcl_3dl_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mcl_3dl_msgs_generate_messages mcl_3dl_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_eus _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_eus _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_eus _mcl_3dl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mcl_3dl_msgs_geneus)
add_dependencies(mcl_3dl_msgs_geneus mcl_3dl_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mcl_3dl_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Services
_generate_srv_lisp(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcl_3dl_msgs
)
_generate_srv_lisp(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Module File
_generate_module_lisp(mcl_3dl_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcl_3dl_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mcl_3dl_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mcl_3dl_msgs_generate_messages mcl_3dl_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_lisp _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_lisp _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_lisp _mcl_3dl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mcl_3dl_msgs_genlisp)
add_dependencies(mcl_3dl_msgs_genlisp mcl_3dl_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mcl_3dl_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Services
_generate_srv_nodejs(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mcl_3dl_msgs
)
_generate_srv_nodejs(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Module File
_generate_module_nodejs(mcl_3dl_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mcl_3dl_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mcl_3dl_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mcl_3dl_msgs_generate_messages mcl_3dl_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_nodejs _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_nodejs _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_nodejs _mcl_3dl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mcl_3dl_msgs_gennodejs)
add_dependencies(mcl_3dl_msgs_gennodejs mcl_3dl_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mcl_3dl_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Services
_generate_srv_py(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcl_3dl_msgs
)
_generate_srv_py(mcl_3dl_msgs
  "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcl_3dl_msgs
)

### Generating Module File
_generate_module_py(mcl_3dl_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcl_3dl_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mcl_3dl_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mcl_3dl_msgs_generate_messages mcl_3dl_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/msg/Status.msg" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_py _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/ResizeParticle.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_py _mcl_3dl_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryusei/orne_ws/src/mcl_3dl_msgs/srv/LoadPCD.srv" NAME_WE)
add_dependencies(mcl_3dl_msgs_generate_messages_py _mcl_3dl_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mcl_3dl_msgs_genpy)
add_dependencies(mcl_3dl_msgs_genpy mcl_3dl_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mcl_3dl_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcl_3dl_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mcl_3dl_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mcl_3dl_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mcl_3dl_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mcl_3dl_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mcl_3dl_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcl_3dl_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mcl_3dl_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mcl_3dl_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mcl_3dl_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mcl_3dl_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mcl_3dl_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcl_3dl_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcl_3dl_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mcl_3dl_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mcl_3dl_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
