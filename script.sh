#!/bin/bash
pwd=$(pwd)

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cd /home/$USER/.oh-my-zsh/plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions

cd /home/$USER/.oh-my-zsh/themes/
git clone https://github.com/romkatv/powerlevel10k.git

cd $pwd
cp zshrc ~/.zshrc

source ~/.zshrc
