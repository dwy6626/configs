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
    zoxide
    tldr
    httpie
    htop
    tig
    # dev
    pyenv
    pyenv-virtualenv
    pipx
    lazygit
    # k9s
)

brew install ${args[@]}
