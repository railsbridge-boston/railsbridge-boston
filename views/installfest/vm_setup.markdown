# Virtual Machine Setup

Windows and OS X users need to set up the virtual machine they [downloaded](/pre_workshop).  Linux and Chromebook users may skip this step.


## Setting up a workspace
Open the command line. See the [Using the Command Line](http://docs.railsbridgeboston.org/ruby/command_line), for a refresher on how to start the command line.  Windows users, be sure to use the Git shell you downloaded - Power Shell will not work.


Create a workspace directory for your Railsbridge tutorial.

Go to your home directory:

    `cd`

Make a new directory for the workshop:

   `mkdir workspace`

Move into that directory:

    `cd workspace`

This directory will be shared between the virtual machine and your computer. Like sharing files between two real computers with Dropbox or Google Docs, files need to be saved in a place that both computers can see. Save all your work in the hands-on exercises here so they can be run in the virtual machine.


## Set up the virtual machine

This is a one-time step to create the virtual machine for the workshop.

[Before the workshop](/pre_workshop), you downloaded railsbridgevm-2014-01.box, the RailsBridge virtual machine, and saved it in the Downloads folder. 

*If you were unable to download the vm ahead of time, we have copies on USB drives.*

In File Explorer or Finder, drag and drop railsbridgevm-2014-01.box from your downloads folder to your new workspace folder.  

Return to the command line window.  Type this:

    `vagrant box add railsbridgebox ./railsbridgevm-2014-01.box`

Then type:

    `vagrant init railsbridgebox`

Here is what you should see (approximately):
    <pre>
    [choi@mini rbb]$ vagrant init railsbridgebox
    A `Vagrantfile` has been placed in this directory. You are now
    ready to `vagrant up` your first virtual environment! Please read
    the comments in the Vagrantfile as well as documentation on
    `vagrantup.com` for more information on using Vagrant.
    </pre>

Sneak preview of the command line lesson!  Type this to list all the files you've made:
    `ls`

Look at the workspace folder in Finder or File Explorer. You'll notice it now contains a file called Vagrantfile.  This contains configuration information that Vagrant needs to start and connect to the new virtual machine.  We have to have a command line open and be in this folder when we start or connect to the vm so Vagrant can read the configuration information.

Leave this window open for the next step.

## Starting the Virtual Machine

The virtual machine has to be running in order to use it.  There are two ways to start it.


### Start and Connect Through The Commandline

If you closed your command line, open it again and type 
`cd workspace` 
to return to the workspace folder.  This folder contains the file Vagrantfile, which has the configuration settings needed to start the vm. 


From the command line type:

    **`vagrant up`**

It will do something like this:
    <pre>
    choi@mini rbb]$ vagrant up
    Bringing machine 'default' up with 'virtualbox' provider...
    [default] Importing base box 'railsbridgebox'...
    [default] Matching MAC address for NAT networking...
    [default] Setting the name of the VM...
    [default] Clearing any previously set forwarded ports...
    [default] Creating shared folders metadata...
    [default] Clearing any previously set network interfaces...
    [default] Preparing network interfaces based on configuration...
    [default] Forwarding ports...
    [default] -- 22 => 2222 (adapter 1)
    [default] -- 3000 => 3000 (adapter 1)
    [default] Booting VM...
    [default] Waiting for VM to boot. This can take a few minutes.
    [default] VM booted and ready for use!
    [default] Configuring and enabling network interfaces...
    [default] Mounting shared folders...
    [default] -- /vagrant
    </pre>


To use the virtual machine, you must connect to it.  From the command line, type  
**`vagrant ssh`** 
to connect to the virtual machine. 

You will see a welcome message something like this:
    <pre>
    [choi@mini rbb]$ vagrant ssh
    Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic-pae i686)
    * Documentation:  https://help.ubuntu.com/
    Welcome to the Railsbridge Boston virtual machine!

    ...

    Last login: Tue Aug 27 00:38:27 2013 from 10.0.2.2
    vagrant@precise32:~$ 
    </pre>


### Start and Connect Through VirtualBox

The easier way is through VirtualBox.  Start the VirtualBox application.  On Mac, go to Finder > Applications > Virtual Box.   On Windows, go to the Start menu.   A VirtualBox dashboard will open.  On the left you'll see an item called 'railsbridgebox', and the status 'Powered off'.  Select it and click the Start button. 

A command line window will open.  If it asks which OS to boot into, wait and let it accept the default.
When you're shown a login prompt, use the username 'vagrant' and password 'vagrant'.   

While you're using the VM, your keyboard and mouse clicks will be sent to this program.  This graphical interface is the most familiar way to use a program, but it can be hard to switch to other applications while it's running.  



## Disconnect from the virtual machine

When you're done working in the virtual machine, type `exit` to disconnect from the virtual machine.

To stop the virtual machine, type `vagrant halt` from the command line, or Machine > Close from the VirtualBox dashboard.  


## Reminders

* Run `vagrant halt` from the command line when you're done with the virtual machine.
* Run `vagrant up` from the command line to restart the machine after you've rebooted or halted it.
* Run `vagrant ssh` from the command line every time you connect to the virtual machine.
