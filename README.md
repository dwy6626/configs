# De-Wei Ye's Config

## Setup List

- [ ] iTerm2, import config in UI
- [ ] Karabiner-elements, puts the `karabiner` folder to `~/.config/.`
- [ ] homebrew, and run `./brew_install.sh`
- [ ] VSCode, command line: https://code.visualstudio.com/docs/setup/mac
- [ ] gpg
- [ ] gitconfig to `~/.` (or use config script to config each repo locally https://gist.github.com/dwy6626/ce6bd08aad6ce17d0d277f21ba2c6a3f)
- [ ] [add ssh key to github](#ssh-key-gen)
- [ ] zsh + zim + powerlevel10k

### Secrets (in 1Password)

- patched Monaco
- `~/.ssh/config`
- gpg private key

### zsh

https://dwye.dev/post/zsh-zim-powerlevel10k/

1. install zim:

```
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
```

2. replace `.zshrc`, `.zimrc` to  `~/.`
3. `zimfw install`

### Git commit with gpg verification

get gpg private key and passphrase in 1password

```bash
# brew install gnupg pinentry-mac

gpg --import ~/path/to/gpg_private_key
echo "no-tty" > ~/.gnupg/gpg.conf
echo "pinentry-program $(which pinentry-mac)" > ~/.gnupg/gpg-agent.conf

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
