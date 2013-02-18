# Install Ruby on Windows

Installing Ruby and Rails on Windows is easy thanks to <a href="http://railsinstaller.org" target="_blank">RailsInstaller</a>. 
This one installer will give you Ruby, Rails, Git and the Bash shell. Let's get started.

## Install RailsInstaller

### 1. Download RailsInstaller

Go to the <a href="http://railsinstaller.org" target="_blank">RailsInstaller</a> page and click "Download the Kit"—the Windows version will 
automatically be downloaded for you. Don't worry about watching the video; we have all the directions you need here.

### 2. Start the Installation

Once the installer is downloaded, find the file and double-click it. This will open an installation wizard. 

* Make sure you check the box for "Add executables for Ruby, Git and DevKit to the PATH". 
* Leave the box for "Configure your git and ssh environment" checked.
* Click 'next' a number of times, and accept all the defaults, until the package installs. 

Next you should see a Command Prompt window.


### 3. Configure your Git and SSH environment

The installer will launch a Command Prompt which will ask for your input to configure your environment. 

* The first prompt will ask you for your name. This is the name that will be signed to your code commits in Git. 
It's generally good to sign your real, full name.
* The second prompt will be for your email address. You should use your real email address. You will use the same 
address for GitHub, Heroku and SSH, so they can all work together.

You just installed Ruby, Rails, and Git. That wasn't so bad, right?

## Configure your Shell

RailsInstaller comes with a nice shell called Bash. We will configure it for our purposes.

### 1. Configure bash with .bashrc

We will add commands to the `.bashrc` file to configure our bash environment.

* Open the "Git Bash". You can find it in "Start Menu > All Programs > RailsInstaller > Git Bash".
* Open your `.bashrc` in Notepad by typing this into the Git Bash window:

    ```text
    notepad ~/.bashrc &
    ```
    This asks Notepad to open a file named `.bashrc` in your home directory, here represented by a tilde (`~`).

<!---
TODO: "What is a home directory?"
-->

* Notepad will pop up and ask you if you want to create `.bashrc`. Click 'Yes'.

* Copy/paste the following lines of code into your `.bashrc`:

    ```text
    # More helpful file list
    alias ls='ls -Alh --color=always'

    alias subl='/c/Windows/"Programs Files"/"Sublime Text 2"/sublime_text'
    alias irb='ruby -S irb'
    ```

* Save `.bashrc` ("File > Save").

* Load the new `.bashrc` configuration by typing the following into Git Bash:

    ```text
    source ~/.bashrc
    ```

Bash is now configured—you now have done all the necessary installation for the workshop. You may now install Console2,
or move on to the next section, "Using the Command Prompt". If you stop here, just remember how to open Git Bash, as it 
is the command prompt you will be using. 


### 2. Install and Configure Console2 [optional]

Console2 is not a shell, it is a "console window enhancement".  

That means it's a nicer way to view the Bash shell you just configured. 
It has features like better font rendering, transparency, window resizing(!), tabs,
text selection, and easier copy/paste, among others. You will be spending plenty of time in the command prompt, so
this will make life easier.

[Install and Configure Console2](/installfest/install/windows_console2)


### Go Back
[« Back to Installfest](/installfest)
