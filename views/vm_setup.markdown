# Virtual Machine Setup

Open a command prompt. See the [Using the Command Prompt](/command_prompt), for a refresher on how to start the command prompt.

Download the Railsbridge Boston Virtual Machine with this command:

    vagrant box add railsbridgebox http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-4.0.box

If you don't have Vagrant and VirtualBox working, just [download the image](http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-4.0.box). Then come to the installfest and we'll help you get up and running. Once Vagrant and VirtualBox are set up, you can run

    vagrant box add railsbridgebox file:///path/to/railsbridgevm-4.0.box

To add the image from the already downloaded file.

## Setting up a workspace

Create a workspace directory for your Railsbridge tutorial.

Go to your home directory:

    cd ~

Make a new directory for the workshop:

    mkdir workspace

Move into that directory:

    cd workspace

This directory will be shared between the virtual machine and your computer. Like sharing files between two real computers with Dropbox or Google Docs, files need to be saved in a place that both computers can see. Save all your work in the hands-on exercises here so they can be run in the virtual machine.

## Starting the Virtual Machine

Create and start your machine!

This is a one-time step to create the virtual machine for the workshop.

    vagrant init railsbridgebox

Here is what you should see (approximately):

```
[choi@mini rbb]$ vagrant init railsbridgebox
A `Vagrantfile` has been placed in this directory. You are now
ready to `vagrant up` your first virtual environment! Please read
the comments in the Vagrantfile as well as documentation on
`vagrantup.com` for more information on using Vagrant.
```

Start the virtual machine:

    vagrant up

It will do something like this:
```
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
```

Connect to the virtual machine and start a command prompt: 

    vagrant ssh

You will see:
```
[choi@mini rbb]$ vagrant ssh
Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic-pae i686)

 * Documentation:  https://help.ubuntu.com/

Welcome to the Railsbridge Boston virtual machine!

Everything you need for the Suggestotron tutorial is installed, including:

- Ruby 2.0
- Rails 4.0
- sqlite3
- heroku toolbelt
- git

Next steps:

1. Create a SSH key
2. Configure Git
3. Create a Heroku account

The ~/workspace directory from inside the VM shell is identical to the host
directory of your VM workspace.

When you start your Rails app, visit http://localhost:3000 in your web browser.

Last login: Tue Aug 27 00:38:27 2013 from 10.0.2.2
vagrant@precise32:~$ 
```

We will walk through creating an SSH key, configuring git, and creating a Heroku account in the workshop.  They are one-time steps.

Run 'vagrant up' every time you start the virtual machine.

Run 'vagrant ssh' every time you connect to the virtual machine.
