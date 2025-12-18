# This is an example Docker File
#  Command to build it
# docker built -t <image name > .
FROM crpi-uhiltw8kres50c5x.cn-shanghai.personal.cr.aliyuncs.com/uav_suyu/px4-mavros:v0.3.0

RUN cd ~/PX4-Autopilot && make px4_sitl_default

RUN echo "source ~/PX4-Autopilot/Tools/simulation/gazebo-classic/setup_gazebo.bash ~/PX4-Autopilot/ ~/PX4-Autopilot/build/px4_sitl_default" >> ~/.bashrc
RUN echo "export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/PX4-Autopilot" >> ~/.bashrc
RUN echo "export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:~/PX4-Autopilot/Tools/simulation/gazebo-classic/sitl_gazebo-classic" >> ~/.bashrc

#USER user
#WORKDIR /home/user/PX4-Autopilot

RUN echo "ALL Done"
