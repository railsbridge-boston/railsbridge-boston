# Virtual Machine Setup

## Setting up a workspace

Open Finder or File Explorer.  By default, they open to your home directory.  Create a folder named "workspace".  If you've attended our Ruby workshop before, you already have this folder.

This directory will be shared between the virtual machine and your computer. Like sharing files between two real computers with Dropbox or Google Docs, files need to be saved in a place that both your computer and the virtual machine can see. Save all your work in the hands-on exercises here so they can be run in the virtual machine.

## Set up the virtual machine

This is a one-time step to create the virtual machine for the workshop.

Before the workshop, you [downloaded](/downloads) the RailsBridge virtual machine image, and saved it in the Downloads folder.  Note that this may have been updated since our last workshop.

*If you were unable to download the vm ahead of time, we have copies on USB drives.*

In File Explorer or Finder, drag and drop "railsbridgevm-2014-09.box" from your downloads folder to your new workspace folder.

Open your computer's command line. See the [Command Line page](/installfest/command_line) for instructions on how to open it.

<!-- INSTRUCTORS: please remember to update all occurrences of the box -->
<!-- name below when the VM version changes. -->

Go to your home directory:

    `cd`

Move into your workspace directory:

    `cd workspace`

Type this:

    `vagrant box add railsbridge201409 ./railsbridgevm-2014-09.box`

Then type:

    `vagrant init railsbridge201409`

Here is what you should see (approximately):
    <pre>
    [~/workspace]$ vagrant init railsbridge201409
    A \`Vagrantfile\` has been placed in this directory. You are now
    ready to \`vagrant up\` your first virtual environment! Please read
    the comments in the Vagrantfile as well as documentation on
    \`vagrantup.com\` for more information on using Vagrant.
    </pre>

Sneak preview of the command line lesson!  Type this to list all the files you've made:
    `ls`

Look at the "workspace" folder in Finder or File Explorer. You'll notice it now contains a file called Vagrantfile.  This contains configuration information that Vagrant needs to start and connect to the new virtual machine.  We have to have a command line open and be in this folder when we start or connect to the vm so Vagrant can read the configuration information.

Leave this Finder or File Explorer window open for the next step.

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
    [~/workspace]$ vagrant up
    Bringing machine 'default' up with 'virtualbox' provider...
    [default] Importing base box 'railsbridge201409'...
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
    [~/workspace]$ vagrant ssh
    Welcome to Ubuntu 14.04 LTS (GNU/Linux 3.13.0-24-generic i686)
    * Documentation:  https://help.ubuntu.com/
    Welcome to the RailsBridge Boston virtual machine!
    ...
    RailsBridge-VM:~/workspace$ 
    </pre>

## Disconnect from the virtual machine

When you're done working in the virtual machine, type `exit` to disconnect from the virtual machine.

To stop the virtual machine, type `vagrant halt` from the command line.

## Turning the virtual machine off and on

When you're done for the day, logout and stop your machine:

    <pre>
    logout
    vagrant halt
    </pre>

And close the command line window.

When you want to use the virtual machine (tomorrow morning, for instance),
start your machine. Open the command line, then:

    <pre>
    cd ~/workspace
    vagrant up
    vagrant ssh
    </pre>

## Reminders

* Run `vagrant halt` from the command line when you're done with the virtual machine.
* Run `vagrant up` from the command line to restart the machine after you've rebooted or halted it.
* Run `vagrant ssh` from the command line every time you connect to the virtual machine.

To open an extra command line
on the virtual machine, open another command line window, then type:

    <pre>
    cd ~/workspace
    vagrant ssh
    </pre>



[« Back to Installfest](/installfest)
