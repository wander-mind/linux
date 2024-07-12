## pacman

sudo pacman -S (install) -Ss (search) Si (+package name exact, gives detailed info for package) -U (build) -Rns (remove with non-conflicting dependancies) -Qdtq (find orphaned/unused packages) -R $(pacman -Qdtq) (Safely remove them)

### Main

- git man dosfstools cron htop vim nano fastfetch tldr base-devel go arch-wiki-docs arch-wiki-lite ufw reflector intel-ucode{or amd-ucode} linux-lts linux-lts-headers android-udev android-tools npm

### KDE

- kcalc gwenview partitionmanager kdenlive okular spectacle kdeconnect filelight kfind kcolorchooser yakuake kolourpaint kcharselect kmines akregator konversation ktouch kclock kmahjongg ksudoku merkuro

### Gnome

-

### Windows Software

- wine

### Other

- cmatrix neovim alacritty virtualbox dkms linux-headers qbittorrent mpv keepassxc libreoffice calibre gimp signal-desktop picard mkvtoolnix-gui mediainfo-gui retroarch steam 0ad ffmpegthumbs kitty yt-dlp power-profiles-daemon cdrdao telegram-desktop handbrake perl-rename dotnet-sdk veracrypt brasero p7zip unrar tar rsync exfat-utils fuse-exfat ntfs-3g flac curl wget jdk-openjdk awesome thunderbird

### Bluetooth

- sudo pacman -S bluez bluez-utils blueman
- sudo systemctl start bluetooth.service
- sudo systemctl enable bluetooth.service

### AI

Get ollama to run LLM's

- curl -fsSL https://ollama.com/install.sh | sh

The bin is located in: /usr/local/bin/ollama (this is if you want to delete the program, because when you curl, you bypass the package manager)

1. Here's a general guideline on how to uninstall it:

        Delete the Ollama binary:
        Use the rm command to remove the Ollama binary. For example:

        ```bash
        sudo rm /usr/local/bin/ollama
        ```

        If the script created a systemd service, disable and remove it:
        If the script created a systemd service for Ollama, you should disable and remove it using the following commands:

        ```bash
        sudo systemctl stop ollama
        sudo systemctl disable ollama
        sudo rm /etc/systemd/system/ollama.service
        sudo systemctl daemon-reload
        ```

        Remove any created user and group (if applicable):
        The script might have created a user and group named "ollama." You can remove them using the following commands:

        ```bash
        sudo userdel ollama
        sudo groupdel ollama
        ```

### VirtManager

0. VirtualBox - virtualbox dkms linux-headers

1. Install KVM packages

- sudo pacman -Syy
- sudo pacman -S archlinux-keyring
- sudo pacman -S qemu virt-manager virt-viewer dnsmasq vde2 bridge-utils openbsd-netcat dmidecode
- sudo pacman -S ebtables iptables

2. Install *libguestfs* on Arch Linux

*libguestfs* is a set of tools used to access and modify virtual machine (VM) disk images. You can use this for viewing and editing files inside guests, scripting changes to VMs, monitoring disk used/free statistics, creating guests, P2V, V2V, performing backup e.t.c

- sudo pacman -S libguestfs

3. Start KVM libvirt service

- sudo systemctl enable libvirtd.service
- sudo systemctl start libvirtd.service
- systemctl status libvirtd.service

4. Enable normal user account to use KVM

Since we want to use our standard Linux user account to manage KVM, let’s configure KVM to allow this.

- sudo vim /etc/libvirt/libvirtd.conf
    - unix_sock_group = "libvirt"
    - unix_sock_rw_perms = "0770"
- sudo usermod -a -G libvirt $(whoami)
- newgrp libvirt
- sudo systemctl restart libvirtd.service

5. Enable Nested Virtualization (Optional)

Nested Virtualization feature enables you to run Virtual Machines inside a VM. Enable Nested virtualization for kvm_intel / kvm_amd by enabling kernel module as shown.

-INTEL-
- sudo modprobe -r kvm_intel
- sudo modprobe kvm_intel nested=1

-AMD-
- sudo modprobe -r kvm_amd
- sudo modprobe kvm_amd nested=1

To make this configuration persistent,run:

- echo "options kvm-intel nested=1" | sudo tee /etc/modprobe.d/kvm-intel.conf

### LaTeX

- texlive-basic texlive-fontsrecommended texlive-latex texlive-latexrecommended texlive-mathscience texlive-latexextra texlive-pictures

## yay

yay -Ss (search) -S (install) -Syu (update yay and pacman) -Si (+package name exact, gives detailed info for package)

Change threads for compiling software:
- sudo vim /etc/makepkg.conf
> MAKEFLAGS="-j№№" # Number of threads to use when compiling, usualy set to that num -2 (for example 12 threads -j10).
- git clone htttps://aur.archlinux.org/yay.git
- cd git
- makepkg
- sudo pacman -U yay-12.3...x86_64.pkg.tar.zst

### yay -S:

- mullvad-vpn-bin brave-bin peazip-qt-bin viber vscodium-bin gnubg rubyripper tutanota-desktop-bin bottles drawio-desktop-bin shell-color-scripts downgrade timeshift preload{sudo systemctl enable preload && sudo systemctl start preload} vrms-arch-git classicube-bin android-studio balena-etcher

## After Arch Installation

- edit pacman config filelight

```bash
$ sudo vim /etc/pacman.conf
# Uncomment these lines:
Color
ParallelDownloads = 10
# Add this line to add the Pacman animation:
ILoveCandy
```

After you save the file, run `sudo pacman -Sy` to activate changes.

- Update pacman mirror list if you have slow speeds with the fastest servers avalable

```bash
$ sudo pacman -S reflector
$ sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak # Backup the default mirror list
$ sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist # Run this command to fetch the fastest 10 servers and add them to the mirror list
$ sudo pacman -Sy
```
