echo -e "\033[32mPlease log in as root\033[0m" 
su
echo -e "\033[35mPreparing to Update...\033[0m"
pkg update
echo -e "\033[32mDone\033[0m"
echo -e "\033[35mUpgrading...\033[0m"
pkg upgrade
echo -e "\033[32mDone\033[0m"

echo -e "\033[35mInstalling packages...\033[0m"
pkg install vim curl git neofetch htop clang llvm python3 gcc tmux tilix firefox thunderbird drm-kmod
echo -e "\033[32mDone\033[0m"

echo -e "\033[35mInstalling desktop...\033[0m"
pkg install xorg gnome
echo -e "\033[32mDone\033[0m"

pw groupmod video -m nkabbara

echo -e "\033[33mConfigure fstab\033[0m"
echo -e "\033[33mproc /proc procfs rw 0 0\033[0m"

echo -e "\033[33mConfiguring boot\033[0m"
echo -e autoboot_delay=2 >> /boot/loader.conf
echo -e snd_hda_load="YES" >> /boot/loader.conf
echo -e mixer enable="YES" >> /boot/loader.conf
echo -e ums_load="YES" >> /boot/loader.conf
echo -e boot_mute="YES" >> /boot/loader.conf
echo -e "\033[32mDone\033[0m"

echo -e "\033[33mConfiguring rc\033[0m"
echo -e dbus_enable="YES" >> /etc/rc.conf
echo -e gdm_enable="YES" >> /etc/rc.conf
echo -e "\033[32mDone\033[0m"
