decrypt:
	ansible-vault decrypt vars/vault.yaml

encrypt:
	ansible-vault encrypt vars/vault.yaml

gitinit:
	@./git-init.sh
	@echo "precommit hook installed for ansible vault"
	@echo "don't forget to create a .vault-password too"