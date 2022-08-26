# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "fulanghua_srvs: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(fulanghua_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv" NAME_WE)
add_custom_target(_fulanghua_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "fulanghua_srvs" "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(fulanghua_srvs
  "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fulanghua_srvs
)

### Generating Module File
_generate_module_cpp(fulanghua_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fulanghua_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(fulanghua_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(fulanghua_srvs_generate_messages fulanghua_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv" NAME_WE)
add_dependencies(fulanghua_srvs_generate_messages_cpp _fulanghua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fulanghua_srvs_gencpp)
add_dependencies(fulanghua_srvs_gencpp fulanghua_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fulanghua_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(fulanghua_srvs
  "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fulanghua_srvs
)

### Generating Module File
_generate_module_eus(fulanghua_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fulanghua_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(fulanghua_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(fulanghua_srvs_generate_messages fulanghua_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv" NAME_WE)
add_dependencies(fulanghua_srvs_generate_messages_eus _fulanghua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fulanghua_srvs_geneus)
add_dependencies(fulanghua_srvs_geneus fulanghua_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fulanghua_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(fulanghua_srvs
  "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fulanghua_srvs
)

### Generating Module File
_generate_module_lisp(fulanghua_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fulanghua_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(fulanghua_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(fulanghua_srvs_generate_messages fulanghua_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv" NAME_WE)
add_dependencies(fulanghua_srvs_generate_messages_lisp _fulanghua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fulanghua_srvs_genlisp)
add_dependencies(fulanghua_srvs_genlisp fulanghua_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fulanghua_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(fulanghua_srvs
  "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fulanghua_srvs
)

### Generating Module File
_generate_module_nodejs(fulanghua_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fulanghua_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(fulanghua_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(fulanghua_srvs_generate_messages fulanghua_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv" NAME_WE)
add_dependencies(fulanghua_srvs_generate_messages_nodejs _fulanghua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fulanghua_srvs_gennodejs)
add_dependencies(fulanghua_srvs_gennodejs fulanghua_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fulanghua_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(fulanghua_srvs
  "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fulanghua_srvs
)

### Generating Module File
_generate_module_py(fulanghua_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fulanghua_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(fulanghua_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(fulanghua_srvs_generate_messages fulanghua_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryusei/orne_ws/src/fulanghua_navigation/fulanghua_srvs/srv/Pose.srv" NAME_WE)
add_dependencies(fulanghua_srvs_generate_messages_py _fulanghua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(fulanghua_srvs_genpy)
add_dependencies(fulanghua_srvs_genpy fulanghua_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS fulanghua_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fulanghua_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/fulanghua_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(fulanghua_srvs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fulanghua_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/fulanghua_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(fulanghua_srvs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fulanghua_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/fulanghua_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(fulanghua_srvs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fulanghua_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/fulanghua_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(fulanghua_srvs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fulanghua_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fulanghua_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/fulanghua_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(fulanghua_srvs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
