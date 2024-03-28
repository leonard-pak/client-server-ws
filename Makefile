.PHONY: build clear

all: clear build

clear:
	rm -rf build devel

build:
	catkin_make

run/wheel:
	. devel/setup.sh && rosrun server_api_pkg two_wheel_robot_node

run/arm:
	. devel/setup.sh && rosrun server_api_pkg robotic_arm_node
