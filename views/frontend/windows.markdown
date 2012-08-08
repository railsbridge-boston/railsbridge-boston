These instructions should work for all versions of Windows from XP on to Windows 7.

You may need to login as Administrator, or give the Administrator password when installing some programs, depending on your Windows version and user settings.

[]()#Step 1:Run RailsInstaller


>RailsInstaller includes Rails, Ruby, Git, and SQLite.

Go to 
[http://railsinstaller.org/](http://railsinstaller.org/) and download the kit.

![](/img/warning.png)**Don't watch the video!**
 After you download the file, come back to this site!

Click on the downloaded file to run the install wizard.  Click Next at each step to accept the defaults.

Be sure to check the box for 
Add executables for Ruby, Git and DevKit to the PATH

![WinXPRailsInstaller.jpg](WinXPRailsInstaller.jpg)

Rails will be installed in C:\RailsInstaller and the directory for your Rails projects will be C:\Sites

[]()#Step 2:Configure your git and ssh environment


>![](/img/warning.png)At the end of the installer there will be a checkbox asking 'configure your git and ssh environment'. 
**Leave this box checked.**
 It will open a terminal window that you need to 
**type into**
.

When it asks 
Please enter your name, for example mine is: Wayne E. Seguin

Type 
your actual full name into the console and press 
**[enter]**

When it asks 
Please enter your email address, for example mine is: wayneeseguin@gmail.com

Type 
your actual email address into the console and press 
**[enter]**

![](/img/warning.png)Use the 
**same email address**
 for heroku, git, github, and ssh.

![](/img/info.png)After this step you will have some 
**git config settings**
 and you will also have an 
**ssh key**
.

[]()#Step 3:Sanity Check


>Type this in the terminal:ruby -v

Expected result:ruby 1.9.3p125

Type this in the terminal:rails -v

Expected result:Rails 3.2.6

[]()#Step 4:Open a Terminal


>Much of using Rails is typing commands and hitting 
**[enter]**
.  Your experience using Rails on Windows greatly depends on your making friends with the terminal window.  Normally you will work in a terminal window and keep it open along with your browser.

![](/img/info.png)The Terminal is also called the Command Prompt, Command Line, DOS Prompt, or DOS Window.

RailsInstaller made a special Terminal for you to use when you're working on Ruby, Rails, or Git.

To open the special Terminal, choose 
**All Programs**
 on the Start menu, then choose 
**RailsInstaller**
 and then 
**Command Prompt with Ruby and Rails**
. You should do all your Rails work in this RailsInstaller DOS window.

![railsbridge_findingCommandPrompt.png](railsbridge_findingCommandPrompt.png)

![](/img/info.png)Pin It to Win It

![Pin the Command Prompt to the Task Bar](railsbridge_windowsScreenshot-commandprompt-pinnedtotaskbar.png)

Here is a summary of your settings after this process:

![railsbridge_windowsScreenshot-commandprompt_ror.jpg](railsbridge_windowsScreenshot-commandprompt_ror.jpg)

[]()#Step 5:Configure the Windows Terminal


>Take a moment to configure the 
Command Prompt with Ruby and Rails so that it is a good height and width and has a nice font.

Go on to 
[Configure The Windows Terminal](configure_the_windows_terminal?back=windows%23step5)

![](/img/info.png)clearing the terminal

If you ever want to clear the terminal of all its cluttered output

Type this in the terminal:cls

![](/img/info.png)command history

The terminal window stores a "command history." To view and re-run previous commands, use the <up arrow> and <down arrow> keys.  You can also edit a previous command and run it -- this is handy for long commands, or fixing mistakes.

![](/img/info.png)copy and paste

It's usually better to type commands in yourself. It takes a little longer but you learn more.

But if you must... in these instructions, where it says: "Type this in the terminal:", you can usually copy the command from this page, and right click in the menu bar or terminal window, then click on "Paste", then hit the 
**[enter]**
 key.

[]()#Step 6:Install Windows Colors


>This step is optional, but 
**highly**
 recommended.

Go on to 
[Windows Colors](windows_colors?back=windows%23step6)

[]()#Step 7:Configure Git


>Go on to 
[Configure Git](configure_git?back=windows%23step7)

[]()#Step 8:Install a Text Editor


>You need a text editor to do Ruby. If you already have a preferred text editor, such as vi, emacs, jedit, etc., you can skip this step. It must be a plain text editor and not something with styling like Microsoft Word or WordPad.

Notepad is not a good programming editor, but it will work in a pinch.

![](/img/warning.png)**When in doubt, use KomodoEdit.**

Download KomodoEdit here: 
[http://downloads.activestate.com/Komodo/releases/](http://downloads.activestate.com/Komodo/releases/)

[Komodo Edit](http://www.activestate.com/komodo-edit) is a good open source option, if you don't have one yet.

#Next Step:


Go on to 
[Create A Heroku Account](create_a_heroku_account?back=windows%23step8)