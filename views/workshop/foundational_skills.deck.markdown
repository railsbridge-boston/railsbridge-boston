<!SLIDE subsection>
# Foundational Programming Skills

This presentation covers the basic skills required to be a programmer...

 ...that **don't** involve actually writing code.

<!SLIDE bullets>
# The Terminal

* your best friend
* *command* the computer to do things

## Terminal Prompt

```
yoda:~ mary$ 
```

same as:

```
I'm ready Mary, what do you want me to do?
```

<!SLIDE bullets>
## Ruby Prompt

```
irb(main):001:0> 
```

<!SLIDE bullets>
# Parts of a Command

command and 0, 1, 2 or more arguments separated by spaces

```
date
```

```
ruby hello.rb
```


```
cp hello.rb backup.rb
```

<!SLIDE bullets>
# List files

```
yoda:~ mary$ ls
Desktop    Library    Pictures   blog_post  ssh_config
Documents  Movies     Public     hello.rb   test_todo
Downloads  Music      bin        prj        tmp
yoda:~ mary$ 
```

# Other Commands

```
cat hello.rb
cp hello.rb another_hello.rb
rm another_hello.rb
mv hello.rb bye.rb
cd Pictures
pwd
```

<!SLIDE bullets>
# Files and Directories

* Over time I keep creating more and more files
* What happens when I have 1,000 files?
* The House/Rooms/Drawers Metaphor
  * directories store files and keep everything in your ‘house’ organized


<!SLIDE bullets>
# Special Directories

* Current directory
  * `.` ("dot")
* Parent directory
  * `..` ("dot dot")
* Home directory
  * `~` ("tilde")

<!SLIDE bullets>
# More about directories

* Explain where home and root are located in relation to all directories.
* Explain difference between absolute paths (starting with a /) and relative paths.

<!SLIDE bullets>
# Text Editing

* text editor vs. word processor
  * similarities and differences
* Have group open editor, create and save file with explanation of how and where files are stored.
  * after change, go to command line and `cat` the file to see
* Explain file extensions and file types.
  * File types tell the editor how to color the special words in each language.
* Explain difference between the buffer (in the editor’s memory) and the file (stored on disk).
  * Emphasize the importance of saving the buffer to a file before trying to run it with ruby.
  * "Save" makes things unsafe

<!SLIDE bullets>
# Compilers, Interpreters and Programming Languages

* Programming language as an agreed set of rules about syntax for writing source code that is sent to the interpreter and translated into byte code.
* Explain that byte code is the binary that machines understand and use for executing instructions.
* Use metaphor that CPU is like a guy in a factory executing commands that it is handed, and the source code are those instructions.
* Explain differences between compiled vs. dynamic languages.
* Tie everything together by explaining that source code are instructions that are translated into language that machines understand and can execute.

<!SLIDE bullets>
# Memory, CPU, Hard Disk

* Very briefly explain how a computer works and all the moving parts (literally) starting with hard drive, memory, and CPU.
* Give the group basic understanding of where the source code is stored and how and where it is executed.

<!SLIDE bullets>
# Operating System

<table>
  <tr>
    <td>
      <img src='/images/slides/os_x_logo.jpg'>
    <td>
      <img src='/images/slides/windows_logo.gif'>
    <td>
      <img src='/images/slides/linux_logo.gif'>
  </tr>
</table>

* The OS is a program that runs other programs
  * the term "multitasking" actually started with computers and migrated to common usage
* It also helps programs communicate with hardware (video, memory, disk, network...)
