#!/bin/bash

# Check if dpkg (Debian-based) is installed
if command -v dpkg &> /dev/null; then
    echo "Debian-based system (apt or dpkg)"
    # Install tmux, vim, zsh, fzf, curl
    sudo apt update
    sudo apt install -y tmux vim zsh fzf curl
    exit
fi

# Check if rpm (Red Hat-based) is installed
if command -v rpm &> /dev/null; then
    echo "Red Hat-based system (yum or rpm)"
    # Install tmux, vim, zsh, fzf, curl
    sudo yum update
    sudo yum install -y tmux vim zsh fzf curl
    exit
fi

# Check if pacman (Arch-based) is installed
if command -v pacman &> /dev/null; then
    echo "Arch-based system (pacman)"
    # Install tmux, vim, zsh, fzf, curl
    sudo pacman -Syu --noconfirm tmux vim zsh fzf curl
    exit
fi

# Check if apk (Alpine-based) is installed
if command -v apk &> /dev/null; then
    echo "Alpine-based system (apk)"
    # Install tmux, vim, zsh, fzf, curl
    sudo apk update
    sudo apk add --no-cache tmux vim zsh fzf curl
    exit
fi

echo "Unknown package manager"

