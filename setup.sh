#!/bin/bash
apt install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa
apt install -y python3.9-dev python3.9-venv
python3.9 -m venv venv
source ./venv/bin/activate

apt install -y libosmesa6-dev
apt install -y libegl1 libgles2
apt install -y libgl1 libgl1-mesa-dev libosmesa6-dev

pip install tensorflow tensorflow-probability tf_keras==2.18.0 ruamel.yaml==0.17.4 gym==0.18.0  mujoco_py d4rl envs opencv-python==4.5.2.52 numpy-quaternion==2021.4.5.14.42.35 numpy==1.26.4 numba==0.53.1 pyquaternion==0.9.9 Cython==0.29.37 matplotlib==3.3.4 torch==1.10.2

mkdir -p /root/.mujoco

wget https://github.com/google-deepmind/mujoco/releases/download/2.1.0/mujoco210-linux-x86_64.tar.gz
tar xvfz mujoco210-linux-x86_64.tar.gz
mv mujoco210 /root/.mujoco/mujoco210
wget https://www.roboti.us/file/mjkey.txt -o /root/.mujoco/mjkey.txt
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/root/.mujoco/mujoco210/bin

