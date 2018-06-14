#!/usr/bin/bash
# Install required Cygwin packages for Ansible on Windows
# Requires base Cygwin installation

# Set cygwin install alias
cygget="/cygdrive/c/cygwin64/setup-x86_64.exe -q -P"
echo "alias cyg-get=$cygget" >> $HOME/.bashrc

# Install helpers
$cygget vim
$cygget wget

# vim rc file
wget https://raw.githubusercontent.com/cukal/vimrc/master/vimrcs/basic.vim -O $HOME/.vimrc

# Install Ansible dependencies
$cygget cygwin32-gcc-g++
$cygget gcc-core
$cygget gcc-g++
$cygget git
$cygget libffi-devel
$cygget nano
$cygget openssl
$cygget openssl-devel
$cygget python-crypto
$cygget python2
$cygget python2-devel
$cygget python2-openssl
$cygget python2-pip
$cygget python2-setuptools
$cygget tree
$cygget make
$cygget libgssapi_krb5_2-src
$cygget libkrb5_3
$cygget libkrb5_3-src
$cygget libkrb5support0-src
$cygget krb5-workstation-src
$cygget krb5-workstation
$cygget krb5-pkinit

# Install Ansible
pip2 install ansible

# Install remote windows connection
pip2 install pywinrm
