#! /bin/bash
#if [[ $EUID -ne 0 ]]; then
#   echo "This script must be run as root" 1>&2
#   exit 1
#fi
clear
function append_rclocal {
    mv /etc/rc.local /etc/rc.local.old
    num=$(wc -l /etc/rc.local.old |awk '{print $1}')
    head -n $(expr $num - 1) /etc/rc.local.old > /etc/rc.local
    echo $1 >> /etc/rc.local
    tail -n 1  /etc/rc.local.old >> /etc/rc.local
    rm /etc/rc.local.old
}
echo "Ensure you have an internet connection"

while :
do
        echo "OpenCV? (y or n)"
        read OpenCV
        if [ "$OpenCV" = y ]; then
                OPENCV=true
                break
        elif [ "$OpenCV" = n ]; then
                OPENCV=false
                break
        fi
done

while :
do
        echo "LaTeX? (y or n)"
        read LaTeX
        if [ "$LaTeX" = y ]; then
                LATEX=true
                break
        elif [ "$LaTeX" = n ]; then
                LATEX=false
                break
        fi
done

while :
do
        echo "Skype? (y or n)"
        read Skype
        if [ "$Skype" = y ]; then
                SKYPE=true
                break
        elif [ "$Skype" = n ]; then
                SKYPE=false
                break
        fi
done
echo "Installing common programs"

while :
do
        echo "Arduino? (y or n)"
        read Arduino
        if [ "$Arduino" = y ]; then
                ARDUINO=true
                break
        elif [ "$Arduino" = n ]; then
                ARDUINO=false
                break
        fi
done

echo "Installing common programs"
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install python
sudo apt-get install python-dev
sudo apt-get install python3 python3-dev ruby ruby-dev libx11-dev libxt-dev libgtk2.0-dev  libncurses5  ncurses-dev
sudo apt-get install python-setuptools
sudo apt-get install mercurial meld tortoisehg
sudo easy_install keyring
sudo easy_install mercurial_keyring
wget -P ~/.hgext "http://bitbucket.org/Mekk/mercurial_keyring/raw/default/mercurial_keyring.py"
sudo apt-get install git
#sudo apt-get install okular
#Need to install gundo, automatic latex plugin, install vim from scratch, pathogen
#gcc/g++
sudo apt-get install openjdk-7-jdk
sudo apt-get install build-essential make cmake
sudo apt-get install ssh openssh-server
sudo apt-get install gparted
sudo apt-get install gnome-tweak-tool
sudo sed -i '/title_vertical_pad/s|value="[0-9]\{1,2\}"|value="0"|g' \
       /usr/share/themes/Adwaita/metacity-1/metacity-theme-3.xml
sudo sed -i -r 's|(<frame_geometry name="max")|\1 has_title="false"|' \
       /usr/share/themes/Adwaita/metacity-1/metacity-theme-3.xml

#LaTeX
if [ "$LATEX" = true ]; then
	#wget https://github.com/scottkosty/install-tl-ubuntu/raw/master/install-tl-ubuntu && chmod +x ./install-tl-ubuntu
	#sudo ./install-tl-ubuntu
    sudo apt-get install texlive-full
fi

#Chrome
cd /tmp
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get -f install

#OpenCV
if [ "$OPENCV" = true ]; then
	sudo apt-get install cmake git libgtk2.0-dev pkg-config python-dev python-numpy libavcodec-dev libavformat-dev libswscale-dev libjpeg-dev libpng-dev libtiff-dev
	cd ~/Downloads
	wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/2.4.9/opencv-2.4.9.zip
	unzip opencv*
	rm opencv*.zip
	cd opencv*
	mkdir build
	cd build
	cmake ..
	make
	sudo make install
	sudo ldconfig
fi

if [ "$ARDUINO" = true ]; then
	sudo apt-get install arduino arduino-core
fi

if [ "$SKYPE" = true ]; then
	sudo dpkg --add-architecture i386
	sudo apt-get update
    cd ~/Downloads
    sudo wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
    sudo dpkg -i skype-install.deb
	sudo apt-get -f install
fi

if [ "$STM32F4" = true ]; then
    cp 4* /etc/udev/rules.d/
    sudo service udev restart
    tar -xvjf gcc-arm-none-eabi-4_8-2014q2-20131204-linux.tar.bz2
    export PATH=$PATH:~/gcc-arm-none-eabi-4_8-2014q2/bin
    arm-none-eabi-gcc --version
    sudo apt-get install autoconf pkg-config libusb-1.0
    cd ~/Downloads
    git clone https://github.com/texane/stlink.git
    cd ~/Downloads/stlink
    ./autogen.sh
    ./configure
    make
    cd ~
    mkdir Development
    cd Development
    mkdir stm32 && cd stm32 && mkdir Projects && mkdir Documentation
    cd Documentation
    hg clone https://texasflood@bitbucket.org/texasflood/stm32f4library .
    cd ../Projects
    hg clone https://texasflood@bitbucket.org/texasflood/blinky
    hg clone https://texasflood@bitbucket.org/texasflood/processor
fi

#Rubyripper
#Dependencies
sudo apt-get install cd-discid cdparanoia flac lame mp3gain normalize-audio ruby-gnome2 ruby vorbisgain
sudo apt-get install libgettext-ruby1.8 make
cd /usr/local/src
ls -ld .
sudo chgrp $USER .
sudo chmod g+w .
wget http://rubyripper.googlecode.com/files/rubyripper-0.6.2.tar.bz2
sha1sum rubyripper-0.6.2.tar.bz2
tar xvjf rubyripper-0.6.2.tar.bz2
cd rubyripper-0.6.2
./configure --enable-lang-all --enable-gtk2 --enable-cli --prefix=/usr/local
sudo make install

#Project 
echo "Installing 4th year project stuff now"
sudo apt-get install gfortran liblapack-dev libatlas-base-dev libatlas-dev
git clone git://github.com/xianyi/OpenBLAS ~/Downloads/OpenBLAS
sudo mv ~/Downloads/OpenBLAS /opt
cd /opt/OpenBLAS
sudo make
sudo make install
wget http://sourceforge.net/projects/arma/files/armadillo-4.450.3.tar.gz -P ~/Downloads
cd ~/Downloads
tar xvfz armadillo-4.450.3.tar.gz
sudo mv armadillo-4.450.3 /opt
cd /opt/armadillo*
sudo cmake .
sudo make
sudo make install
cd /opt/OpenBLAS
sudo cp libopenblas* /usr/lib
cmake .

sudo apt-get install freeglut3-dev libxi-dev libxmu-dev
cd ~/Downloads
git clone git://github.com/simbody/simbody simbody-source
sudo mv simbody-source /opt
cd /opt/simbody-source
git checkout Simbody-3.4.1
sudo mkdir /opt/simbody-build-rel
cd /opt/simbody-build-rel
sudo cmake /opt/simbody-source -DCMAKE_INSTALL_PREFIX=/opt/simbody-build-rel -DCMAKE_BUILD_TYPE=Release
sudo make -j4
sudo ctest -j4
read -p "Have all tests passed?"
sudo make -j4 install

sudo mkdir /opt/simbody-build-deb
cd /opt/simbody-build-deb
sudo cmake /opt/simbody-source -DCMAKE_INSTALL_PREFIX=/opt/simbody-build-deb -DCMAKE_BUILD_TYPE=Debug
sudo make -j4
sudo ctest -j4
read -p "Have all tests passed?"
sudo make -j4 install

echo 'LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/simbody-build-rel/lib/x86_64-linux-gnu' >> ~/.bashrc
echo 'LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/simbody-build-deb/lib/x86_64-linux-gnu' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH' >> ~/.bashrc
#sudo update-alternatives --set liblapack.so.3gf /usr/lib/lapack/liblapack.so.3gf #Don't know if this is needed?

#Vim
cd ~/Downloads
hg clone https://vim.googlecode.com/hg/ vim
sudo mv vim /opt
cd /opt/vim/src
./configure \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-rubyinterp \
    --enable-cscope \
    --enable-gui=auto \
    --enable-gtk2-check \
    --enable-gnome-check \
    --with-features=huge \
    --enable-multibyte \
    --with-x \
    --with-compiledby="Senor QA <senor@qa>" \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu
sudo make
read -p "Check if vim has python"
sudo update-alternatives --install "/usr/bin/vim" "vim" "/usr/local/bin/vim" 1
sudo update-alternatives --install "/usr/bin/vi" "vi" "/usr/local/bin/vim" 1
sudo easy_install psutil #For atp_tex
read -p "Copy .vim and vimrc files and run :helptags ~/.vim/doc"

#vim terminal
echo "set editing-mode vi" >> ~/.inputrc
echo "set keymap vi-command" >> ~/.inputrc

#Extra stuff
#Replace chrome logo
sudo cp /usr/local/share/icons/hicolor/256x256/apps/google-chrome.png /usr/local/share/icons/hicolor/48x48/apps

#copy ubuntu fonts from packages, replace etc/shared/fonts and find ubuntu font packages and replace 
#http://noz3001.wordpress.com/2011/07/01/ubuntu-font-rendering-on-debian-wheezy/
#http://www.webupd8.org/2013/06/better-font-rendering-in-linux-with.html
echo "deb http://ppa.launchpad.net/no1wantdthisname/ppa/ubuntu precise main" | sudo tee /etc/apt/sources.list.d/infinality.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E985B27B
sudo apt-get update
sudo apt-get install fontconfig-infinality

#Add special config for touchpad gestures and controls in X11/xorg*/synaptics.conf
#Set vim as default editor over gedit
#some things in this script file assume debian and not ubuntu
# in gnome tweak tool turn off dynamic workspaces and set full path to always show
#in banshee, go to preferences and enable metadata and file syncing
cd ~
echo "Done"
