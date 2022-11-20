sudo apt-get update
# Ubuntu apt-get upgrade auto restart services
sudo echo "\$nrconf{restart} = 'a'" >> /etc/needrestart/needrestart.conf
sudo apt-get upgrade -y

# Set timezone
sudo timedatectl set-timezone Europe/Kiev

# Install standart program
sudo apt install net-tools

# Install docker
sudo apt-get install apt-transport-https ca-certificates curl \
    gnupg lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y
sudo usermod -aG docker $USER
clear