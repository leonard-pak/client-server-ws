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

run/client:
	. devel/setup.sh && rosrun client_cli_pkg client_cli_pkg_node

server:
	. devel/setup.sh && roslaunch server_api_pkg start-server.launch

client:
	. devel/setup.sh && roslaunch client_cli_pkg start-client.launch
