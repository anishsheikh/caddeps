#!/bin/sh
echo "Cad tools installation dependencies beta for RHEL 9"
echo "installing dependencies give root password or execute as sudo or root"
echo "Redhat LSB isn not available in standard RHEL repo "
echo "Installing EPEL and GhettoForge repo"
echo "Read More about EPEL in https://docs.fedoraproject.org/en-US/epel/"
echo "Read more about GhettoForge in http://ghettoforge.org/index.php/Main_Page"
echo "The RPM resources are provided under same license they were distubute"
echo "in the CentOS repo"

sudo subscription-manager repos --enable codeready-builder-for-rhel-9-$(arch)-rpms
sudo dnf install -y \
https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm

sudo dnf --nogpg install -y \
https://mirror.ghettoforge.org/distributions/gf/gf-release-latest.gf.el9.noarch.rpm



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
sudo dnf install mesa-libglapi.x86_64 mesa-libglapi.i686 -y
sudo dnf install glibc.x86_64 glibc.i686 -y
sudo dnf install compat-openssl11.x86_64 compat-openssl11.i686 -y
sudo dnf install ncurses-libs.x86_64 ncurses-libs.i686 -y
sudo dnf install apr-util -y
sudo dnf install glibc-devel.i686 glibc-devel -y 
sudo dnf install readline.x86_64 readline.i686 -y

 # Compatiblity library for some eda tools
 # For older GUIs (e.g. Stratus)
sudo rpm -Uvh ./libpng12-1.2.57-5.el8.i686.rpm
sudo rpm -Uvh ./libpng12-1.2.57-5.el8.x86_64.rpm
sudo rpm -Uvh ./compat-libstdc++-33-3.2.3-72.el7.x86_64.rpm
sudo rpm -Uvh ./compat-db-headers-4.7.25-28.el7.noarch.rpm
sudo rpm -Uvh ./compat-db47-4.7.25-28.el7.x86_64.rpm
sudo rpm -Uvh ./compat-openssl10-1.0.2o-3.el8.x86_64.rpm
sudo rpm -Uvh ./compat-openssl10-1.0.2o-3.el8.i686.rpm


echo "checking symlinks"
echo "some symlinks already existing is normal"
sudo ln -s /usr/bin/mawk /bin/awk
sudo ln -s /usr/bin/basename /bin/basename
sudo ln -s /lib/libncursesw.so.6 /lib/libtermcap.so.2
sudo ln -s /bin/gunzip /bin/uncompress
sudo ln -s /usr/lib/libcrypto.so.1.1 /usr/lib/libcrypto.so.6
sudo ln -s /usr/lib64/libncursesw.so.6 /usr/lib64/libtermcap.so.2
sudo ln -s /usr/lib64/libcrypto.so.1.1 /usr/lib64/libcrypto.so.6
sudo ln -s /lib64/libreadline.so /lib64/libreadline.so.5
sudo ln -s /lib/libreadline.so /lib/libreadline.so.5
sudo ln -s /usr/lib64/libhistory.so /usr/lib64/libhistory.so.5
sudo ln -s /usr/lib/libhistory.so /usr/lib/libhistory.so.5
sudo ln -s /usr/lib/libdl.so.2 /lib/libdl.so
sudo ln -s /usr/lib64/libdl.so.2 /lib64/libdl.so

echo "installing more dependencies"

  #PART2
sudo yum install -y epel-release
sudo yum install -y git octave jq

  # Python
sudo yum install -y python3 python3-tkinter python3-pip
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



  # QT
sudo yum install -y qtcreator
sudo ln -s /usr/bin/qmake-qt5 /usr/bin/qmake



echo " Most of the dependencies that were needed are installed "
echo "***************A simple shell script with love by Anish**"



