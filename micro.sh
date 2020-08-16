
###micro.sh####
set -e errexit
###################################################
sudo apt-get update && sudo apt-get upgrade -y
###################################################
sudo apt install -y wget git-all net-tools ssh 
###################################################
git config --global user.name "xcryptology"
###################################################
git config --global user.email "xcryptology@gmail.com"
###################################################
sudo apt-get install -y tasksel
###################################################
sudo apt-get install -y slim
###################################################
sudo apt-get install -y lightdm
###################################################
tasksel
###################################################
#sudo apt-get install -y kde-plasma-desktop
#sudo service display_manager start
###################################################
sudo tasksel install -y xubuntu-core
###################################################
sudo service display_manager start
###################################################
sudo apt-get install xfce4 slim
###################################################
sudo service slim start
###################################################
cd ~/
###################################################
sudo apt-get remove docker docker-engine docker.io containerd runc
#########################################
sudo apt-get update
#########################################
sudo apt-get install -y\
    apt-transport-https \
    ca-certificates curl wget\
    gnupg-agent \
    software-properties-common
#########################################
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt installb -y signal-desktop
########################################################
sudo apt install -y python2.7 python3.8 python3-pip npm nodejs
############################################
pip3 install pipenv
####################################################
curl -fsSL https://get.docker.com -o get-docker.sh
####################################################
sudo sh get-docker.sh
####################################################
sudo apt-get update
#########################################
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
###################################################
sudo chmod +x /usr/local/bin/docker-compose
###################################################
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
###################################################
docker --version
#######################################
docker-compose --version
#######################################
sudo docker run docker/whalesay cowsay Hello-World!
#########################################
(sudo usermod -aG docker $USER) 
########################################
(newgrp docker) && (continue)
#######################################
(su -l ${USER}) && (continue)
#######################################
#######################################
#######################################
#######################################
echo "###########b.sh########################"
#######################################
#######################################
#######################################
docker run docker/whalesay cowsay Hello-World!
########################################
sudo apt update && sudo apt upgrade -y
########################################
cd ~/micro
#########################################
./go.sh
#########################################
bashrcupdated=1
grep -Pzl '\nexport GOPATH=\$HOME/go\nexport PATH=\$GOPATH/bin:\$PATH\n' ~/.bashrc && bashrcupdated=0 || bashrcupdated=1

if [[ "$bashrcupdated" == "1" ]]; then
  echo 'export GOPATH=$HOME/go' >> ~/.bashrc
  echo 'export PATH=$GOPATH/bin:$PATH' >> ~/.bashrc
fi

source /etc/profile.d/Z99-go-1.13.sh
source ~/.bashrc
#############################################
cd ~/
#############################################
service docker start
#############################################
sudo systemctl --user enable docker
#############################################
sudo systemctl --user start docker
#############################################
sudo loginctl enable-linger $(whoami)
############################################
sleep 5
############################################
cd ~/
####################################################
git clone https://github.com/xcryptology/fabric-samples.git
########################################################
#Since Hyperledger Fabric is written in Go, you’ll need 
#to clone the forked repository to your $GOPATH/src 
#directory. If your $GOPATH has multiple path components, 
#then you will want to use the first one. There’s a little 
#bit of setup needed:
####################################################3
set -o errexit
# set -x
mydir=$(dirname $0)
####################################################
export PATH=~/fabric/samples/bin:$PATH
###############################################
cd ~/
###############################################
curl -sSL https://bit.ly/2ysbOFE | bash -s
################################################
cd ~/fabric-samples/test-network
####################################################
echo "Usage:"
echo "network.sh <Mode> [Flags]"
echo "<Mode>"
echo "- 'up' - bring up fabric orderer and peer nodes. No channel is created"
echo "- 'up createChannel' - bring up fabric network with one channel"
echo "- 'createChannel' - create and join a channel after the network is created"
echo "- 'deployCC' - deploy the fabcar chaincode on the channel"
echo "- 'down' - clear the network with docker-compose down"
echo "- 'restart' - restart the network"

echo "Flags:"
echo "-ca <use CAs> -  create Certificate Authorities to generate the crypto material"
echo "-c <channel name> - channel name to use (defaults to "mychannel")"
echo "-s <dbtype> - the database backend to use: goleveldb (default) or couchdb"
echo "-r <max retry> - CLI times out after certain number of attempts (defaults to 5)"
echo "-d <delay> - delay duration in seconds (defaults to 3)"
echo "-l <language> - the programming language of the chaincode to deploy: go (default), javascript, or java"
echo "-v <version>  - chaincode version. Must be a round number, 1, 2, 3, etc"
echo "-i <imagetag> - the tag to be used to launch the network (defaults to "latest")"
echo "-verbose - verbose mode"
echo "network.sh -h (print this message)"

echo "Possible Mode and flags"
echo "network.sh up -ca -c -r -d -s -i -verbose"
echo "network.sh up createChannel -ca -c -r -d -s -i -verbose"
echo "network.sh createChannel -c -r -d -verbose"
echo "network.sh deployCC -l -v -r -d -verbose"

echo "Taking all defaults:"
echo "network.sh up"

echo "Examples:"
echo "network.sh up createChannel -ca -c mychannel -s couchdb -i 2.0.0"
echo "network.sh createChannel -c channelName"
echo "network.sh deployCC -l javascript"


echo "After your test network is deployed, you can take some time to examine its components. Run the following command to list all of Docker containers that are running on your machine. You should see the three nodes that were created by the network.sh script:"
echo "docker ps -a"

echo "You can also use the channel flag to create a channel with custom name. As an example, the following command would create a channel named channel1:"
echo "./network.sh createChannel -c channel1"

echo "If you want to bring up the network and create a channel in a single step, you can use the up and createChannel modes together:"
echo "./network.sh up createChannel"
##############################################
echo "./network.sh up createChannel -c channel01"
#######################################
#######################################
#######################################
#######################################
echo "###########c.sh########################"
#######################################
#######################################
#######################################
#######################################
sudo apt install debootstrap
#######################################
mkdir /tmp/bionic-lxd
sudo debootstrap bionic /tmp/bionic-lxd
########################################
sudo chroot /tmp/bionic-lxd
wget -qO- https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
echo 'deb https://deb.nodesource.com/node_8.x sid main' > /etc/apt/sources.list.d/nodesource.list
echo 'deb-src https://deb.nodesource.com/node_8.x sid main' >> /etc/apt/sources.list.d/nodesource.list
exit

sudo tar -cvzf rootfs.tar.gz -C /tmp/bionic-lxd .




