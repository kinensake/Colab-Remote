#! /bin/bash
read -p "Input superuser password: " supass
printf "Cho\` xiu\' coi... (Trong luc\' cho\` vao\` day mak dua top: https://surviv.io/) " >&2
{
useradd -m Aevuive
adduser Aevuive sudo
echo "Aevuive:$supass" | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
apt-get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
dpkg --install chrome-remote-desktop_current_amd64.deb
apt install --assume-yes --fix-broken
DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'  
apt install --assume-yes xscreensaver
systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg --install google-chrome-stable_current_amd64.deb
apt install --assume-yes --fix-broken
apt install nautilus nano -y
apt install nomacs -y
apt install vlc -y
sed -i 's/geteuid/getppid/' /usr/bin/vlc
adduser Aevuive chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Complete " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless  Copy Command Of Debian Linux And Paste Down\n'
read -p "Paste Here: " CRP
su - Aevuive -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n\n'
if apt-get upgrade &> /dev/null
then
    printf "\n\nUpgrade Completed " >&2
else
    printf "\n\nError Occured " >&2
fi
