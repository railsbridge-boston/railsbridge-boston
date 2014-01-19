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

1. Download [VirtualBox](http://download.virtualbox.org/virtualbox/4.2.18/VirtualBox-4.2.18-88780-OSX.dmg) for Mac. Run the installer after it downloads.  Start VirtualBox to ensure it works on your system.

2. Download [Vagrant](http://files.vagrantup.com/packages/db8e7a9c79b23264da129f55cf8569167fc22415/Vagrant-1.3.3.dmg) for Mac. Run the installer after it downloads.

3. Download the Railsbridge Boston Virtual Machine.  From a web browser, visit [http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-4.0.box](http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-4.0.box) and save the file.   We'll [set up the virtual machine](/vm_setup) together on Friday. 

4. Download and install the [SublimeText 2](http://www.sublimetext.com/2) text editor.



### Alternative Methods for Older OSX

If your Mac has an operating system older than 10.6, or VirtualBox does not work for you, you can install Ruby and various tools directly into your computer. The easiest way to do this is with RailsInstaller.


#### RailsInstaller

1. Download Railsinstaller from the <a href="http://railsinstaller.org" target="_blank">RailsInstaller</a> webpage. Run the installer to confirm it runs. 
   Don't worry about watching the video. Just leave the download in your Downloads folder.

#### Xcode
If you you have an older Mac and cannot run RailsInstaller, get Xcode and ask for help at the installfest.  Xcode is a very large download, so be sure you get it before the workshop.

1. Go to the [Apple Developer Center](https://developer.apple.com/downloads), and click Register. Fill out the first page with your account information. The second page is a developer survey, which you can skip. Just go to the bottom and click "Continue".

2. Once you have confirmed your developer account, you can download [Xcode 3.1.4](http://adcdownload.apple.com/Developer_Tools/xcode_3.1.4_developer_tools/xcode314_2809_developerdvd.dmg). If that link doesn't work, go to the [downloads page](https://developer.apple.com/downloads) and search for "Xcode 3.1.4"

3. Download and install the [SublimeText 2](http://www.sublimetext.com/2) text editor.


## <a name="windows">Windows</a>

Windows is a different kind of operating system, so you will have to use a virtual machine. In particular, it doesn't have the same kind of command prompt. Since we are going to start and access the virtual machine by running Vagrant in a command prompt, we'll fix this by installing GitHub for Windows, which comes with an OS X and Linux-like "shell". You don't need to use the actual Github for Windows app in the workshop.

1. Download [VirtualBox](http://download.virtualbox.org/virtualbox/4.2.18/VirtualBox-4.2.18-88781-Win.exe) for Windows. Run the installer after it downloads. Start VirtualBox after installation to ensure that it launches.  You can quit once it starts.

2. Download [Vagrant](http://files.vagrantup.com/packages/db8e7a9c79b23264da129f55cf8569167fc22415/Vagrant_1.3.3.msi) for Windows. Run the installer after it downloads. Agree to restart the computer if you're prompted to do so.

3. Download [GitHub for Windows](http://windows.github.com/) and run the installer. If prompted during installation, install the Microsoft .NET framework. If GitHub for Windows automatically launches after installation, quit the application.

4. Download and install the [SublimeText 2](http://www.sublimetext.com/2) text editor.

5. Download the Railsbridge Boston Virtual Machine.  From a web browser, visit [http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-4.0.box](http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-4.0.box) and save the file.   We'll [set up the virtual machine](/vm_setup) together on Friday. 


## <a name="linux">Linux</a>

First, check whether Ruby is already installed.  At a command prompt, type
`ruby -v`
If Ruby is installed, you'll see something like
<pre>ruby 2.0.0p353 (2013-11-22 revision 43784)</pre>

If Ruby isn't installed, [install it with rvm](https://www.ruby-lang.org/en/installation) or your preferred package manager, and come to the installfest.

2. Download and install the [SublimeText 2](http://www.sublimetext.com/2) text editor.


## <a name="chromebook">Chromebook</a>
Ruby doesn't run on Chromebook.  [Nitrous.io](http://nitrous.io) will let you write and run Ruby online.  Sign up for a Nitrous.io account before the workshop. 
