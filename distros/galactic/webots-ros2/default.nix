
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, builtin-interfaces, pythonPackages, rclpy, std-msgs, webots-ros2-control, webots-ros2-core, webots-ros2-driver, webots-ros2-epuck, webots-ros2-importer, webots-ros2-mavic, webots-ros2-msgs, webots-ros2-tesla, webots-ros2-tests, webots-ros2-tiago, webots-ros2-turtlebot, webots-ros2-universal-robot }:
buildRosPackage {
  pname = "ros-galactic-webots-ros2";
  version = "1.2.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/webots_ros2-release/archive/release/galactic/webots_ros2/1.2.1-3.tar.gz";
    name = "1.2.1-3.tar.gz";
    sha256 = "28d51a06cddbca929de9d96af859440a62953a7cce5025abd8c3a78574778145";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest webots-ros2-tests ];
  propagatedBuildInputs = [ builtin-interfaces rclpy std-msgs webots-ros2-control webots-ros2-core webots-ros2-driver webots-ros2-epuck webots-ros2-importer webots-ros2-mavic webots-ros2-msgs webots-ros2-tesla webots-ros2-tiago webots-ros2-turtlebot webots-ros2-universal-robot ];

  meta = {
    description = ''Interface between Webots and ROS2'';
    license = with lib.licenses; [ asl20 ];
  };
}
