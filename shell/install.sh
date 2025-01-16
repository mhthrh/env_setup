#!/bin/bash
readonly repoPath="/Users/mohsentaheri/Documents/Golang/"


packages=(
curl
git
vim
htop
wget
snapd
net-tools
go
speedtest-cli
nload
    )


echo -e "\e[32m Updating and upgrading the system... \e[0m"
sudo apt update && sudo apt upgrade -y


checkPackage() {
 
  	for v in --version -v version
	do
        if eval "$1 $v" > /dev/null 2>&1; then
            echo -e "\e[32m $1 already exist, so it will not be installed.\e[0m"
  		 	return 0
        fi
    done 
    
    return 1
}


for pkg in "${packages[@]}"; do
    checkPackage "${pkg}"
      if [  "$?" -eq 1 ]; then
        echo -e "\e[31m ${pkg} is not installed. Installing...\e[0m"
          apt install -y "${pkg}"
      fi
done