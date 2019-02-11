server:
	vault server -config=vault.conf &
unseal:
	@vault operator unseal $(KEY1) ||:
	@vault operator unseal $(KEY2) ||:
	@vault operator unseal $(KEY3) ||:
install:
	cp vault.service /etc/systemd/system/
	systemctl enable vault
enable:
	systemctl enable vault.service
start:
	systemctl start vault.service
