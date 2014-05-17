# Starting Vagrant 

We're doing all our work inside the Vagrant virtual machine. 
We need to start and connect to Vagrant before doing the exercises.

## 1. Open a terminal

Open up a terminal. 

### OS X

You can find the Terminal application through Spotlight (click the magnifying
glass in the top right of the screen and start typing "Terminal"), 
or navigate to `Applications/Utilities/Terminal` in Finder.


### Windows

Launch the Git Shell and enter the Railsbridge Virtual Machine if it isn't
already open. 


### Linux

* Ubuntu: Click the Ubuntu logo and start typing "Terminal".  
* Fedora: From the Main Menu bar select "Applications > System Tools > Terminal".



## 2. Change to the Workspace directory

We installed Vagrant in a new folder called "workspace" in your home directory.   When you ran 
`vagrant init`, it made a configuration file that's used for connecting. You have to be in the same directory to run 
and connect to vagrant. 

### Mac and Linux

Type this in the terminal:

```text
cd
cd workspace
```
This changes to your home directory, then to the workspace folder inside it. 

### Windows
The GitShell program sets your home directory to a different folder.  You have to navigate up to your home directory first, and then to workspace. 

Type this in the terminal:

```text
cd ..\..
cd workspace
```

## 3. Start Vagrant

Time to run our virtual machine.

Type this in the terminal:
`vagrant up`

You'll see something like:
Bringing machine 'default' up with 'virtualbox' provider...

If you left Vagrant running, you'll see:
```text
[default] VirtualBox VM is already running.
```
No worries!

If you see something else, try connecting in the next step. If it doesn't work, ask a TA for help.

## 4. Connect to Vagrant
Now that our comptuer-within-a-computer is running, we need to connect to it. 
This is like connecting to your work computer from home with PC Anywhere.

Type this in the terminal:
`vagrant ssh`

You'll see something like:

```text
Welcome to Ubuntu 14.04 LTS (GNU/Linux 3.13.0-24-generic i686)
```
... and a welcome message.  You may notice every line now starts with 

```text
RailsBridge-VM:~/workspace$ 
```
This is a reminder that you're connected to the virtual machine.  Anything you type will be run by the virtual machine.

## 5. Exiting Vagrant

When you're done using Vagrant, type ```exit``` .
You'll notice that it stops printing ```RailsBridge-VM:~/workspace$```

To stop Vagrant, type ```vagrant halt```.  