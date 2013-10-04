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
virtual machine with the steps at the bottom of the [pre-workshop
instructions](/pre_workshop).


### Windows

Launch the Git Shell if it isn't already open. Go back to to Step 1 of [Install
Ruby on Windows](install/windows) if you need to launch it again. 


### Linux

* Ubuntu: Click the Ubuntu logo and start typing "Terminal".  
* Fedora: From the Main Menu bar select "Applications > System Tools > Terminal".


### Practice using `ls`, `pwd`, and `cd`

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

This displays the full directory path to your current directory, which is your home directory (pwd stands for Print Working Directory):

```text
pwd
```

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

### Tab Completion

You can use Tab to auto-complete directory and file names. 

So from inside the root directory, if you type `cd U` and hit Tab, the command
prompt will auto-complete the directory name as much as it can.  

### Spaces in File and Folder Names

It's ok to include a space in a file or folder name, but it's a little tricky
on the command line.  The command line expects a space means the end of a name,
and you have to do extra work to show you mean a space.

Suppose you want to go to a folder called "My Files".

- The easiest way: type the beginning of the name and hit Tab for auto-complete.

```text
cd My<TAB>
```

- You can put the name inside double quotes or single quotes.

```text
cd "My Files"
cd 'My Files'
```

- You can put a backslash before the space. This is called "escaping".
It turns any character that the command line treats as special back into the
un-special character. Space, backslash, and single and double quotes are all
special, and you'd write them as \ , \\, \', and \".

```text
cd My\ Files
```

- You can use a '\*', the wildcard character. Type in the beginning or end of
  the name and a \* where it should fill in the blank, and hit Enter. If more
  than one file matches that pattern, you may get an error,
or the command line may pick the first match.

```text
cd My\*Files
cd My\*les
cd My\*
```


### Command History

The command prompt also maintains a command history. You can use the up arrow
to cycle through old commands.

### Success!

You've practiced using `ls`, `pwd`, and `cd` to navigate your computer's
filesystem from the command prompt.

[«Back](/installfest)
