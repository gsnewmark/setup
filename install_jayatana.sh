#!/bin/bash

# ----------------------------------------------
# Author: hanynowsky@gmail.com
# Before executing this script make sure
# you're in your home directory `cd $HOME`
#--------------------------------------------------

# -------------------------------------NOTICE------------
# APPLICABLE ONLY IN UBUNTU UNITY
# This script installs Jayatana for your JDKs
# It supposes you already have set your JAVA_HOME in ~/.bashrc
# You will be prompted to choose which JDK to set as Default
# (choose the corresponding index).
# In case you already installed jayatana and want to re-install,
# please uninstall then install again.
# ------------------------------------------------------

# -------------------------------------LICENSE--------------------
#Licensed under the GNU LGPL, Version 3.0 (the "License");
# you may not use this file except in compliance with the License
# ----------------------------------------------------------------

JDKPATH=`echo $JAVA_HOME | grep [^*]`
USERHOME=`echo $HOME`
JAYATANADD="http://java-swing-ayatana.googlecode.com/svn/tags/1.2.4/jayatana"

# INSTALL
INSTALLCOM () {
    cd $USERHOME
    sudo apt-get -y install openjdk-7-jdk libunity-dev libxt-dev gcc make ant subversion
    sudo update-java-alternatives -s java-1.7.0-openjdk-amd64
    svn checkout $JAYATANADD
    sudo ant install -buildfile $USERHOME/jayatana/build.xml -v
    sudo ant config -v
    sudo update-alternatives --config java
    sudo update-alternatives --config javac
    sudo ant install -Djava.home.7=/usr/lib/jvm/java-7-openjdk-amd64 -f $USERHOME/jayatana/build.xml -v -l $USERHOME/Desktop/jayatana-stall.log
    sudo ant config -Djava.home.7=$JDKPATH -f ~/jayatana/build.xml -v -l $USERHOME/Desktop/jayatana-stall.log
}

# UNINSTALL
UNINSTALLCOM (){
    cd $USERHOME
    sudo ant deinstall -buildfile $USERHOME/jayatana/build.xml -v
    sudo ant deconfig -buildfile $USERHOME/jayatana/build.xml -v
    sudo ant deconfig -Djava.home.7=$JDKPATH -f $USERHOME/jayatana/build.xml -v -l $USERHOME/Desktop/jayatana-stall.log
}

# DELETE Jayatana Folder created by subversion checkout
UNDIR() {
    cd $USERHOME
    read -p "Delete Jayatana Folder too? Enter ( y ) to delete or ( n ) otherwise : " choice
    if [ "$choice" = "y" ]; then mv $HOME/jayatana $HOME/.local/share/Trash/files/
    elif [ "$option" = "n" ]; then echo"Jayatana Folder is kept by $USER";
        echo "you can delete it later : ~/jayatana";
    else echo "Jayatana Folder is kept by $USER , you can delete it later : ~/jayatana";
    fi
}

# COMMON
COMMON() {
    echo "$JDKPATH : is your default JDK. Version: "
    echo `java -version`
}
eval COMMON;
read -p "Enter ( i ) to install or ( u ) to uninstall : " option
if [ "$option" = "i" ]; then eval INSTALLCOM
elif [ "$option" = "u" ]; then eval UNINSTALLCOM;eval UNDIR;
else echo "Aborted by $USER";
fi
exit 0;
