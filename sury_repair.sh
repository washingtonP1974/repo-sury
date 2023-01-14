#!/bin/sh
set -e

rm -f /usr/share/keyrings/deb.sury.org-php.gpg
rm -f /etc/apt/sources.list.d/php.list

apt-get update
apt-get -y install apt-transport-https ca-certificates curl
curl -sSLo /etc/apt/trusted.gpg.d/sury-php.gpg https://packages.sury.org/php/apt.gpg
echo "deb https://packages.sury.org/php/ bullseye main" > /etc/apt/sources.list.d/sury-php.list
apt-get update
