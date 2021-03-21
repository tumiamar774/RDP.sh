#! /bin/bash
printf "Check Out My Name">&2
{
sudo useradd -m MOIN
sudo useradd MOIN sudo
echo 'MOIN:8426' | sudo chpasswd
sed -i 's/\/bin\/sh/\/bin\/bash/g' /etc/passwd
sudo apt_get update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo DEBIAN_FRONTEND=noninteractive \
apt install --assume-yes xfce4 desktop-base
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" >/etc/chrome-remote-desktop-session'
sudo apt install --assum-yes xscreensaver
sudo systemctl disable lightdm.service
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg --install google-chrome-stable_current_amd64.deb
sudo apt install --assum-yes --fix-broken
sudo apt install nautilus nano -y
sudo apt -y install obs-studio
sudo apt -y install firefox
sudo adduser MOIN chrome-remote-desktop
} &> /dev/null &&
printf "\nSetup Complited " >&2 ||
printf "\nError Occured " >&2
printf '\nCheck https://remotedesktop.google.com/headless Copy Command Of Debian Linux And Peste Down\n'
read -p "Peste Here: " CRP
su - MOIN -c """$CRP"""
printf 'Check https://remotedesktop.google.com/access/ \n'
print 'Your Sudo Passwd Is 8426 \n'
