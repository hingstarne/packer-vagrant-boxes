basebox
=======

Packer definitions for vagrant VirtualBox. This based on the excellent work of
Mischa Taylor https://github.com/misheska .

Getting Started
===============

A GNU Make makefile is provided to support automated builds.  It assumes
that both GNU Make and Packer are in the PATH.  Download and install
Packer from <http://www.packer.io/downloads.html>  

To build a VirtualBox box:
    
    # To get the latest debian release
    make variables

    # Find the template you want to build
    make list
    
    # Choose a definition, like 'virtualbox/debian-latest-x64'
    make virtualbox/debian-latest-x64
