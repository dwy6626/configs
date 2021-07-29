# De-Wei Ye's Config

## Setup List

- [ ] iTerm2, import config in UI
- [ ] Karabiner-elements, puts the `karabiner` folder to `~/.config/.`
- [ ] homebrew
- [ ] VSCode, command line: https://code.visualstudio.com/docs/setup/mac
- [ ] gpg
- [ ] gitconfig to `~/.`
- [ ] [add ssh key to github](#ssh-key-gen)
- [ ] zsh + zim + powerlevel10k, put to  `~/.`: https://dwye.dev/post/zsh-zim-powerlevel10k/

### Secrets (in 1Password)

- `~/.ssh/config`
- git: `user.signingkey`

### Tools

- thefuck
- tldr

### Git commit with gpg verification

```
brew install gnupg pinentry-mac
echo "no-tty" > ~/.gnupg/gpg.conf
echo "pinentry-program /usr/local/bin/pinentry-mac" > ~/.gnupg/gpg-agent.conf

killall gpg-agent
```

test:

```
echo "test" | gpg --clearsign
```

### SSH key-gen

```
ssh-keygen -C "david@dwye.dev"
```

and press return, return ...

- add to github: https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account

```
cat ~/.ssh/id_rsa.pub
```

and paste to the github settings

### zsh Theme

```
echo "zmodule romkatv/powerlevel10k" >> ~/.zimrc
zimfw install
```
