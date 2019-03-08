#!/bin/bash

source ~/dotfiles/lib_sh/echos.sh

bot "Hi! I'm going to install tooling and tweak your system settings. Here I go..."

#if [ $EUID -eq 0 ]; then
#	sudo "$0" "$@"
#	exit $?
#fi

#read -p 'Username: ' uservar
#read -sp 'Password: ' passvar

shopt -s expand_aliases
dfpath=/home/$(whoami)/dotfiles/
bot "dfpath = $dfpath"

if ! sudo grep -q "%wheel    ALL=(ALL) NOPASSWD: ALL ~/.sh.rc" "/etc/sudoers"; then
	bot "Sudoing..."
	sudo -v
	while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
	bot "Do you want me to setup this machine to allow you to run sudo without a password?\nPlease read here to see what I am doing:\nhttp://wiki.summercode.com/sudo_without_a_password_in_mac_os_x \n"

  	read -r -p "Make sudo passwordless? [y|N] " response

  	if [[ $response =~ (yes|y|Y) ]];then
      		echo '%wheel	ALL=(ALL) NOPASSWD: /home/$whoami/dotfiles/' | sudo tee /home/$(whoami)/dotfiles/df
		sudo chown root:root $dfpath/df
		sudo chmod 0440 $dfpath/df
		sudo visudo -c -f $dfpath/df
		
		if [ "$?" -eq "0" ]; then
			sudo mv $dfpath/df /etc/sudoers.d/
		fi
      		#sudo dscl . append /Groups/wheel GroupMembership $(whoami)
      		bot "You can now run sudo commands without password!"
  	fi
	#sudo visudo -c -q -f /home/$(whoami)/dotfiles/install.sh && \
	#sudo chmod 600 ~/scriptsudoers \
	#sudo cp ~scriptsudoers /etc/sudoers.d/scriptsudoer 

fi

#sudo yum install zsh

echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> .bashrc
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore

if [ ! -d $HOME/.cfg ]
then
	git clone --bare https://github.com/reformstudios/dotfiles.git $HOME/.cfg
fi

source .bashrc

config checkout -f
