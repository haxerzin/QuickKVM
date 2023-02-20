#!/usr/bin/env bash

sudo apt update && sudo apt install -y qemu-kvm bridge-utils virt-manager qemu virt-viewer spice-vdagent && \
sudo sed -i "s/#user = \"root\"/user = \"$(id -un)\"/g" /etc/libvirt/qemu.conf && \
sudo sed -i "s/#group = \"root\"/group = \"$(id -gn)\"/g" /etc/libvirt/qemu.conf && \
sudo usermod -a -G kvm $(id -un) && \
sudo usermod -a -G libvirt $(id -un) && \
sudo systemctl restart libvirtd && \
sudo ln -s /etc/apparmor.d/usr.sbin.libvirtd /etc/apparmor.d/disable/ && \
wget https://gitlab.com/apparmor/apparmor/-/blob/master/profiles/apparmor.d/usr.sbin.dnsmasq -O ~/usr.sbin.dnsmasq && \
sudo mv ~/usr.sbin.dnsmasq /etc/apparmor.d/ && \
sudo sed -i "s/\/usr\/libexec\/libvirt_leaseshelper m,/\/usr\/libexec\/libvirt_leaseshelper mr,/g" /etc/apparmor.d/usr.sbin.dnsmasq && \
mkdir -p ~/.config/libvirt && \
echo "uri_default = \"qemu:///system\"" >> ~/.config/libvirt/libvirt.conf && \
echo "Restart System & Then Run: extra.sh for cassowary support!"
