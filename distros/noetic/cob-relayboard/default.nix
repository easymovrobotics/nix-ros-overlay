
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cob-msgs, roscpp, rospy, std-msgs }:
buildRosPackage {
  pname = "ros-noetic-cob-relayboard";
  version = "0.7.12-r1";

  src = fetchurl {
    url = "https://github.com/ipa320/cob_driver-release/archive/release/noetic/cob_relayboard/0.7.12-1.tar.gz";
    name = "0.7.12-1.tar.gz";
    sha256 = "9590bbd1bc74f6d9138aa0d0e29c2f31f8e05587b77c6ddac21a7ee3e9f3a032";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cob-msgs roscpp rospy std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''cob_relayboard'';
    license = with lib.licenses; [ asl20 ];
  };
}
