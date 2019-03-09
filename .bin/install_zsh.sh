
echo "Installing zsh"
sudo yum install zsh

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if [ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting ]; then
	git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
fi

if [ ! -d $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions ]; then
	git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
fi

sudo grep 'source $HOME/.bin/.zshrc' ~/.zshrc
if grep -q "source $HOME/.bin/.zshrc" ~/.zshrc; 
	then
		echo "zshrc already patched."	
	else
		echo "Patching zshrc"
		echo "source $HOME/.bin/.zshrc" >> ~/.zshrc
fi

echo "Installing powerlevel"
if [ ! -d ~/.oh-my-zsh/custom/themes/powerlevel9k/ ]; then
	# git clone https://github.com/bhilburn/powerlevel9k.git ~/powerlevel9k
	cd ~
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
fi

echo "Installing powerline fonts"
cd ~
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh

echo "Getting dircolors"

if [ ! -d $HOME/.bin/.dircolors ]; then
	git clone https://github.com/seebi/dircolors-solarized.git ~/.bin/.dircolors
fi

if [ ! -d $HOME/.bin/dracula ]; then
	git clone https://github.com/dracula/zsh.git ~/.bin/dracula/
fi

echo "Linking dracula theme to oh-my-zsh"
ln -s ~/.bin/dracula/dracula.zsh-theme ~/.oh-my-zsh/themes/dracula.zsh-theme

# konsoleprofile colors=ColorSchemeName

sudo usermod -s /bin/zsh pmac

cd ~
