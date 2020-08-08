#!/bin/ksh
# This script is messy and not intended for others
# It is meant to be ran immediately after performing the base OpenBSD installation on *my* machine.

fw_update
echo "Create /etc/hostname.iwn0 with the following content followed by exit"
echo "join [ssid] wpakey [passphrase]"
echo "dhcp"
echo "inet6 autoconf"
ksh
pkill dhclient
sed -i 's/xconsole/#xconsole/' /etc/X11/xenodm/Xsetup_0
echo "keyboard.bell.volume=0" >> /etc/wsconsctl.conf
echo "keyboard.map+=\"keysym Caps_Lock = Control_L\"" >> /etc/wsconsctl.conf
echo "keyboard.encoding=no" >> /etc/wsconsctl.conf
echo 'permit nopass keepenv olav' > /etc/doas.conf
rcctl enable apmd
rcctl set apmd flags -A
rcctl start apmd
usermod -G staff olav
pkg_add chromium
