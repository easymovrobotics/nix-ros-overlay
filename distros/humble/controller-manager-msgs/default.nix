
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, lifecycle-msgs, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-controller-manager-msgs";
  version = "2.12.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/controller_manager_msgs/2.12.1-1.tar.gz";
    name = "2.12.1-1.tar.gz";
    sha256 = "1aa76228bdd8bd5756a2eaef5652ce295de7d1d0b022070d85aa6215739b705e";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
