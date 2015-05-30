# vagrant-aurelia
Get up and running with the new aurelia.io javascript framework with Vagrant (http://aurelia.io)

# Getting Started

This was built and tested using Vagrant 1.7.2 on a Windows 7 host and the latest MacOS host. I did not test this on a linux host machine.  There is a known issue with npm in vagrant on a windows host, in that it will fail when trying to create symlinks.  You have one of two options - either install aurelia in a non-shared folder, which kinda defeats the purpose of vagrant, OR apply a fix to your Vagrant installation. 

The npm install script would occasionally fail on the default 512mb memory configuration, so I upped it to 1024mb, and this seems to be enough to get things working.

You will need to edit the script.sh file and put in your github credentials, otherwise this installation will fail.

# MAC/Linux

This was actually pretty easy, and should work for everyone pretty much without a hitch, as the host system actually supports symlinks that are longer than 160 characters, etc.

# Windows

Requirements:
  You should run all vagrant commands from a cmd line with admistrative privileges.  If you decide not to, for whatever reason, you will need to uncomment a line in the script.sh that will force npm to install with --no-bin-links.  I wouldn't advise this, as you never know what else that might break down the road.
  
  If you are running Vagrant 1.7.2 or lower, you will need to apply a fix to your Vagant install in order for this to work.  Your install location may vary but in the default installation, you just need to modify the file: 
  
  C:\HashiCorp\Vagrant\embedded\gems\gems\vagrant-1.7.2\plugins\providers\virtualbox\driver\version_4_3.rb
  
 Between lines 495-510, replace the line 
 
 folder[:hostpath] 
 
 with 
 
 '\\\\?\\' + folder[:hostpath].gsub(/[\/\\]/,'\\')]
  
