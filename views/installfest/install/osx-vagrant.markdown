## Instructions for Mac OS X 10.5 Running Intel Processor

### 1. Download and Install VirtualBox

Go to the <a href="https://www.virtualbox.org/wiki/Downloads" target="_blank">VirtualBox</a>
website and click on *x86/amd64* to the right of **VirtualBox x.x.x for OS X hosts**. Save
the file.

+ Once the installer is downloaded, find the file and double-click it. This will
mount the virtual disk for the installer and open it in a window.  
+ Then double click the installer (looks like a package). This will open an installation wizard.  
+ Click *Continue* in the dialog, then *Continue* in the window, then *Install* on the
next screen.  
+ Enter your login password, then click *Install Software*. *If it doesn't accept your
password, call an instructor to help you.*
+ When it says *Installation Successful*, click *Close*, then drag the virtual disk 
to the Trash icon on your Dock to dismount it.

### 2. Download and Install Vagrant

Go to the <a href="http://downloads.vagrantup.com/tags/v1.2.7" target="_blank">Vagrant</a>
website and click on *Vagrant-1.2.7.dmg*. Save the file.

+ Once the installer is downloaded, find the file and double-click it. This will
mount the virtual disk for the installer and open it in a window.  
+ Double click the installer (looks like a package). This will open an 
installation wizard.  
+ Click *Continue*, *Continue*, and *Agree*, then click *Install*. Enter your
login password when asked and then click *Install Software*.
+ When it says *The installation was successful.*, click *Close* and drag the
virtual disk to the Trash.

### 3. Download the RailsBridge Boston virtual machine

Open a Terminal window. You can find the Terminal application through Spotlight
(click the magnifying glass in the top right of the screen and start typing
"Terminal"), or navigate to `Applications/Utilities/Terminal` in Finder.

Type the following command into the window:

`vagrant box add railsbridgebos http://66.228.42.213/railsbridgebos.box`

This will take a while...

