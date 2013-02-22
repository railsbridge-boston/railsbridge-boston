# Install a Text Editor

If you already are comfortable with a programming editor, use that one. Just double-check with an instructor to make 
sure it will work.  

If you are unsure, we suggest [Sublime Text 2](http://www.sublimetext.com/2), unless you are using Linux.

If you use Linux, we suggest you set up gEdit as a Ruby editor.  


### 1. Install 

#### Windows
1. Download [Sublime Text 2](http://www.sublimetext.com/2).
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

1. Download [Sublime Text 2](http://www.sublimetext.com/2). 
1. Once the installer has finished downloading, open Finder from your dock.  
1. On the left side of the Finder, under "Favorites" you should see `Downloads`. Open it.  
1. Inside the `Downloads` folder you should find the `Sublime Text 2.x.x.dmg` — double click it to open it.  
1. That will open the Sublime Text installer disk image in the Finder window in front of you. Drag `Sublime Text 2` into 
`Applications`.
1. (optional) To edit files in Sublime Text from the command line,
you need to add a `symlink`. This will allow you to
type `subl Gemfile` (for instance) on the command line
to edit your Gemfile.
Type this command in the Terminal:

```text
sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/bin/subl
```

#### Linux


If you use Ubuntu, type these commands in the Terminal:

```text
sudo add-apt-repository ppa:ubuntu-on-rails
sudo apt-get update
sudo apt-get install gedit-plugins gedit-gmate
```

Sorry we don't have instructions ready yet for Fedora, so please ask a
TA tonight for help.
``

For Mint and other non-Ubuntu distros, type these commands in the Terminal:

```text
sudo apt-get update
sudo apt-get install gedit-plugins
```

### 2. Open your Editor

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

Type this in the Terminal to start gEdit:

```text
gedit
```


### 3. Set some basic preferences

#### If you are using Sublime Text 2

Sublime Text 2 reads its preferences from text files. This means you can easily
edit settings, check your settings into version control, or share settings with
copy & paste. That's what we're going to do with some common preferences for
Rubyists.

Open up User Settings (`Sublime Text 2 > Preferences > Settings - User``) and paste in these preferences:

```json
{
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "trim_trailing_white_space_on_save": true,
  "ensure_newline_at_eof_on_save": true,
  "save_on_focus_lost": true
}
```

Save the User Settings file (`File > Save`). Your new preferences are now in effect.

#### If you are using gEdit 

Go to Edit > Preferences and click the Editor tab. Set the `Tab width`
option to 2 and make sure `Insert spaces instead of tabs` and `Enable
automatic indentation` are checked.

![](/images/gedit-pref.png)

### Success!

Now you have an editor that you can use to open any text file, including Ruby programs.


[«Back](/installfest)
