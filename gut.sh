#!/usr/bin/env bash

echo "  ▄████  █    ██ ▄▄▄█████▓   ▄▄▄█████▓▓█████   ██████ ▄▄▄█████▓  ██████ ";
echo " ██▒ ▀█▒ ██  ▓██▒▓  ██▒ ▓▒   ▓  ██▒ ▓▒▓█   ▀ ▒██    ▒ ▓  ██▒ ▓▒▒██    ▒ ";
echo "▒██░▄▄▄░▓██  ▒██░▒ ▓██░ ▒░   ▒ ▓██░ ▒░▒███   ░ ▓██▄   ▒ ▓██░ ▒░░ ▓██▄   ";
echo "░▓█  ██▓▓▓█  ░██░░ ▓██▓ ░    ░ ▓██▓ ░ ▒▓█  ▄   ▒   ██▒░ ▓██▓ ░   ▒   ██▒";
echo "░▒▓███▀▒▒▒█████▓   ▒██▒ ░      ▒██▒ ░ ░▒████▒▒██████▒▒  ▒██▒ ░ ▒██████▒▒";
echo " ░▒   ▒ ░▒▓▒ ▒ ▒   ▒ ░░        ▒ ░░   ░░ ▒░ ░▒ ▒▓▒ ▒ ░  ▒ ░░   ▒ ▒▓▒ ▒ ░";
echo "  ░   ░ ░░▒░ ░ ░     ░           ░     ░ ░  ░░ ░▒  ░ ░    ░    ░ ░▒  ░ ░";
echo "░ ░   ░  ░░░ ░ ░   ░           ░         ░   ░  ░  ░    ░      ░  ░  ░  ";
echo "      ░    ░                             ░  ░      ░                 ░  ";
echo "                                                                        ";

LANG="en_US.utf8"
GODOT_VERSION=3.2.2
GODOT_BIN=Godot_v${GODOT_VERSION}-stable_linux_headless.64
GODOT_ZIP=${GODOT_BIN}.zip
GODOT_URL=https://downloads.tuxfamily.org/godotengine/${GODOT_VERSION}/${GODOT_ZIP}

if [[ -z "${GITHUB_WORKSPACE}" ]]; then
  GITHUB_WORKSPACE=$PWD
fi

curl -s -S ${GODOT_URL} --output ${GODOT_ZIP}
unzip -q ${GODOT_ZIP}
chmod +x ${GODOT_BIN}
./${GODOT_BIN} -d -s --path $GITHUB_WORKSPACE addons/gut/gut_cmdln.gd -gdir=res://test -ginclude_subdirs -gexit
