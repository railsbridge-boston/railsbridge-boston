# Using the Command Prompt on Windows

There are three commands that we'll be using at a command prompt to navigate the filesystem on your computer:  

```text
dir
cd
```

`dir` lists the contents of a directory.  
`cd` moves you into a new directory (it stands for "change directory").  

Let's practice using these commands.  

### Open a command prompt
From the Start menu in the run box type `cmd` and run

![Windows Command Prompt](/images/installfest/windows_command_prompt.png)

### Practice using `dir`, and `cd`

Type each of these commands and hit enter:

```text
dir
```
This lists all the files in your home directory.

```text
cd \
```
This will change you into the `c:\` root directory.

```text
dir
```
This lists the contents of the `c:\` root directory.

```text
cd Users
```
This will change you into the `Users` subdirectory of the `c:\` root directory.

```text
dir
```
You should see a list of all the files in `c:\Users`, including the directory for your username—your home directory.

```text
cd ..
```
`..` means "parent directory", so this command moved you up to the parent directory. You were in `c:\Users`, so now you are in `c:\`, the root directory.

```text
dir
```
This lists the contents of the root directory, confirming where you are.

### Tab Completion
You can use Tab to auto-complete directory and file names. 
So from inside the root directory, if you type cd U and hit Tab, the command prompt will auto-complete the directory 
name as much as it can.  

### Command History
The command prompt also maintains a command history. You can use the up arrow to cycle through old commands.

### Success!
You've practiced using `dir` and `cd` to navigate your computer's filesystem from the command prompt.

[«Back](/ruby_from_scratch)
