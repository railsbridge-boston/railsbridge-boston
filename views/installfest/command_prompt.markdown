# Using the Command Prompt

There are three commands that we'll be using at a command prompt to navigate the filesystem on your computer:  

```text
ls
pwd
cd
```

`ls` lists the contents of a directory.  
`pwd` gives the full directory path to your current directory.  (It stands for "print working directory".)  
`cd` moves you into a new directory. (It stands for "change directory".)

Let's practice using these commands.  

## Open a command prompt

### OS X

You can find the Terminal application through Spotlight (click the magnifying
glass in the top right of the screen and start typing "Terminal"), 
or navigate to `Applications/Utilities/Terminal` in Finder.

If you installed Ruby with the Railsbridge Virtual Machine, your command
prompt should look like `vagrant@precise32:`.  If not, start up and enter the
virtual machine with the steps at the bottom of the [install 
instructions](install/osx).


### Windows

Launch the Git Shell and enter the Railsbridge Virtual Machine if it isn't
already open. Go back to the [Install Ruby on
Windows](install/windows) instructions if you need to see how to start Git
Shell and enter the Railsbridge Virtual Machine.


### Linux

* Ubuntu: Click the Ubuntu logo and start typing "Terminal".  
* Fedora: From the Main Menu bar select "Applications > System Tools > Terminal".


### Practice using `ls`, `pwd`, `cd`, and `man`

Type each of these commands and hit enter:

This lists all the files in your home directory (ls is short for 'list'):

```text
ls
```

You can see the list in a more detailed way with this command:

```text
ls -l
```

The `-l` is called a command flag or option. Many Unix commands have options.

Many Unix commands also come with on-line manuals, called *manpages* (short for
"manual pages"). To view the manpage for the `ls` command, type 

```text
man ls
```

You should see the manpage for `ls` appear on the screen. You can scroll
through it by pressing `f` and `b`, and then press `q` to quit.

The following command displays the full directory path to your current
directory, which is your home directory (pwd stands for Print Working
Directory):

```text
pwd
```

Once again, type `man pwd` to view the manpage.

Now you can change directories to the parent of the current directory.


```text
cd ..
```

`..` means "parent directory", so this command moved you up to the parent directory. 

This lists the contents of this parent directory:

```text
ls
```

You can return to your home directory with this command:

```text
cd ~
```

The tilde (`~`) is an abbreviation that points to your home directory. Type
`pwd` while you're here in your home directory to see what your home directory
looks like when it is spelled out.

### Tab Completion

Say you want to type `cd Documents` but you're too lazy to type out `Documents` every time.
You can use a feature of the command line called tab completion. Tab completion lets you type
part of the word and then press TAB to let the command line environment figure
out how to complete it.

So if you typed `cd Doc` and then pressed TAB, it would change your line to `cd
Documents` if there was actually a Documents subdirectory in your working
directory.


### Spaces in File and Folder Names

It's ok to include a space in a file or folder name, but it's a little tricky
on the command line.  The command line expects a space means the end of a name,
and you have to do extra work to show you mean a space.

Suppose you want to go to a folder called "My Files".

If you typed 

```text
cd My Files
```

You would get an error message that looks like this:

```text
bash: cd: My: No such file or directory
```

You need to a backslash before the space inside "My Files". This is called "escaping".
Space, backslash, and single and double quotes in filenames are all special and
need to be escaped. So the correct way to spell the command is this:

```text
cd My\ Files
```

### Command History

The command prompt also maintains a command history. You can use the up arrow
to cycle through old commands. Press ENTER to execute an old command you want to run again. 
Press CTRL-u to abort.

### Success!

You've practiced using `ls`, `pwd`, and `cd` to navigate your computer's
filesystem from the command prompt.


### Extra Credit 

Let's generate some ASCII art from the command line.

If you are in the Railsbridge Virtual Machine, install the `curl` program first with this command:

```text
sudo apt-get -y install curl 
```

You should already have `curl` if you are using Railsinstaller.

Now you can generate some ASCII art. Try this command:

```text
curl 'http://artii.herokuapp.com/make?text=I+love+ruby'
```

You should see output like this:

```text

vagrant@precise32:~/workspace$ curl 'http://artii.herokuapp.com/make?text=I+love+ruby'
  _____   _                             _           
 |_   _| | |                           | |          
   | |   | | _____   _____   _ __ _   _| |__  _   _ 
   | |   | |/ _ \ \ / / _ \ | '__| | | | '_ \| | | |
  _| |_  | | (_) \ V /  __/ | |  | |_| | |_) | |_| |
 |_____| |_|\___/ \_/ \___| |_|   \__,_|_.__/ \__, |
                                               __/ |
                                              |___/ vagrant@precise32:~/workspace$ 
```

Change the end of the command string to generate your own message.

### Extra Credit (Railsbridge Virtual Machine and Ubuntu only)

Wouldn't it be nerdy to be able to check local weather conditions from the command line? 

You can by installing a program called weather-utils. Type this command to install it

```text
sudo apt-get install weather-utils
```

Now you can check the weather with this command:

```text
weather BOS
```

Example output:

```text
vagrant@precise32:~/workspace$ weather BOS
Current conditions at Boston Logan International, MA (KBOS)
Last updated Oct 04, 2013 - 09:54 AM EDT / 2013.10.04 1354 UTC
Temperature: 66.0 F (18.9 C)
Relative Humidity: 56%
Wind: from the NNE (020 degrees) at 3 MPH (3 KT)
Sky conditions: overcast
```

[«Back](/installfest)
