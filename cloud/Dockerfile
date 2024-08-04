FROM osrf/ros:noetic-desktop

# Change the default shell to Bash
SHELL [ "/bin/bash" , "-c" ]

# Install gettext for envsubst
RUN apt-get update && apt-get install -y \
    git \
    python3-pip \
    gettext \
    net-tools

# Create catkin workspace, clone repository, and build
RUN mkdir -p ~/catkin_ws/src && cd ~/catkin_ws/src && \
    git clone -b teste-docker https://github.com/eduardoAssisSilva/fixed_ros_pound_cloud_example.git && \
    cd ~/catkin_ws && source /opt/ros/noetic/setup.bash && catkin_make

# Add ROS setup script to bashrc
RUN echo "#Entrada dos Sources do ROS Nativo Global e do Workspace catkin_ws" >> ~/.bashrc && \
    echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc && \
    echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc && \
    echo "alias cw='cd ~/catkin_ws'" >> ~/.bashrc && \
    echo "alias cs='cd ~/catkin_ws/src'" >> ~/.bashrc && \
    echo "alias cm='cw && catkin_make'" >> ~/.bashrc && \
    echo "cd /root" >> ~/.bashrc

# Set the DISPLAY environment variable
ENV DISPLAY=host.docker.internal:0.0

COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh
ENTRYPOINT ["/usr/local/bin/start.sh"]
CMD ["bash"]
