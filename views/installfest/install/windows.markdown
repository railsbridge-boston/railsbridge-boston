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

    vagrant box add railsbridgebos http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-3.2.box

## Step 4.

Download [GitHub for Windows](http://windows.github.com/) (40MB). Run the installer after it downloads.
If prompted during installation, install the Microsoft .NET framework.

After installation, the GitHub for Windows program will automatically start.

```
TBD. 
You have to be signed in to do tools/options/default shell/Git Bash.
Either sign up for GitHub now (copy instructions re: name and email 
from later installfest section) or come back to GitHub for Windows setup
later after following the common path instructions.
```

1. Click `SIGN UP`.
1. Press SKIP twice (git config, find local repos).
1. Click "tools", then "options".
1. Under "default shell", click "Git Bash".
1. Click `UPDATE` at the bottom of the screen.
1. Close the GitHub for Windows application.

## Step 5.

Launch the `Git Shell`. You can find a shortcut on your Desktop (grey circle with a cat), 
or locate Git Shell in All Programs under GitHub. A new (mostly black) window will open.
*Is there a better way to get to "Documents"? 
This assumes we start in Documents/GitHub, the Git Shell default.*

```
cd ..
mkdir workspace
cd workspace
```

*Currently calling the directory 'workspace' to match the layout of the virtual machine.*

You're ready to start your machine!

```
vagrant init railsbridgebos
vagrant up
vagrant ssh
```

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

And close the Git Shell window.

When you want to use the virtual machine (tomorrow morning, for instance),
start your machine. Launch Git Shell, then:

```
cd ../workspace
vagrant up
vagrant ssh
```
