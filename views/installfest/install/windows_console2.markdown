# Install and Configure Console2

Console2 is not a shell, it is a "console window enhancement".  

That means it's a nicer way to view the Bash shell you just configured. It has
features like better font rendering, transparency, window resizing(!), tabs,
text selection, and easier copy and paste, among others. You will be spending
plenty of time in the command line; these features will make life easier.


## 1. Install Console2

Console2 doesn't have an automatic installer, so you will have to download a zip file, unzip it, and manually move it
to the directory where you want to install it. Finally we will create a shortcut since we will be opening Console2 
frequently.

**Download and Extract Zip File**

* Go to the <a href="http://sourceforge.net/projects/console/" target="_blank">Console2 Project Page</a> and click "Download".
* When the file downloads, right-click it and select "Extract All", and let it extract to the same directory.

**Drag Console2 folder to C:\dev\**

* Open another Windows Explorer window and navigate to the root of your main hard drive (Usually named `C:`).
* In the root of the `C:\` drive, create a folder named 'dev'. Open the `C:\dev\` folder.
* Go back to the files you extracted from the Console 2 download. Drag the "Console2" folder into `C:\dev\`.

**Create a shortcut**

* Inside the Console2 folder you just moved, drag the Console application to your Task Bar or Start Menu to create a
shortcut.
* Click the Console shortcut you just created to launch Console2.


## 2. Configure Console2

Now we have to configure Console2 to use the Bash shell. And to look nice.


### Set the Shell and Startup directory
Right-click inside the new Console2 window you just opened. Select `Edit > Settings…` in the context menu that appears.

Copy and paste the following into "Shell":

```text
C:\Windows\System32\cmd.exe /c ""C:\RailsInstaller\Git\bin\sh.exe" --login -i"
```

Copy and paste the following into "Startup dir":

```text
C:\dev
```

### Set Appearance and Hotkeys
Setting the shell is the only requirement for this workshop. The rest of the configuration is just nice to have.

**In the Appearance tab, set the font:**

  * Select Consolas (or any other monospace font)
  * Select a size that won't strain your eyes
  * Set Smoothing to ClearType  

**In the "Appearance > More…" tab, hide some unnecessary things:**

  * Uncheck "Show menu", "Show toolbar", and "Show status bar"
  * If you want to be fancy, set "Window transparency" to Alpha: ~40 for both Active and Inactive window

**In the Behavior tab, check "Copy on select".**  
Now when you highlight text in the console, it will automatically be copied.

**In the Hotkeys tab, set the "New Tab 1" hotkey to `Ctrl+T`:**

  * Scroll down and select the "New Tab 1" line
  * Click inside the Hotkey field, then press the key combo you want to assign (`Ctrl+T`)
  * Click the Assign button to set the new hotkey

**Also in the Hotkeys tab, set the Paste hotkey to `Ctrl+V`:**

  * Scroll down and select the "Paste" line
  * Click inside the Hotkey field, then press the key combo you want to assign (`Ctrl+V`)
  * Click the Assign button to set the new hotkey

Note: Don't set Copy to `Ctrl+C`! We will need `Ctrl+C` for stopping the ruby scripts that we run. Plus, we have already
set Console2 to copy on select.

**In the "Hotkeys > Mouse" tab, set "Select text" to the left mouse button:**

    * Select the "Select text" line
    * Select Button: Left from the Button dropdown
    * Uncheck all the Modifiers checkboxes
    * Click Assign to set the hotkey

**Click OK to accept all the changes.**

## 3. Close and Reopen Console2

Close the Console2 window and reopen it. You should see Bash open, with your user logged in.

* The window title should be something like: `MINGW32:/c/dev`

    MINGW32 is the version of Bash that we are using, so that confirms that Console2 is configured with Bash.

* Inside the window should be a status line in the format of `[youruser]@[yourcomputer] /c/dev`

    This confirms you are logged into Bash with your user.

If you don't see these things, there may be something wrong with your configuration, and you should call an
instructor.

If you do see these things, congratulations! You've just installed and configured an awesome console. You are ready
for the next section, "Using the Command Line".

[« Back to Installfest](/installfest)

