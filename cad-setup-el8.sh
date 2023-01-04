#!/bin/sh
echo "Cad tools installation dependencies beta for RHEL 8"
echo "The RPM resources are provided under same license they were distubute"
echo "in the CentOS repo"
echo "Installing dependencies ..."
echo "Give root password or execute as sudo or root"
sudo dnf install libstdc++.so.6 -y
sudo dnf install redhat-lsb -y
sudo dnf install libXext.so.6 -y  
sudo dnf install libXtst.so.6 -y
sudo dnf install libXt.so.6 -y  
sudo dnf install libGLU.so.1 --setopt=protected_multilib=false  -y
sudo dnf install libelf.so.1 -y  
sudo dnf install libXrender.so.1 -y  
sudo dnf install libXp.so.6 -y  
sudo dnf install libXrandr.so.2 -y
sudo dnf install xorg-x11-fonts-ISO8859-1-75dpi.noarch xorg-x11-fonts-ISO8859-15-75dpi.noarch -y
sudo dnf install libXp -y  
sudo dnf install openmotif -y  
sudo dnf install libstdc++-devel.x86_64 libstdc++-devel.i686 -y  
sudo dnf install xterm -y
sudo dnf install ksh -y
sudo dnf install csh -y
sudo dnf install java-1.8.0-openjdk.x86_64 -y
sudo dnf install mesa-libglapi.x86_64 mesa-libglapi.i686 -y
sudo dnf install libnsl.i686 libnsl.x86_64 -y
sudo dnf install libXScrnSaver.i686 libXScrnSaver.x86_64 -y
sudo dnf install libcrypto.so.10 -y
sudo dnf install mesa-libglapi.x86_64 mesa-libglapi.i686 -y
sudo dnf install glibc.x86_64 glibc.i686 -y
sudo dnf install compat-openssl10.i686 compat-openssl10.x86_64 -y
sudo dnf install apr-util -y
sudo dnf install glibc-devel.i686 glibc-devel -y 
sudo dnf install ncurses-compat-libs.x86_64 ncurses-compat-libs.i686 -y
sudo dnf install openldap.x86_64 openldap.i686 -y
sudo dnf install xz.x86_64 xz-lzma-compat.x86_64 xz-libs.x86_64 xz-devel.x86_64 -y
sudo dnf install xz-devel.i686 xz-libs.i686 -y
sudo rpm -Uvh ./compat-db-headers-4.7.25-28.el7.noarch.rpm
sudo rpm -Uvh ./compat-db47-4.7.25-28.el7.x86_64.rpm
sudo rpm -Uvh ./compat-libstdc++-33-3.2.3-72.el7.x86_64.rpm
sudo rpm -Uvh ./compat-libstdc++-33-3.2.3-72.el7.i686.rpm


echo "checking symlinks"


sudo ln -s /usr/bin/mawk /bin/awk
sudo ln -s /usr/bin/basename /bin/basename
sudo ln -s /usr/lib/libncursesw.so.5.9 /lib/libtermcap.so.2
sudo ln -s /usr/lib/libstdc++-3-libc6.2-2-2.10.0.so /usr/lib/libstdc++-libc6.1-1.so.2
sudo ln -s /bin/gunzip /bin/uncompress
sudo ln -s /usr/lib/libcrypto.so.1.1 /usr/lib/libcrypto.so.6
sudo ln -s /usr/lib64/libncursesw.so.5.9 /lib/libtermcap.so.2
sudo ln -s /usr/lib64/libcrypto.so.1.1 /usr/lib64/libcrypto.so.6
sudo ln -s /usr/lib64/libreadline.so.7 /usr/lib64/libreadline.so.5
sudo ln -s /usr/lib/libreadline.so.7 /usr/lib/libreadline.so.5
sudo ln -s /usr/lib64/libhistory.so.7 /usr/lib64/libhistory.so.5
sudo ln -s /usr/lib/libhistory.so.7 /usr/lib/libhistory.so.5
sudo ln -s /usr/lib64/libdl.so.2 /lib64/libdl.so
sudo ln -s /usr/lib/libdl.so.2 /lib/libdl.so
sudo ln -s /usr/lib64/libssl.so.10 /usr/lib64/libssl.so.6
sudo ln -s /usr/lib/libssl.so.10 /usr/lib/libssl.so.6
sudo ln -s /usr/lib/libldap_r-2.4.so.2 /usr/lib/libldap_r-2.3.so.0
sudo ln -s /usr/lib64/libldap_r-2.4.so.2 /usr/lib64/libldap_r-2.3.so.0
sudo ln -s /lib/liblzma.so.5 /lib/liblzma.so.0
sudo ln -s /lib/liblzma.so.5 /lib/liblzma.so.0


echo "installing more dependencies"

  #PART2
sudo yum install -y epel-release
sudo yum install -y git octave jq

  # Python
sudo yum install -y python3 python3-tkinter python3-pip python2-pip python2-tkinter 
sudo pip3 install Pmw

  # Perl
sudo yum install -y perl perl-YAML perl-ExtUtils-MakeMaker
sudo yum install -y perl-XML-Simple

  # CAD tools and SW toolchains dependencies
sudo yum install -y xterm
sudo yum install -y csh ksh zsh tcl
sudo yum install -y glibc-devel glibc-devel.i686
sudo yum install -y glibc-static glibc-static.i686
sudo yum install -y mesa-libGL.i686 mesa-libGLU.i686
sudo yum install -y mesa-libGL mesa-libGLU
sudo yum install -y mesa-dri-drivers mesa-dri-drivers.i686
sudo yum install -y readline-devel readline-devel.i686
sudo yum install -y libXp libXp.i686
sudo yum install -y openmotif
sudo yum install -y ncurses
sudo yum install -y gdbm-devel gdbm-devel.i686
sudo yum install -y libSM libSM.i686
sudo yum install -y libXcursor libXcursor.i686
sudo yum install -y libXft libXft.i686
sudo yum install -y libXrandr libXrandr.i686
sudo yum install -y libXScrnSaver libXScrnSaver.i686
sudo yum install -y libmpc-devel
sudo yum install -y libmpc
sudo yum install -y nspr nspr.i686
sudo yum install -y nspr-devel nspr-devel.i686
sudo yum install -y tk tk-devel
sudo yum install -y Xvfb
sudo yum install -y dtc
sudo ln -s /lib64/libtiff.so.5 /lib64/libtiff.so.3
sudo ln -s /usr/lib64/libmpc.so.3 /usr/lib64/libmpc.so.2
sudo yum install -y bison

  # For older GUIs (e.g. Stratus)
sudo yum install -y libpng12 libpng12.i686

  # QT
sudo yum install -y qtcreator
sudo ln -s /usr/bin/qmake-qt5 /usr/bin/qmake

echo "some symlinks already existing is normal"
echo " Most of the dependencies that were needed are installed "
echo "***************A simple shell script with love by Anish**"

