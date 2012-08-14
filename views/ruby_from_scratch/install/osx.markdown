# Installing on Mac OS X

Please check your version of OSX before starting the setup process. You
can do this by clicking on the Apple in the upper-left and clicking
'About this Mac'. If at any time something goes wrong please call in an
instructor to help.

## OSX 10.6

* Install XCode 3.2. You will need a paid Apple Devloper's account to
download this from the Apple Developer website. More likely there
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
