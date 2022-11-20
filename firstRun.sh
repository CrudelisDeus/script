sudo apt-get update
# Ubuntu apt-get upgrade auto restart services
sudo echo "\$nrconf{restart} = 'a'" >> /etc/needrestart/needrestart.conf
sudo apt-get upgrade -y

# Set timezone
sudo timedatectl set-timezone Europe/Kiev

# Install standart program
sudo apt install net-tools

# Added work environment
sudo mkdir /data
sudo chmod -R 777 /data

clear