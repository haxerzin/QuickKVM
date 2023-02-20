<h1 align="center">
  <br>
  QuickKVM
  <br>
</h1>

<h3 align="center">Quick and Easy virt-manager setup for you in Ubuntu, PopOS & Ubuntu based Linux distributions</h3>

### Usage

#### One Liner

```shell
git clone --depth=1 https://github.com/haxerzin/QuickKVM && cd QuickKVM && bash qkvm.sh
````

#### Cassowary Setup

Please read the cassowary docs on full setup, the following command automates dependency installs on host system. Everything else must be done manually from here: <a href="https://github.com/casualsnek/cassowary/blob/main/docs/2-cassowary-install.md#on-linux-host" title="cassowary docs 2">Cassowary Docs - Part 2</a>.

<br><br>Run the following command from inside QuickKVM directory after running qkvm.sh AND after setting up Windows 10 guest system using the following docs: <a href="https://github.com/casualsnek/cassowary/blob/main/docs/1-virt-manager.md#download-windows-iso-image-and-virtio-drivers-for-windows" title="cassowary docs 1">Cassowary Docs - Part 1</a>

```shell
bash extra.sh
````

Please read the docs to make sure you don't mess it up.

### Support

If you know about python gui dev, translate this script into gui app for one click solution. Many newbs to Linux are confused on how to properly setup virt-manager virtual machines. I hope this script makes it easier.

### FAQ

1. Networking not working in Win10 Guest - Fix 1 - Try disabling VPN on host system
2. Networking not working in Win10 Guest - Fix 2 - Make sure you're using virtio drivers for correct windows version
3. Slow Win10 Guest - Fix - Make sure you've followed 'Cassowary Docs - Part 1' step-by-step. Should be after disabling the 2 lines from CPU XML file and enabling the other option to 'yes'.
