# Installing on Mac OS X

### Check your version of OS X.
Go to the Apple Menu (in the top left of your screen) > About this Mac…

If you want to the "Big Cat" name for your version, they are as follows:  
10.8: Mountain Lion, 10.7: Lion, 10.6: Snow Leopard, 10.5: Leopard, 10.4: Tiger

### Install Command Line Tools from XCode

**Option 1: USB Drive**  
The best way to install the Command Line Tools is to get a USB drive from a TA.
When you plug the USB drive into your computer, you will see the Command Line Tools 
for your version of OS X.

**Option 2: OS X Installation Disk**  
The second best way to install is from an OS X Installation Disk. 
The disk has to be for the same version of OS X that you have installed.

OS X Install DVD > Optional Installs > Optional Installs.mpkg  
Open up the disk by double-clicking it, and you will see "Install Mac OS X", and a folder called "Optional Installs". 
Open "Optional Installs". Inside, double-click the installer named "Xcode".

Click through the installation process.  
When you get to the screen to select components, make sure you include "System Tools".
Click "Continue" then "Install" to start the installation. It may take as much as 30 minutes.

**Option 3: Download**  
This option is your last resort, since the downloads are large. The instructions differ by 
version of OS X:

10.7, 10.8: Download [GCC-10.7](https://github.com/downloads/kennethreitz/osx-gcc-installer/GCC-10.7-v2.pkg)  
10.6: Download [GCC-10.6](https://github.com/downloads/kennethreitz/osx-gcc-installer/GCC-10.6.pkg)  
10.5: Download Xcode 3.1.4 from the Apple Developer Center:  

First, create a free Apple developer account. 

Go to the [Apple Developer Center](https://developer.apple.com/downloads), 
and click Register. Fill out the first page with your account information.
The second page is a developer survey, which you can skip. Just go to the bottom and click
"Continue". 

Once you have confirmed your developer account, you can download [Xcode 3.1.4](http://adcdownload.apple.com/Developer_Tools/xcode_3.1.4_developer_tools/xcode314_2809_developerdvd.dmg).  
If that link doesn't work, go to the [downloads page](https://developer.apple.com/downloads)
and search for "Xcode 3.1.4"

## Install Everything Else
### 1. Open Terminal
Now open Terminal, you can do this from your Applications/Utilities folder or
you can click on Spotlight (the magnifying glass in the upper-right) and type 'Terminal'.

### 2. Install Homebrew
Once in terminal you need to install Homebrew. You can do that by running the following command:

```text
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
```

### 3. Install [Git](http://git-scm.org)

```text
brew install git
```

### 4. Install [rbenv](https://github.com/sstephenson/rbenv)

```text
brew install rbenv
```

### 5. Add rbenv to your .bash_profile
At this point you need to add rb_env to your environment. Run the following to do so:

```text
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
```

### 6. Install [ruby-build](https://github.com/sstephenson/ruby-build)

```text
brew install ruby-build
```

### 7. Refresh your terminal

```text
exec $SHELL
```

### 8. Install Ruby 1.9.3 and set it to global

```text
rbenv install 1.9.3-p286
rbenv global 1.9.3-p286
```

### 9. Close an re-open your terminal and confirm Ruby is installed properly

```text
ruby -v
```

You should get something similar to `ruby 1.9.3p286 (2012-10-12 revision 37165) [x86_64-darwin12.2.0]`
If you do not see `ruby 1.9.3` please call in an instructor to help
diagnose the installation issue.

### 10. Install Rails and other supporting gems

```text
gem install bundler rails heroku
```

### 11. Run `rbenv rehash` again so you can access the gems you just installed:

```text
rbenv rehash
```

Congratulations, you now have the Ruby development environment up and running. Now go forth and do something awesome with it!

[« Back to Installfest](/ruby_from_scratch)

