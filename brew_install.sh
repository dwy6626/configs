#!/bin/bash

args=(
    # essentials
    watch
    wget
    # gpg
    gnupg
    pinentry-mac
    # tools
    thefuck
    autojump
    tldr
    httpie
    htop
    tig
    # dev
    pyenv
    pyenv-virtualenv
    pipx
)

brew install ${args[@]}
