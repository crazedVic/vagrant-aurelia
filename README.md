# vagrant-aurelia
Get up and running with the new aurelia.io javascript framework with Vagrant (http://aurelia.io)

# Getting Started

This was built and tested using Vagrant 1.7.2 and VirtualBox 4.3.24 on a Windows 7 host and Vagrant 1.7.2, VirtualBox 4.3.16 on a MacOS 10.10.3 host. I did not test this on a Linux host machine.  There is a known issue with npm in vagrant on a windows host, in that it will fail when trying to create symlinks.  You have one of two options - either install aurelia in a non-shared folder, which kinda defeats the purpose of vagrant, OR apply a fix to your Vagrant installation. 

The npm install script would occasionally fail on the default 512mb memory configuration, so I upped it to 1024mb, and this seems to be enough to get things working.

****You will need to edit the script.sh file and put in your github credentials, otherwise this installation will fail.****

The script installs the Aurelia skeleton project into /vagrant/project, which maps to ./project in your vagrant folder right next to your VagrantFile and script.sh.  You can edit the skeleton via this folder on your host machine using your favorite editor. 

# MAC/Linux

This was actually pretty straightforward, and should work for everyone pretty much without a hitch, as the host system actually supports symlinks that are longer than 160 characters, etc.

# Windows

Requirements:
  You should run all vagrant commands from a cmd line with admistrative privileges.  If you decide not to, for whatever reason, you will need to uncomment a line in the script.sh that will force npm to install with --no-bin-links.  I wouldn't advise this, as you never know what else that might break down the road.
  
  If you are running Vagrant 1.7.2 or lower, you will need to apply a fix to your Vagant install in order for this to work.  Your install location may vary but in the default installation, you just need to modify the file: 
  
  C:\HashiCorp\Vagrant\embedded\gems\gems\vagrant-1.7.2\plugins\providers\virtualbox\driver\version_4_3.rb
  
 Between lines 495-510, replace the line 
 
 folder[:hostpath] 
 
 with 
 
 
 '\\\\\\\\?\\\\' + folder[:hostpath].gsub(/[\/\\\\]/,'\\\\')]
 
 Thanks to https://harvsworld.com/2015/how-to-fix-npm-install-errors-on-vagrant-on-windows-because-the-paths-are-too-long/ for this life saving tip!
  
# Final notes

  For convenience this vagrant machine has been configured to automatically launch **gulp watch** when you start an ssh session.  Also npm has been configured to install global modules to the vagrant home directly, just to keep everything nice and tidy.  So essentially you would just need to install the latest version of virtualbox, the latest version of vagrant, grab the VagrantFile and script.sh from here, throw them in a folder, open a console into that folder, and type **vagrant up**, let it do its thing, then type **vagrant ssh**, and then open a browser to **http://localhost:9000** on your host and you should see the aurelia skeleton in action.  
  
# Footnotes

  Useful utility to suppress tty errors: http://foo-o-rama.com/vagrant--stdin-is-not-a-tty--fix.html
  
  Getting started with aurelia.io: http://aurelia.io/get-started.html
  
  More about using netrc to store github credentials:  https://www.labkey.org/wiki/home/Documentation/page.view?name=netrc
  
  
  
