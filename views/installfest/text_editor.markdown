# Install a Text Editor

If you already are comfortable with a programming editor, use that one. Just double-check with an instructor to make 
sure it will work.  

If you are unsure, we suggest [Sublime Text 2](http://www.sublimetext.com/2)

### 1. Open your Editor

#### Windows

1. To start Sublime Text 2 please select it from the Start Menu under
   'All Programs'

![Submlime Text 2](/images/installfest/sublime2.png?raw=true)

#### OSX

1. Double-click the `Applications` folder in the disk image, or navigate to `Applications` in the left panel of 
Finder.  
1. In `Applications`, scroll down until you see `Sublime Text 2`.
1. Double-click `Sublime Text 2` to open the editor.

#### Linux

Type this in the Terminal to start Sublime:

```text
/usr/bin/sublime-text
```
Or, you can use your GUIs menus, as an icon has most likely been installed.

### 2. Set some basic preferences

Sublime Text 2 reads its preferences from text files. This means you can easily
edit settings, check your settings into version control, or share settings with
copy & paste. That's what we're going to do with some common preferences for
Rubyists.

Open up User Settings (`Sublime Text 2 > Preferences > Settings - User`) and paste in these preferences:

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

### Success!

Now you have an editor that you can use to open any text file, including Ruby programs.


[« Back to Installfest](/installfest)
