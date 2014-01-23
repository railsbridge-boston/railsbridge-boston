# Install Ruby on Windows

Installing Ruby and Rails on Windows is easy thanks to the RailsBridge Virtual Machine. 
This setup will give you Ruby, Rails, Git and the Bash shell. Let's get started.

Make sure you have performed the [pre-workshop steps](/pre_workshop).

## Step 1.

Launch the Git Shell. You can find a shortcut on your Desktop (grey circle with a cat), 
or locate **Git Shell** in All Programs under GitHub. A new (mostly black) window will open. 

## Step 2.

Follow the instructions to [set up your virtual machine](/installfest/vm_setup).

## Step 3.

Leave this terminal window open on your computer.  To open an extra Terminal
(console) into the virtual machine, open another Git Shell window, then type:

```text
cd ~/Desktop/railsbridge
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
cd ~/Desktop/railsbridge
vagrant up
vagrant ssh
```

[« Back to Installfest](/installfest)
