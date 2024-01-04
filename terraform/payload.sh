#! /bin/bash

sudo apt-get update

# install pip
sudo apt-get install python3-pip -y

# install docker
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
echo 'deb [arch=amd64] https://download.docker.com/linux/debian buster stable' | tee /etc/apt/sources.list.d/docker.list
sudo apt install -y docker.io
sudo systemctl enable docker --now
sudo usermod -aG docker azureuser

# install scoutsuite
pip install ScoutSuite

# install pacu
git clone https://github.com/RhinoSecurityLabs/pacu && mv ./pacu/ /home/azureuser/
pip install -r /home/azureuser/pacu/requirements.txt

# install cloudsplaining
pip3 install cloudsplaining