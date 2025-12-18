REPO = UoL_MARL
REGISTRY_IMAGE = ros:melodic-ros-base-bionic
LOCAL_IMAGE = ros:melodic-ros-base-bionic
# ================================================================================================
# Commands for building the container if you are changing the requirements
# ================================================================================================

## Ensures that your locally built container can import all the Python packages successfully when it runs
build:
	docker build -t my/px4_ros .

start:
	bash run_df.bash
