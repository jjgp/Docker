FROM ubuntu:16.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils \
    autojump \
    build-essential \
    clang \
    cmake \
    curl \
    git \
    locales \
    mosh \
    python-software-properties \
    python-dev \
    python3-dev \
    software-properties-common \
    tmux \
    vim \
    wget \
    zsh

# locales
RUN locale-gen en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8

# anaconda
RUN wget https://repo.continuum.io/archive/Anaconda2-5.0.1-Linux-x86_64.sh
RUN bash Anaconda2-5.0.1-Linux-x86_64.sh -b -p ~/anaconda
RUN rm Anaconda2-5.0.1-Linux-x86_64.sh

# oh my zsh
RUN wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | zsh || true

# vundle & vim
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
COPY .vimrc /root
RUN vim -c PlugInstall -c qall ; return 0

# dotfiles
COPY .gitconfig /root
COPY .zshrc /root

ENV TERM=xterm-256color

WORKDIR /root
ENTRYPOINT zsh
