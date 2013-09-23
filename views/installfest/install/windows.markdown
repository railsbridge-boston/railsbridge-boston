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
**TBD: What will we use for SSH? PuTTY? WindowsOpenSSH from 2004?

Here is what you should see (approximately):

```
C:\Users\Diligent Student\workspace> vagrant init railsbridgebos
A `Vagrantfile` has been placed in this directory. You are now
ready to `vagrant up` your first virtual environment! Please read
the comments in the Vagrantfile as well as documentation on
`vagrantup.com` for more information on using Vagrant.
```

```
C:\Users\Diligent Student\workspace> vagrant up
Bringing machine 'default' up with 'virtualbox' provider...
   ...many lines left out...
[default] -- /vagrant
```

```
C:\Users\Diligent Student\workspace> vagrant ssh
Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic-pae i686)
   ...many lines left out...
vagrant@precise32:~$ 
```

## Step 5.

Continue with the next step of the Installfest.

## Turning the virtual machine off and on

When you're done for the day, logout and stop your machine:

```
logout
vagrant halt
```

Next time you want to use the virtual machine (tomorrow morning, for instance),
start your machine:

```
vagrant up
vagrant ssh
```
