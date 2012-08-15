# Install a Text Editor

If you already are comfortable with a programming editor, use that one. Just double-check with an instructor to make 
sure it will work.  
If you are unsure, we suggest [Sublime Text 2](http://www.sublimetext.com/2).

Download [Sublime Text 2](http://www.sublimetext.com/2) for your operating system and follow the installation instructions below for your computer

### 1. Install Sublime Text 2

#### Windows
1. Once the installer has finished downloading, open the Setup.exe
1. You will be prompted with a Security Warning. This is expected,
   confirm you want to install by clicking 'Run'
1. You will be prompted again asking if you want to make changes to your
   computer. Confirm by clicking 'Yes'.
1. Go through the Setup Wizard by clicking 'Next', 'Next', 'Next',
   'Install'
1. After the installation is complete click 'Finish' to exit the Setup
   Wizard.

#### OSX

1. Once the installer has finished downloading, open Finder from your dock.  
1. On the left side of the Finder, under "Favorites" you should see `Downloads`. Open it.  
1. Inside the `Downloads` folder you should find the `Sublime Text 2.x.x.dmg` — double click it to open it.  
1. That will open the Sublime Text installer disk image in the Finder window in front of you. Drag `Sublime Text 2` into 
`Applications`.

#### Linux

### 2. Open Sublime Text 2

#### Windows

1. To start Sublime Text 2 please select it from the Start Menu under
   'All Programs'

![Submlime Text 2](/images/installfest/sublime2.png)

#### OSX

1. Double-click the `Applications` folder in the disk image, or navigate to `Applications` in the left panel of 
Finder.  
1. In `Applications`, scroll down until you see `Sublime Text 2`.
1. Double-click `Sublime Text 2` to open the editor.

#### Linux

### 3. Set some basic preferences

One cool thing about Sublime Text is that it reads its preferences from text files. This means you can easily
edit settings, check your settings into version control, or share settings with copy & paste. That's what we're going to 
do with some common preferences for Rubyists.

Open up User Settings (`Sublime Text 2 > Preferences > Settings - User``) and paste in these preferences:

```json
{
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
  "ensure_newline_at_eof_on_save": true,
  "new_window_settings":
  {
    "show_minimap": false
  }
}
```

Save the User Settings file (`File > Save``). Your new preferences are now in effect.


### Success!

Now you have an editor that you can use to open any text file, including Ruby programs.


[«Back](/ruby_from_scratch)
