# Install script for directory: /home/schwarmcyc/kuka850_ws/src/kuka_node

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/schwarmcyc/kuka850_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kuka_node/msg" TYPE FILE FILES
    "/home/schwarmcyc/kuka850_ws/src/kuka_node/msg/ExecuteTrajectoryAction.msg"
    "/home/schwarmcyc/kuka850_ws/src/kuka_node/msg/ExecuteTrajectoryActionFeedback.msg"
    "/home/schwarmcyc/kuka850_ws/src/kuka_node/msg/ExecuteTrajectoryActionGoal.msg"
    "/home/schwarmcyc/kuka850_ws/src/kuka_node/msg/ExecuteTrajectoryActionResult.msg"
    "/home/schwarmcyc/kuka850_ws/src/kuka_node/msg/ExecuteTrajectoryFeedback.msg"
    "/home/schwarmcyc/kuka850_ws/src/kuka_node/msg/ExecuteTrajectoryGoal.msg"
    "/home/schwarmcyc/kuka850_ws/src/kuka_node/msg/ExecuteTrajectoryResult.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kuka_node/srv" TYPE FILE FILES "/home/schwarmcyc/kuka850_ws/src/kuka_node/srv/SetTrajectory.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kuka_node/cmake" TYPE FILE FILES "/home/schwarmcyc/kuka850_ws/build/kuka_node/catkin_generated/installspace/kuka_node-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/schwarmcyc/kuka850_ws/devel/include/kuka_node")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/schwarmcyc/kuka850_ws/devel/share/roseus/ros/kuka_node")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/schwarmcyc/kuka850_ws/devel/share/common-lisp/ros/kuka_node")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/schwarmcyc/kuka850_ws/devel/lib/python2.7/dist-packages/kuka_node")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/schwarmcyc/kuka850_ws/devel/lib/python2.7/dist-packages/kuka_node")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/schwarmcyc/kuka850_ws/build/kuka_node/catkin_generated/installspace/kuka_node.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kuka_node/cmake" TYPE FILE FILES "/home/schwarmcyc/kuka850_ws/build/kuka_node/catkin_generated/installspace/kuka_node-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kuka_node/cmake" TYPE FILE FILES
    "/home/schwarmcyc/kuka850_ws/build/kuka_node/catkin_generated/installspace/kuka_nodeConfig.cmake"
    "/home/schwarmcyc/kuka850_ws/build/kuka_node/catkin_generated/installspace/kuka_nodeConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/kuka_node" TYPE FILE FILES "/home/schwarmcyc/kuka850_ws/src/kuka_node/package.xml")
endif()

