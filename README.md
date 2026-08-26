# De-Wei Ye's Config

## Setup List

- [ ] Warp
- [ ] homebrew, and run `./brew_install.sh`
- [ ] Zed
- [ ] gpg
- [ ] gitconfig to `~/.` (or use config script to config each repo locally https://gist.github.com/dwy6626/ce6bd08aad6ce17d0d277f21ba2c6a3f)
- [ ] [add ssh key to github](#ssh-key-gen)

### Secrets (in 1Password)

- patched Monaco
- gpg private key

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

### Keyboard setup with VIA

https://www.caniusevia.com/

- prvs, play, next
- Insert -> Lpad
- cap -> hyper
  - 在 Special → Any 輸入： `HYPR(KC_NO)`
- Rcmd, ROpt, MO(1), RCtl
