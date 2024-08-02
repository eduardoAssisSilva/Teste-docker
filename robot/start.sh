#!/bin/bash
echo "Starting the container..."
# Outros comandos para inicializar

cat ~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.h 


echo "------------------------------------------------------------------------------"
# Replace variables in config.yaml
cat ~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml
echo "------------------------------------------------------------------------------"

envsubst < ~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml \
> ~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml.tmp && \
mv ~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml.tmp \
~/catkin_ws/src/fixed_ros_pound_cloud_example/src/libwrapper/config/config.yaml

chmod +x config.yaml


# Manter o container ativo
exec "$SHELL"