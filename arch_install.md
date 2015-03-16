#set locale
'''nano /etc/locale.gen'''
en_US.UTF-8 UTF-8  
zh_CN.GB18030 GB18030  
zh_CN.GBK GBK  
zh_CN.UTF-8 UTF-8  
zh_CN GB2312 

'''locale-gen'''

'''echo "LANG=en_US.UTF-8" > /etc/locale.conf'''

#set network

#set diskpart

pacstraps /mnt base base-devel


#drivers 
sound
''' pacman -S dislog alsa alsa-utils r8168 wpa_supplicant '''

ohmyzsh
'''pacman -S zsh'''
'''curl -L http://install.ohmyz.sh | sh'''

video card 
'''pacman -S mesa-dri xf86-video-intel bumblebee nvidia opencl-nvidia opencl-headers bbswitch'''

xorg X11
'''pacman -S xorg-xinit xorg-utils xorg-server-utils'''

touchpad
'''pacman -S xf86-input-synaptics'''

openbox&
'''pacman -S openbox slim tint2 feh gnome-terminal obconf obmenu flashplayer ntfs-3g volwheel'''

#backup office pkg 
comm -23 <(pacman -Qeq|sort) <(pacman -Qmq|sort) > /tmp/pkglist

#install backup pkg
pacman -S $(< pkglist)

#miss multi display screen
#miss volume control
#miss system monitor