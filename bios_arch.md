#Arch Linux "simple" installation guide

Each line of command needs to be run individually
Replace the [VARIABLE] with the actual thing requested inside the brackets

###If need to change the keyboard layouts

**Lists all avaliable layouts**
```bash
ls /usr/share/kbd/keymaps*.map.gz
```

**Load the layout**
```bash
loadkeys [LAYOUT]
```

**Verify boot mode** 
```bash
ls /sys/firmware/efi/efivars
```

**Check internet connection**
```bash
ping 8.8.8.8
```

**Updates system clock**
```bash
timedatectl set-ntp true
timedatectl status
```

###Partition disks

**List all disk**
```bash
fdisk -l
```

**Enter disk edit mode**
```bash
fdisk /dev/[DISK_NAME]
```

**Create partitions**
*Using 256M - 512M for /mnt/boot ; 150% of your RAM for SWAP ; +30G for /mnt ; the rest for /mnt/home*
*n -> p -> ENTER -> ENTER -> [PARTITION_SIZE]*

**Format disks**
*The following needs to be formated : /mnt/boot ; /mnt ; /mnt/home*
```bash
mkfs.ext4 /dev/[PARTITION]
```

**Mount file systems**
```bash
mount /dev/[PARTITION> /<PATH]
```

##Install Arch
```bash
pacstrap /mnt base base-devel
```

**Generate fstab**
```bash
genfstab -U /mnt >> /mnt/etc/fstab
```

**Change root**
```bash 
arch-chroot /mnt
```

**Set time zone** 
*Example: Brazil/Sao_Paulo*
```bash
ln -sf /usr/share/zoneinfo/[REGION]/[CITY] /etc/localtime
hwclock --systohc
```

###Localization
*Uncomment en_US.UTF-8 in locale-gen*
```bash
locale-gen
```

**Create LANG variable in /etc/locale.conf**
```bash
echo 'LANG=en_US.UTF-8' >> /etc/locale.conf
```

**Create hostname file**
```bash
echo '[HOSTNAME]' >> /etc/hostname
```

**Add IPs to hosts** 
*Add these lines to /etc/hosts*
```
127.0.0.1	localhost
::1		localhost
```

**Set root password**
```bash
passwd
```

###Install GRUB Bootloader
```bash
pacman -S grub
```

**Install GRUB into HDD**
```bash
grub-install --target=i386-pc /dev/[($1)]
```

**Generate GRUB config**
```bash
grub-mkconfig -o /boot/grub/grub.cfg
```

###Finalize
```bash
exit
umount -R /mnt
reboot
```