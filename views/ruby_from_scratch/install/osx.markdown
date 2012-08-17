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

* Please call an instructor over to help. Unfortunately the odds are
  very high with an operating system this old we might not be able to
help.

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

