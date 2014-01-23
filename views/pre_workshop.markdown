# Pre-workshop downloads

Please download the pre-requisite software onto your laptop computer before you attend the workshop. 
The network gets very, very slow when 90 people download simultaneously.  Downloading ahead of time means you will go home at a reasonable hour on Friday night.

Jump to:

* [OS X](#osx)
* [Windows](#windows)
* [Linux](#linux)
* [Chromebook](#chromebook)


## <a name="osx">OS X</a>

We recommend that you install a "virtual machine" containing all the software you need for the workshop. A virtual machine, or VM, keeps the needed software separate from the rest of your computer and can easily be removed if you only want to use it temporarily.

VirtualBox does not support OS X 10.5, so if you are using that version or an older one, try to follow the [OS X 10.5 installfest instructions].

1. Download [VirtualBox](http://download.virtualbox.org/virtualbox/4.2.18/VirtualBox-4.2.18-88780-OSX.dmg) for Mac. Run the installer after it downloads.  Start VirtualBox to ensure it works on your system.

2. Download [Vagrant](http://files.vagrantup.com/packages/db8e7a9c79b23264da129f55cf8569167fc22415/Vagrant-1.3.3.dmg) for Mac. Run the installer after it downloads.

3. Download the Railsbridge Boston Virtual Machine.  From a web browser, visit [http://downloads.railsbridge.org/railsbridgevm-2014-01.box](http://downloads.railsbridge.org/railsbridgevm-2014-01.box) and save the file.   We'll [set up the virtual machine](/installfest/vm_setup) together on Friday. 

4. Download and install the [SublimeText 2](http://www.sublimetext.com/2) text editor.

## <a name="windows">Windows</a>

Windows is a different kind of operating system, so you will have to use a virtual machine. In particular, it doesn't have the same kind of command line. Since we are going to start and access the virtual machine by running Vagrant from the command line, we'll fix this by installing GitHub for Windows, which comes with an OS X and Linux-like "shell". You don't need to use the actual Github for Windows app in the workshop.

1. Download [VirtualBox](http://download.virtualbox.org/virtualbox/4.2.18/VirtualBox-4.2.18-88781-Win.exe) for Windows. Run the installer after it downloads. Start VirtualBox after installation to ensure that it launches.  You can quit once it starts.

2. Download [Vagrant](http://files.vagrantup.com/packages/db8e7a9c79b23264da129f55cf8569167fc22415/Vagrant_1.3.3.msi) for Windows. Run the installer after it downloads. Agree to restart the computer if you're prompted to do so.

3. Download [GitHub for Windows](http://windows.github.com/) and run the installer. If prompted during installation, install the Microsoft .NET framework. If GitHub for Windows automatically launches after installation, quit the application.

4. Download the Railsbridge Boston Virtual Machine.  From a web browser, visit [http://downloads.railsbridge.org/railsbridgevm-2014-01.box](http://downloads.railsbridge.org/railsbridgevm-2014-01.box) and save the file.   We'll [set up the virtual machine](/installfest/vm_setup) together on Friday. 

5. Download and install the [SublimeText 2](http://www.sublimetext.com/2) text editor.


## <a name="linux">Linux</a>

First, check whether Ruby is already installed.  At the command line, type
`ruby -v`
If Ruby is installed, you'll see something like
<pre>ruby 2.0.0p353 (2013-11-22 revision 43784)</pre>

If Ruby isn't installed, [install it with rvm](https://www.ruby-lang.org/en/installation) or your preferred package manager.

1. If you can, look at the [installfest instructions for Linux](/installfest/install/linux) and download as many packages you can with your preferred package manager.

2. Download and install the [SublimeText 2](http://www.sublimetext.com/2) text editor.


## <a name="chromebook">Chromebook</a>
Ruby doesn't run on Chromebook.  [Nitrous.io](http://nitrous.io) will let you write and run Ruby online.  Sign up for a Nitrous.io account before the workshop. 
