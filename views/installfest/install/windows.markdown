# Install Ruby on Windows

Installing Ruby and Rails on Windows is easy thanks to the RailsBridge Virtual Machine. 
This setup will give you Ruby, Rails, Git and the Bash shell. Let's get started.

## Step 1.

Download
[VirtualBox](http://download.virtualbox.org/virtualbox/4.2.18/VirtualBox-4.2.18-88781-Win.exe)
for Windows. Run the installer after it downloads.

## Step 2.

Download [Vagrant](http://files.vagrantup.com/packages/db8e7a9c79b23264da129f55cf8569167fc22415/Vagrant_1.3.3.msi)
for Windows. Run the installer after it downloads.

## Step 3.

Download the
[Railsbridge Virtual
Machine](http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-3.2.box).
Just leave it in your Downloads folder.

## Step 4.

Download [GitHub for Windows](http://windows.github.com/).
Run the installer after it downloads.
If prompted during installation, install the Microsoft .NET framework.
If GitHub for Windows launches after installation, quit the application.

## Step 5.

Launch the `Git Shell`. You can find a shortcut on your Desktop (grey circle with a cat), 
or locate **Git Shell** in All Programs under GitHub. A new (mostly black) window will open. Create a workspace directory for your Railsbridge work.

```text
cd ..
mkdir workspace
cd workspace
```

You're ready to start your machine!

```text
vagrant init railsbridgebos
vagrant up
vagrant ssh
```

Here is what you should see (approximately):

```text
C:\Users\Diligent Student\Documents\workspace> vagrant init railsbridgebos

A `Vagrantfile` has been placed in this directory. You are now
ready to `vagrant up` your first virtual environment! Please read
the comments in the Vagrantfile as well as documentation on
`vagrantup.com` for more information on using Vagrant.
```

```text
C:\Users\Diligent Student\Documents\workspace> vagrant up

Bringing machine 'default' up with 'virtualbox' provider...
   ...many lines left out...
[default] -- /vagrant
```

```text
C:\Users\Diligent Student\Documents\workspace> vagrant ssh

Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic-pae i686)
   ...many lines left out...
vagrant@precise32:~$ 
```

## Step 5.

Continue with the next step of the Installfest.

## Turning the virtual machine off and on

When you're done for the day, logout and stop your machine:

```text
logout
vagrant halt
```

And close the Git Shell window.

When you want to use the virtual machine (tomorrow morning, for instance),
start your machine. Launch Git Shell, then:

```text
cd ../workspace
vagrant up
vagrant ssh
```
