#!/usr/bin/env bash
# installer for nightshadeNeon-webgen dependencies.
set -e
needed_pkgs=("pandoc" "zenity" "kdialog")
# check to ensure we're running on debian
if ! lsb_release -a 2>/dev/null | grep -q "Debian"; then
	echo "This installer is intended for Debian distros."; sleep 1
	exit 1
fi
for pkg in ${needed_pkgs[@]}; do
	echo "Installing $pkg..."; sleep 1
	sudo apt install "$pkg" -y
done
echo "Everything installed successfully. You can now use nightshadeNeon-webgen."; sleep 1
exit
