# Using the Command Prompt on Linux

There are three commands that we'll be using at a command prompt to navigate the filesystem on your computer:  

```text
ls
pwd
cd
```

`ls` lists the contents of a directory.  
`pwd` gives the full directory path to your current directory.  
`cd` moves you into a new directory (it stands for "change directory").  

Let's practice using these commands.  

### Open a command prompt
The Terminal application's location depends upon the flavor of Linux you
are running. If you cannot find it please consult with an instructor.

### Practice using `ls`, `pwd`, and `cd`

Type each of these commands and hit enter:

```text
ls
```
This lists all the files in your home directory.

```text
pwd
```
This displays the full directory path to your current directory, which is your home directory.

```text
cd /
```
This will change you into the `/` root directory.

```text
ls
```
This lists the contents of the `/` root directory.

```text
cd home
```
This will change you into the `home` subdirectory of the `/` root directory.

```text
ls
```
You should see a list of all the files in `/home`, including the directory for your username—your home directory.

```text
pwd
```
This displays the full directory path to your current directory, `/home`.

```text
cd ..
```
`..` means "parent directory", so this command moved you up to the parent directory. You were in `/home`, so now you are in `/`, the root directory.

```text
ls
```
This lists the contents of the root directory, confirming where you are.

### Tab Completion
You can use Tab to auto-complete directory and file names. 
So from inside the root directory, if you type cd U and hit Tab, the command prompt will auto-complete the directory 
name as much as it can.  

### Command History
The command prompt also maintains a command history. You can use the up arrow to cycle through old commands.

### Success!
You've practiced using `ls`, `pwd`, and `cd` to navigate your computer's filesystem from the command prompt.

[«Back](/ruby_from_scratch)
