#!/usr/bin/bash
# Install required Cygwin packages for Ansible 

# Set an alias to use
cygget="/cygdrive/c/cygwin64/setup-x86_64.exe -q -P"

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

# Install Ansible
pip2 install ansible

# Install remote windows connection
pip2 install pywinrm
