basebox
=======

Packer definitions for vagrant VirtualBox and VMware baseboxes. 
These are the vagrant baseboxes I use for my own personal projents. 
This project is run against a private Jenkins instance, and as template
definitions are added and/or updated, links to the generated images are
added below:

Current VMware Baseboxes
========================


Current VirtualBox Baseboxes
============================

Getting Started
===============

A GNU Make makefile is provided to support automated builds.  It assumes
that both GNU Make and Packer are in the PATH.  Download and install
Packer from <http://www.packer.io/downloads.html>  

To build a VirtualBox box:

    make list
    # Choose a definition, like 'virtualbox/misheska-ubuntu1204'
    make virtualbox/misheska-ubuntu1204

To build a VMware Fusion/VMware Workstation box:

    make list
    # Choose a definition, like 'misheska-centos64'
    make vmware/misheska-centos64
