
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen, geometric-shapes, moveit-core, moveit-msgs, octomap, pluginlib, rosunit, tf2-ros }:
buildRosPackage {
  pname = "ros-melodic-moveit-ros-occupancy-map-monitor";
  version = "1.0.10-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/moveit-release/archive/release/melodic/moveit_ros_occupancy_map_monitor/1.0.10-1.tar.gz";
    name = "1.0.10-1.tar.gz";
    sha256 = "e4347707d0ccd76f7f99ff84f81e11ac2081469964b21b4741f659b2f49e29aa";
  };

  buildType = "catkin";
  buildInputs = [ eigen ];
  checkInputs = [ rosunit ];
  propagatedBuildInputs = [ geometric-shapes moveit-core moveit-msgs octomap pluginlib tf2-ros ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Components of MoveIt! connecting to occupancy map'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
