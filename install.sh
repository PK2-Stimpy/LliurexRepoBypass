#!/bin/bash
echo "Installing new mirror..."

. /etc/lsb-release
echo "Detected ubuntu version: $DISTRIB_CODENAME"

mv /etc/apt/sources.list data/sources.list.bak
cp data/sources-$DISTRIB_CODENAME.list /etc/apt/sources.list
apt update

echo "Adding universe repository..."
add-apt-repository universe

echo "Adding multiverse repository..."
add-apt-repository multiverse

echo "Updating..."

apt update

echo "Done installing new mirror!"