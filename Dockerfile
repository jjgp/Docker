FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive
ENV TERM=xterm-256color

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    git \
    software-properties-common \
    wget

# locales
RUN apt-get install -y locales && locale-gen en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8

# oh my zsh
RUN apt-get install -y zsh
RUN wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | zsh || true

# sudo apt-get install mosh

# tmux

# sudo apt-get install tmux

# anaconda
# wget https://repo.continuum.io/archive/Anaconda2-5.0.1-Linux-x86_64.sh

# sudo apt-get install python-software-properties

# vundle & vim
# .vimrc

# ycm

# sudo apt-get install build-essential cmake clang
# sudo apt-get install python-dev python3-dev
# ./install.py --clang-completer --system-libclang

# dotfiles

# .gitconfig, .zshrc

WORKDIR /root
ENTRYPOINT zsh
