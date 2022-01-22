# Ansible Vault Starter

I created this as a simple starting point for Ansible projects that need to store secrets in a secure manner

## What's included

- Ansible Vault Starter
  - What's included
  - How do I use this?

## How do I use this?

1. Clone this repo, then kill the upstream link
   
   ```sh
   git clone https://github.com/poutler/ansible-vault-starter.git ./my-project
   cd ./my-project
   # Note that this doesn't remove history
   # you'll have to jump through some extra hoops for that
   git remote rm origin
   ```
2. Create a `vault-password` file at the root of the repo, and throw a password in it.
   
   ```sh
   echo "My Super Secret Password" >> ./vault-password
   ```
3. Setup the precommit hook

   ```sh
   make gitinit
   ```
4. Go do stuff that matters!