# Introduction to the command line

Decklin Foster  
Railsbridge Boston  
September 20, 2014

.notes (This is a note; it is not displayed on the slide.)
.notes Introduce yourself. Smile!

# Good morning!

This weekend, we will be using the command line to run Ruby while we learn to program.

It's probably a little different from how you're used to using your computer, but:

* It's powerful and fun

* If you're here, you are capable of picking it up!

# Read Along

Open this web page:

[http://docs.railsbridge.org/ruby/command_line](http://docs.railsbridge.org/ruby/command_line)

.notes TODO: This is is a link to railsbridge.org! We should probably merge and deploy the updated docs to railsbridgeboston.org, then change the link.

# Getting started

Let's all open up a terminal (command line window) to follow along, if you don't already have one open from installing stuff.

* **On Macs:** In Finder, start Applications > Utilities > Terminal  
  or find the Terminal application through Spotlight (click the magnifying glass in the top right of the screen and start typing 'Terminal')"
* **On Windows:** open up Git Shell from your desktop or All Programs menu.
* **On Linux:** press Ctrl + Alt + T or Find Terminal under the Accessories category of your applications menu.

# Terminology

* The window on your screen is called the **terminal**
* The program running inside it is called the **shell**

That's why the different apps (Mac/Linux vs. Windows) have different names. It's not an important distinction for us. We'll just refer to them together as the **command line**.

# How will this work?

When we have a command to run, I'll switch over to another desktop and type it in along with you.

Let's try it now so we can make sure the colors and fonts are readable!

.notes Test switching over to the terminal desktop here.
.notes Just increase the font size based on projector quality, don't run anything.

# Do you see what I see?

The last line "printed" to the terminal should look something like:

    railsbridge@MacBook-Air:~$

The thing that ends in `$` is the shell's *prompt*. It means it's waiting for your input.

Everything to the left of the `$` is just information. You can ignore it for now.

# Run a command!

Type this and press **Return** or **Enter**:

    ls

Everyone will see a different response.

# How did that work?

To explain this, let's try a second command.

Type this and press **Return** or **Enter**:

    pwd

# What did we just do?

* `ls` stands for **list**, and lists the contents of the current, or "working" directory
* `pwd` means "print working directory", and shows you where you are

The current directory is like where your Finder (Mac) or Explorer (Windows) window is, or what page you're on in a web browser.

You can navigate down (into a directory) or up (to the containing, or "parent" directory), or to a totally new directory.

# Try it!

When you ran `ls`, you probably saw `workspace`. That's a directory. (If you didn't, ask a TA!).

Type this and press **Return** or **Enter**:

    cd workspace

# In the workspace

From now on, I'll just say "run" for new commands.

Run:

    mkdir railsbridge_ruby
    ls

You should see the `railsbridge_ruby` both on your computer's desktop and in the output of `ls`.

# Errors

This brings up an important principle of many commands:

* If they succeed, they don't output anything.
* If they fail, then they output error messages. They also set an error code, which isn't displayed automatically.

I'll show you what happens if the directory already exists.

# Going to our new directory

Run:

    cd railsbridge_ruby
    ls

Nothing there yet!

# Creating a file

Let's create a file for later. Run:

    touch testing_the_command_line.txt
    ls

`touch` creates empty files. `ls` will display the file you just created.

# Going back up

Run:

    cd ..

`..` goes "up" one directory. Now we're back in `workspace`.

# Going back up again

Run the same thing again:

    cd ..

Now we're in your home directory, where you started.

# Repeating commands

We ran that command again by typing it in. A quicker way to do this is to press the *up arrow*.

Try pressing the *up* and *down arrows*. You can go through all the history of commands you have typed.

Run `cd ..` again this way. Run it a few more times.

Now we're outside of your home directory, so let's go back.

# Home

If you ever get lost, you can run:

    cd ~

or just

    cd

To get back to your home directory. This works from anywhere. `~` is the tilde key. On US keyboards, it's on the top left, next the 1 key, and you have to press `SHIFT` along with it.

# There and back again

Try it! Run:

    cd workspace/railsbridge_ruby
    ls
    cd ~

That's a forward slash. It separates directories.

# Files and Paths

The command line relies heavily on locating files via their names. This is called a *path*.

We used a path from your home directory to `railsbridge_ruby`: (this is not a command)

    workspace/railsbridge_ruby

# Files and Paths (continued)

We can also give this path to other commands. Run:

    ls workspace/railsbridge_ruby

A **path** allows you to give the command a file or directory without `cd`ing to it first.

# Commands vs. arguments

In this command:

    ls workspace/railsbridge_ruby

The first word, `ls` is the command. The computer finds the `ls` program and runs it.

The first word of a command is always the program.

Words after that are passed to the program as **arguments**. For `ls`, the arguments are what files or directories to list.

# Saving some typing

Another way to save typing is with **Tab-completion**. When you are typing in a path, press **TAB** and the shell will try to complete it for you.

Run the same command again, but this time, type `ls wor` and press **TAB**. Then type `r` and press **TAB** again.

In addition to reducing the amount you have to type, tab-completion lets you make sure a file or directory exists before you run a command on it.

# Completing commands

You can also complete the names of commands. Type `p` and press **TAB**. You will see something like:

    Display all 203 possibilities? (y or n)

Press 'y'.

How does it know when to complete a command and when to complete a path? The first word is always the command. Arguments are typically paths.

For paths, completion will also ask you when there are multiple files that start with what you've typed.

# How to get help

You can read the "manual pages" for commands with the `man` command. Run:

    man ls

Here `ls` is not a command, but the argument to the command `man`.

`man` will bring up a "pager" that takes up your whole terminal. Scroll with the arrow keys or spacebar, and press `q` to quit.

# Quiz time!

If you're feeling confident, try answering this. The command `rm` (short for **remove**) deletes files. The arguments are paths to files to delete. How could we clean up by deleting the `testing_the_command_line.txt` file?

# Answer

This will work:

    rm workspace/railsbridge_ruby/testing_the_command_line.txt

So will this:

    cd workspace
    cd railsbridge_ruby
    rm testing_the_command_line.txt

There are always lots of ways to do things.

# Absolute paths

What if I want a command to work from anywhere? A path to a file can also be *absolute*. Run:

    ls ~/workspace/railsbridge_ruby

What does `ls` actually see here? We can use `echo`, which is a command that just outputs ("echoes") its arguments:

    echo ~/workspace/railsbridge_ruby

You will see the full path, starting with `/home` or `/Users`. A path starting with a `/` works from anywhere. The shell expanded it for you before running `echo`.

# Output

You can create files by taking a command's output and **redirecting** it to a file instead of printing it to the screen. Run:

    ls -l > list.txt

To output a file, run:

    cat list.txt

(You may notice that `list.txt` contains itself!)

# The Zen of the Command line

Where does the name `cat` come from? This is a bit of obscure trivia, but instructive.

`cat` is short for **concatenate**. If you give it more than one file, it will print all of them, in order.

Because there's a command to add together any number of files, there doesn't need to be one for only a single file.

This is a good goal to keep in mind when programming: design programs that are *general*, so that specific solutions don't require more code.

# Options

Some arguments to commands are called **options**. They start with a dash: `-`.

Try this:

    ls -l
    ls -a
    ls -l -a

`l` stands for **long** format, and `a` stands for **all** files and directories.

You don't need to memorize these; you can look them up with `man`. But it's helpful to be able to recognize them.

# Commands as language

I like to call the command line a **language**-based interface.

* The first word (or couple of words) in a command is like a verb.
* The remaining words are either
  * options (like an adverb)
  * arguments (like a noun)

With that in mind, here's an example of the power language gives you:

# My favorite language interface

Tea. Earl Grey. Hot.

<!VIDEO xHSD0tR2IOU>

# Bonus!

If we have some time, I can go into a history lesson.

If not, I'll try to take some questions!

# Some history

Why is it called a "terminal"? Well, this is what they used to look
like:

![WACs at teletypes](http://www.ibiblio.org/hyperwar/USA/USA-WAC/img/USA-WAC-3.jpg)
<p style="text-align: center; font-size: 0.5em">ibiblio.org</p>

These things, called "teletypes", would be hooked up to computers the
size of a room.

.notes Like actual typewriters with a huge spool of paper, Jack Kerouac-style.

# More history

Eventually <strike>everyone ran out of paper</strike> these were replaced
with electronic terminals:

![the venerable VT220](http://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/DEC-VT220-0a.jpg/640px-DEC-VT220-0a.jpg)
<p style="text-align: center; font-size: 0.5em">wikimedia.org</p>

Same idea. No "computer" there, just a screen and keyboard. Where your
line to the big computer "terminates".

.notes Tell my apartment phone line adapter story maybe

# Why CLI?

* What do I mean by "powerful"? You can do an amazing number of tasks that might otherwise require programming... without programming!
* The connection from your computer to the VM is much like the old "terminal" connection. It's also the same way you would connect to a real web server on the Internet, when you deploy an app that you've written. You can use the same commands on each system!

# Fin

Questions?
