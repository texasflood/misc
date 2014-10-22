#! /bin/bash
clear
sudo apt-get install gfortran build-essential make cmake git mercurial liblapack-dev libatlas-base-dev libatlas-dev
#sudo apt-get install libarpack2 libarpack2-dev  # Used for large sparse eigenvalue problems check web page for full isntall
sudo git clone git://github.com/bulletphysics/bullet3 /opt/bullet3
cd /opt/bullet3 && sudo mkdir bullet-build && cd bullet-build
sudo cmake .. -G "Unix Makefiles" -DINSTALL_LIBS=ON -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=RelWithDebugInfo
sudo make -j4
sudo make install
sudo cp /opt/bullet3/bullet-build/Demos/OpenGL/libOpenGLSupport.so /usr/local/lib
hg clone https://texasflood@bitbucket.org/texasflood/evolutionaryrobotics ~/evolutionaryRobotics
git clone git://github.com/xianyi/OpenBLAS ~/Downloads/OpenBLAS
sudo mv ~/Downloads/OpenBLAS /opt
cd /opt/OpenBLAS
sudo make
sudo make install
wget http://sourceforge.net/projects/arma/files/armadillo-4.450.3.tar.gz -P ~/Downloads
cd ~/Downloads
sudo tar xvfz armadillo-4.450.3.tar.gz
sudo mv armadillo-4.450.3 /opt
cd /opt/OpenBLAS
sudo cp libopenblas* /usr/lib
cmake .
ech "^^^ Make sure the cmake output shows that it found LAPCK and OpenBLAS, if not delete CMakeCache.txt and run cmake again ^^^"
make
sudo make install

###################Using Simbody######################
#Get simbody as outlined on github
sudo update-alternatives --set liblapack.so.3gf /usr/lib/lapack/liblapack.so.3gf

