# vagrant-aurelia
Get up and running with the new aurelia.io javascript framework with Vagrant

Getting Started

Things you should know:
This was built and tested using Vagrant 1.7.2 on a Windows 7 host and the latest MacOS host. I did not test this on a linux host machine.  There is a known issue with npm in vagrant on a windows host, in that it will fail when trying to create symlinks.  YOu have one of two options - either install aurelia in a non-shared folder, which kinda defeats the purpose of vagrant, OR apply a fix to your Vagrant installation. 

The npm install script would occasionally fail on the default 512mb memory configuration, so I upped it to 1024mb, and this seems to be enough to get things working.

MAC/Linux


Windows

Requirements:
  You should run all vagrant commands from a cmd line with admistrative privileges.
  
