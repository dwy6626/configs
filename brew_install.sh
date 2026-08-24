#!/bin/bash

args=(
    # essentials
    watch
    wget
    # gpg
    gnupg
    pinentry-mac
    delta
    # tools
    thefuck
    zoxide
    tldr
    httpie
    htop
    # dev
    pipx
    lazygit
    k9s
)

brew install ${args[@]}
