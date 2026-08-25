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
    riggrep
    # dev
    gh
    delta
    pipx
    lazygit
    kubectl
    k9s
)

brew install ${args[@]}
