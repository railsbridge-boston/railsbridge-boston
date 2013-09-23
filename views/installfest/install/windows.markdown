# Install Ruby on Windows

Installing Ruby and Rails on Windows is easy thanks to the RailsBridge Virtual Machine. 
This setup will give you Ruby, Rails, Git and the Bash shell. Let's get started.

## Step 1.

Download [VirtualBox](https://www.virtualbox.org/). On the Downloads page, download 
"VirtualBox *version_number* for Windows hosts". Run the installer after it downloads.

## Step 2.

Download [Vagrant](http://www.vagrantup.com/). On the Downloads page, 
click the first version at the top, then download the **msi** file next to the Windows Flag.
Run the installer after it downloads.

## Step 3.

Download the Railsbridge Boston Virtual Machine (370MB) with this command:

    vagrant box add railsbridgebos http://66.228.42.213/railsbridgebos-3.2.box

## Step 4.

Change directory into a workspace for your Railsbridge tutorial, and start your machine!

```
vagrant init railsbridgebos
vagrant up
vagrant ssh
```

Here is what you should see (approximately):

C:\Users\Diligent Student\workspace> vagrant init railsbridgebos
A `Vagrantfile` has been placed in this directory. You are now
ready to `vagrant up` your first virtual environment! Please read
the comments in the Vagrantfile as well as documentation on
`vagrantup.com` for more information on using Vagrant.

C:\Users\Diligent Student\workspace> vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
*many lines left out*
[default] -- /vagrant

C:\Users\Diligent Student\workspace> vagrant ssh
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
```

The ~/workspace directory from inside the VM shell is identical to the host
directory of your VM workspace.

When you start your Rails app, visit http://localhost:3000 in your web browser.

Last login: Tue Aug 27 00:38:27 2013 from 10.0.2.2
vagrant@precise32:~$ 

## Step 5.

Do your stuff.
## Step 6.

Logout and stop your machine with

```
logout
vagrant halt
```
