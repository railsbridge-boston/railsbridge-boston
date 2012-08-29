# Installing on Mac OS X

Please check your version of OSX before starting the setup process. You
can do this by clicking on the Apple in the upper-left and clicking
'About this Mac'. If at any time something goes wrong please call in an
instructor to help.

## Getting XCode

XCode is the large suite of Apple developer tools that you need in order to
install ruby and the other tools we will be using.  It is a very large download,
and Apple's Developer Resources website isn't easy to navigate, so the
easiest solution will be to borrow a thumb drive from an instructor with the
proper version of XCode for you.

If you want to download XCode from Apple directly, be aware that Apple will
ask you to register as an Apple Developer and create an Apple ID.  They'll
ask for some personal information, including your email address.

They'll also ask about what kind of development you'll be doing.  If you don't
know what kind of development you'll be doing, don't worry; the page seems to
accept any answers without complaint.

Be aware that you *do not* need to pay to register as an Apple Developer.
To register as an Apple Developer for free, scroll to the bottom of
[Which Developer Program is for you?](https://developer.apple.com/programs/which-program/).
The last choice, "Register as an Apple Developer", allows you to register and
create an Apple ID without paying to enroll.


## OSX 10.5 and lower

Please call an instructor over to help. Unfortunately, we might not be
successful since this version of OS X is older.  However, these guidelines
worked for a MacBook running OS X 10.5.8:

#### Homebrew

* Make sure your computer is up to date, and 'About This Mac' (above)
shows 10.5.8.  If it shows '10.5.7' or lower, then from the Apple Menu, click on
"Software Update..." and allow the system software to update itself.  This might
take a while to complete.

* Fortunately your computer should have an old version of ruby installed.
Therefore, you can install a program called 'Homebrew', which will help us past
a couple of hurdles.  The [Homebrew installation](http://mxcl.github.com/homebrew/)
is simple:

    - Open Terminal (for instructions, see below on this page under General installation)
    - Cut and paste this text into the terminal window:

    ```text
    ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
    ```

    The Homebrew installation script will output details about the installation
    in Terminal.  It will pause to explain what it is doing.  Agree to
    the defaults if it asks.  (One explanation is that it will set a default
    setting to be `/usr/local/bin`.)

    Make note of any instructions it outputs at the end of installation.

* Use Homebrew to install `wget` and to upgrade `bash`.  Inside the Terminal,
type:

    ```text
    brew install wget
    brew install bash
    ```

    These will take a bit of time.  Homebrew will mention inside Terminal that
    it is installing dependencies, which is fine.  Again, note any instructions
    it mentions when it finishes each command you entered.

    Then quit Terminal entirely (pressing the Command key and the 'q' key at the
    same time will quit almost any program).  If you received instructions to
    log out and log back in again, do so from the Apple menu.


Now install [Xcode version 3.1.4](http://adcdownload.apple.com/Developer_Tools/xcode_3.1.4_developer_tools/xcode314_2809_developerdvd.dmg).
If that direct link does not work, the download can be found by searching the
[developer downloads](https://developer.apple.com/downloads).  Log in with
your Apple ID.  You should get to the page [Downloads for Apple Developers](https://developer.apple.com/downloads/index.action).
Then enter "Xcode 3" on the left, directly below the title "Downloads for Apple
Developers".  Click on "Xcode 3.1.4 Developer Tools" in the search results, and
then download the "Xcode 3.1.4 Developer DVD" on the right.

It is a large file and will take time to download, so hopefully an instructor
will have it on a thumb drive.

When you have the file, click on it to open the contents.  Then double-click on
the icon that looks like a partly-opened yellow box to start the installation.

Make sure, when you get to check off which components to install, that you check
"Command Line Tools" and/or "Unix Command Line Tools".

When installation has completed, you should be in good shape!  Skip below to the
next section, 'General Installation.'  (Note you've already installed Homebrew,
so you can skip that.)


## OSX 10.6

* Install XCode 3.2.  Hopefully there will be an instructor available
with a thumb drive that has that version of Xcode.

Make sure XCode and the Command Line Tools are fully installed
(an instructor can help), and then proceed to General Installation.

## OSX 10.7+

* Install the latest XCode. Please see if there is a thumb drive
available with the latest copy, if not you can open up the AppStore
and install yourself.

* Once installation is complete open XCode and on the top menu bar
click on 'XCode/Preferences'. In the preferences pane click on
'Downloads' and then install the 'Command Line Tools'.

![CommandLineTools](/images/installfest/osx-commandline.png)

## General Installation

1. Now open Terminal, you can do this from your Applications/Utilities folder or
you can click on Spotlight (the magnifying glass in the upper-right)
and type 'Terminal'.

1. Once in terminal you need to install Homebrew. You can do that by
running the following command:

    ```text
    ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
    ```

1. Install [Git](http://git-scm.org):

    ```text
    brew install git
    ```

1. Install [rbenv](https://github.com/sstephenson/rbenv)

    ```text
    brew install rbenv
    ```

1. At this point you need to add rb_env to your environment. Run the
following to do so:

    ```text
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    ```

1. Install [ruby-build](https://github.com/sstephenson/ruby-build)

    ```text
    brew install ruby-build
    ```

1. Refresh your terminal

    ```text
    exec $SHELL
    ```

1. Install Ruby 1.9.3 and set it to global

    ```text
    rbenv install 1.9.3-p194
    rbenv global 1.9.3-p194
    rbenv shell 1.9.3-p194
    ```

1. Close an re-open your terminal and confirm Ruby is installed properly

    ```text
    ruby -v
    ```

    You should get something similar to `ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin11.4.0]`
    If you do not see `ruby 1.9.3` please call in an instructor to help
    diagnose the installation issue.

1. Install Rails and other supporting gems

    ```text
    gem install bundler rails heroku
    ```

12. Run `rbenv rehash` again so you can access the gems you just installed:

    ```text
    rbenv rehash
    ```

Congratulations, you now have the Ruby development environment up and
running. Now go forth and do something awesome with it!

[« Back to Installfest](/ruby_from_scratch)

