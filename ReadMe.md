# Made With Arch

These are my dotfiles for Arch based distros. Still a WIP.

## TODO
[x] - Ansible Vault
[x] - bootstrap script
[ ] - Package Management
[ ] - gitconfig
[ ] - zsh setup
[ ] - DE config
  [ ] - Sway
  [ ] - Waybar
  [ ] - Wofi
  [ ] - Alacritty
[ ] - Generate new SSH key

## How do I use this?

To get started, run `bin/dot-bootstrap`. For now, all this does is install ansible. Eventually this will become a bit more robust, to kick off the initial play(s).

Once ansible is installed, you'll want to setup a vault password file. The default (which is gitignored) is to place this in `vault-password` at the root of the repo. 

```sh
echo "My Dope Password" > vault-password
```

There's also a neat precommit hook, to keep you from committing an unencrypted vault file. The makefile at the root provides a couple of tasks for encrypting and decrypting the vault.

```sh
sh bin/git-init
```

Since this is a dotfiles repo, you shouldn't need to tweak the inventory ( [hosts](./hosts) ), but you may want to look over the vars and playbook for necessary variables and secrets (vault items).

When everything looks good, run the dotfiles playbook.

```sh
ansible-playbook dotfiles.yml
```