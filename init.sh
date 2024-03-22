#!/bin/bash

# Change the default shell to zsh
chsh -s "$(which zsh)"

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Powerlevel10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Remove existing symbolic links and create new ones
rm -f ~/.bashrc ~/.zshrc ~/.vimrc ~/.tmux.conf ~/.p10k.zsh ~/.gitconfig
ln -s "$(pwd)/.bashrc" ~/.bashrc
ln -s "$(pwd)/.zshrc" ~/.zshrc
ln -s "$(pwd)/.vimrc" ~/.vimrc
ln -s "$(pwd)/.tmux.conf" ~/.tmux.conf
ln -s "$(pwd)/.p10k.zsh" ~/.p10k.zsh
ln -s "$(pwd)/.gitconfig" ~/.gitconfig

# Reload zsh to apply changes
exec zsh
