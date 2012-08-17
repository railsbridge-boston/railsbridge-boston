# Installing on Mac OS X

Please check your version of OSX before starting the setup process. You
can do this by clicking on the Apple in the upper-left and clicking
'About this Mac'. If at any time something goes wrong please call in an
instructor to help.

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


## OSX 10.6

* Install XCode 3.2. You will need a paid Apple Devloper's account to
download this from the [Apple Developer website](https://developer.apple.com/). More likely there
will be someone with a thumb drive that has that version of Xcode. Skip
to General Installation.

## OSX 10.7+

* Install the latest XCode. Please see if there is a thumb drive
available with the latest copy, if not you can open up the AppStore
and install yourself.

* Once installation is complete open XCode and on the top menu bar
click on 'XCode/Preferences'. In the preferences pane click on
'Downloads' and then install the 'Command Line Tools'.

![CommandLineTools](/images/installfest/osx-commandline.png)

## General Installation

* Now open Terminal, you can do this from your Applications folder or
you can click on Spotlight (the magnifying glass in the upper-right)
and type 'Terminal'.

* Once in terminal you need to install Homebrew. You can do that by
running the following command:

```text
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)
```

* Install [Git](http://git-scm.org):

```text
brew install git
```

* Install [rbenv](https://github.com/sstephenson/rbenv)

```text
brew install rbenv
```

* At this point you need to add rb_env to your environment. Run the
following to do so:

```text
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
```

* Install [ruby-build](https://github.com/sstephenson/ruby-build)

```text
brew install ruby-build
```

* Refresh your terminal

```text
exec $SHELL
```

* Install Ruby 1.9.3 and set it to global

```text
rbenv install 1.9.3-p194
rbenv global 1.9.3-p194
rbenv shell 1.9.3-p194
```

* Close an re-open your terminal and confirm Ruby is installed properly

```text
ruby -v
```

You should get something similar to `ruby 1.9.3p194 (2012-04-20 revision 35410) [x86_64-darwin11.4.0]`
If you do not see `ruby 1.9.3` please call in an instructor to help
diagnose the installation issue.

* Install Rails and other supporting gems

```text
gem install bundler rails heroku
```

Congratulations, you now have the Ruby development environment up and
running. Now go forth and do something awesome with it!

[« Back to Installfest](/ruby_from_scratch)

