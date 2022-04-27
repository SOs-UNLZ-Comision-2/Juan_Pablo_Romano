#! /bin/bash

#---------------------------------------------------------------------------------------------------------------

# Script to make individual or full reports about the hardware use and stats of the server or desktop computer.
# It only works over Debian or derivate Linux distributions.
# License: MIT

#---------------------------------------------------------------------------------------------------------------

function instalaraplic # function to install libraries 
    {

        sudo apt-get install hwinfo
        sudo apt-get install pydf

    }

function informetotal # function to make a full report of the computer's hardware
    {

        lscpu
        lshw
        lshw -short
        hwinfo
        hwinfo -short
        lspci
        lsscsi
        lsusb
        lsusb -v
        inxi -fx
        lsblk
        df
        df -h
        pydf
        fdisk -l
        mount | column -t
        free -m
        dmidecode
        hdparm -i /dev/sda
        bash infohwd.sh
    
    }

function cpu1 # function to make a report over the cpu use and stats
    {
        
        echo '.......Informacion de CPU.......'
        echo 
        echo
        echo
        lscpu
        echo
        echo
        echo
        bash infohwd.sh
    
    }

function hard1 # function to make a report over the HDD use and stats
    {

        echo '.......Informacion de Hardware.......'
        echo
        echo
        echo
        lshw
        lshw -short
        hwinfo
        hwinfo -short
        echo
        echo
        bash infohwd.sh

    }

function pci # function to make a report over the PCI uses and stats
    {

        echo '.......Dispositivos PCI.......'
        echo
        echo
        echo
        lspci
        echo
        echo
        echo
        bash infohwd.sh

    }
