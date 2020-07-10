
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, bluez, catkin, diagnostic-msgs, libusb, linuxConsoleTools, pythonPackages, rosgraph, roslint, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-noetic-ps3joy";
  version = "1.14.0-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/joystick_drivers-release/archive/release/noetic/ps3joy/1.14.0-1.tar.gz";
    name = "1.14.0-1.tar.gz";
    sha256 = "bbbf4ebf7783fe4b00de19a2449903b5144c66497bc95800b931ddd6752837cc";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  propagatedBuildInputs = [ bluez diagnostic-msgs libusb linuxConsoleTools pythonPackages.pybluez rosgraph rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Playstation 3 SIXAXIS or DUAL SHOCK 3 joystick driver.
    Driver for the Sony PlayStation 3 SIXAXIS or DUAL SHOCK 3
    joysticks. In its current state, this driver is not compatible
    with the use of other Bluetooth HID devices. The driver listens
    for a connection on the HID ports, starts the joystick
    streaming data, and passes the data to the Linux uinput device
    so that it shows up as a normal joystick.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
