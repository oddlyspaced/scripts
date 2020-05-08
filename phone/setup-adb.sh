# !/bin/bash
# from https://raw.githubusercontent.com/akhilnarang/scripts/master/setup/arch-manjaro.sh
sudo pacman -S android-tools
echo "Setting up udev rules for adb!"
sudo curl --create-dirs -L -o /etc/udev/rules.d/51-android.rules -O -L https://raw.githubusercontent.com/M0Rf30/android-udev-rules/master/51-android.rules
sudo chmod 644 /etc/udev/rules.d/51-android.rules
sudo chown root /etc/udev/rules.d/51-android.rules
sudo udevadm control --reload-rules
echo "Done"
