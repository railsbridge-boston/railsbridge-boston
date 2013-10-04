# Install Ruby on Windows

Installing Ruby and Rails on Windows is easy thanks to the RailsBridge Virtual Machine. 
This setup will give you Ruby, Rails, Git and the Bash shell. Let's get started.

Make sure you have performed the [pre-workshop steps](/pre_workshop).

## Step 1.

Launch the Git Shell. You can find a shortcut on your Desktop (grey circle with a cat), 
or locate **Git Shell** in All Programs under GitHub. A new (mostly black) window will open. 

## Step 2.

Then type the following commands. Press ENTER after each command and wait for the operation to finish
before typing the next one.

```text
mkdir ~/Documents/railsbridge
cd ~/Documents/railsbridge
vagrant box add railsbridgebos http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-3.2-a.box
vagrant init railsbridgebos
vagrant up
vagrant ssh
```

If the process seems to hang after `vagrant up`, try hitting the ENTER key to get it going.

After typing the last command, here is what you should see (approximately):

```text
C:\Users\Diligent Student\Documents\railsbridge> vagrant init railsbridgebos

A `Vagrantfile` has been placed in this directory. You are now
ready to `vagrant up` your first virtual environment! Please read
the comments in the Vagrantfile as well as documentation on
`vagrantup.com` for more information on using Vagrant.
```

```text
C:\Users\Diligent Student\Documents\railsbridge> vagrant up

Bringing machine 'default' up with 'virtualbox' provider...
   ...many lines left out...
[default] -- /vagrant
```

```text
C:\Users\Diligent Student\Documents\railsbridge> vagrant ssh

Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic-pae i686)
   ...many lines left out...
vagrant@precise32:~$ 
```

## Step 3.

Leave this terminal window open on your computer.  To open an extra Terminal
(console) into the virtual machine, open another Git Shell window, then type:

```text
cd ~/Documents/railsbridge
vagrant ssh
```

Continue with the next step of the [Installfest](/installfest).

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
cd ~/Documents/railsbridge
vagrant up
vagrant ssh
```
