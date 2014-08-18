## Instructions for Mac OS X 10.5

Before you start these steps, please let a TA know that you are running OS X 10.5.
This will help us know that you may need extra assistance doing the installation.


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
ruby --version
```

You should get something similar to `ruby 1.9.3p286 (2012-10-12 revision 37165) [x86_64-darwin12.2.0]`
If you do not see `ruby 1.9.3` please call in an instructor to help
diagnose the installation issue.

### 10. Install Rails and other supporting gems

```text
gem install bundler rails
```

### 11. Run `rbenv rehash` again so you can access the gems you just installed

```text
rbenv rehash
```

Congratulations, you now have the Ruby development environment up and running. Now go forth and do something awesome with it!

[« Back to Installfest](/installfest)
