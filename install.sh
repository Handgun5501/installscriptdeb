echo "WARNING I AM NOT A CODER AND MADE THIS FOR MYSELF STILL WANT TO USE THE SCRIPT?"
echo "NO WARRENTY NO SUPPORT NOTHING YOU ARE RESPONSIBLE"
echo "THEN TYPE YES"
echo "ELSE DO CONTROL Z OR CLOSE TERMINAL"
read x
if [ "$x" = "yes"]
then
echo "brave soul, starting script now. You have be warned!"
fi





#updating:
echo "forced update"
sudo apt update
sudo apt upgrade
#install git

echo "INSTRUCTIONS"
echo "type yes to install type no or press enter to skip"

echo want to install git and curl?
read x
if [ "$x" = "yes" ]
then
  # do the dangerous stuff
echo "installing git"
sudo apt install git
echo "install curl"
sudo apt install curl
else
echo "curl and git not installed, installer may  not work!"
fi


#installing xfce
echo want to install xfce?
echo "WITHOUT XFCE YOU WILL NOT HAVE A DESKTOP"
read x
if [ "$x" = "yes" ]
then
sudo apt install xfce4
sudo apt install \
    libxfce4ui-utils \
    thunar \
    xfce4-appfinder \
    xfce4-panel \
    xfce4-session \
    xfce4-settings \
    xfce4-terminal \
    xfconf \
    xfdesktop4 \
    xfwm4
else 
echo "no desktop! user cancelled"
fi
#installing web browser
echo "want to install mullvad browser?"
read x
if [ "$x" = "yes" ]
then
# Download the Mullvad signing key
sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc

# Add the Mullvad repository server to apt
echo "deb [signed-by=/usr/share/keyrings/mullvad-keyring.asc arch=$( dpkg --print-architecture )] https://repository.mullvad.net/deb/stable $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/mullvad.list

# Install the package
sudo apt update
sudo apt install mullvad-browser

else
echo "no browser i hope that you know what you are doing...."
fi



echo "want to install signal desktop?"
read x
if [ "$x" = "yes" ]
then
#installing signal
echo "installing signal"
# NOTE: These instructions only work for 64-bit Debian-based
# Linux distributions such as Ubuntu, Mint etc.
# 1. Install our official public software signing key:
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# 2. Add our repository to your list of repositories:
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee /etc/apt/sources.list.d/signal-xenial.list

# 3. Update your package database and install Signal:
sudo apt update && sudo apt install signal-desktop
else
echo "signal desktop not installed"
fi


echo "want to install bitwarden?"
echo "flathub is needed and will be installed"
read x
if [ "$x" = "yes" ]
then
sudo apt install flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.bitwarden.desktop
else
echo "bitwarden and flathub not installed"
fi
#tuta install

echo "want to install tuta mail appimage?"
read x
if [ "$x" = "yes" ]
then
sudo wget https://app.tuta.com/desktop/tutanota-desktop-linux.AppImage
else
echo "tuta not installed"\
fi

fi


echo "THANKS FOR USING MY SCRIPT"

