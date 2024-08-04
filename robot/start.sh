#!/bin/bash
echo "Starting the container..."
# Outros comandos para inicializar

envsubst < ~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml \
> ~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml.tmp && \
mv ~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml.tmp \
~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml

chmod +x ~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml

# Manter o container ativo
exec "$SHELL"