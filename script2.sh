#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sathvik (24MIP10171)
# Software: Linux Kernel

# The kernel itself isn't a typical "package," so we check for kernel headers or tools
PACKAGE="kernel-devel" 

echo "Checking installation status for: $PACKAGE"
echo "------------------------------------------"

# Check if package is installed (works for RPM-based systems like Fedora/CentOS)
# For Ubuntu/Debian, you would use: dpkg -l $PACKAGE
if rpm -q $PACKAGE &>/dev/null; then
    echo "Status: $PACKAGE is installed."
    rpm -qi $PACKAGE | grep -E 'Version|License|Summary' 
else
    echo "Status: $PACKAGE is NOT installed."
    echo "Tip: You can install it using 'sudo dnf install $PACKAGE'"
fi

echo "------------------------------------------"

# Case statement for philosophy notes [cite: 126, 141]
case $PACKAGE in
    "kernel-devel")
        echo "Philosophy: The Linux Kernel is the heart of open-source, providing the bridge between hardware and human intent." ;;
    "httpd")
        echo "Philosophy: Apache: the web server that built the open internet."[cite: 143];;
    "mysql")
        echo "Philosophy: MySQL: open source at the heart of millions of apps."[cite: 144];;
    *)
        echo "Philosophy: Open source software empowers users through transparency and collaboration." ;;
esac
