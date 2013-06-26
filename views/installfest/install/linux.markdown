# Install Ruby on Linux


You need to do all the following steps in a terminal. If you don't know
how to open a terminal, please ask an instructor to show you.

If you run into errors at any step please call in an
instructor to help diagnose the installation issue.

1. Install git, wget, and some other dependencies. These steps may take
   a while.

    For Ubuntu or Linux Mint:

    ```text
    sudo apt-get update  
    sudo apt-get install -y build-essential git-core wget zlib1g-dev libssl-dev libreadline-dev \
    sqlite3 libsqlite3-dev python-software-properties
    ```

    For Fedora:

    ```text
    sudo yum update   
    sudo yum groupinstall "Development Tools"
    sudo yum install -y git wget python zlib1g-dev libssl-dev libreadline-dev sqlite3 libsqlite3-dev
    ```

2. Download and build node.js. Copy/paste this script into the terminal:

    ```text
    cd /usr/local/src
    sudo git clone git://github.com/joyent/node.git

    cd node
    sudo git checkout v0.8.8

    sudo ./configure
    sudo make
    sudo make install
    ```

3. Check out rbenv into `~/.rbenv`.

    ```text
    cd
    git clone git://github.com/sstephenson/rbenv.git .rbenv
    ```

4. Add rbenv to your environment.

    This adds `~/.rbenv/bin` to your `$PATH` for access to the `rbenv`
    command-line utility, and injects the rbenv shim in your ~/.bash_profile so that calls to ruby will be run through rbenv.

    Copy/paste this into the terminal:

    ```text
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    ```

    **Linux Mint and Ubuntu 10.10**: Modify your `~/.bashrc` file instead of `~/.bash_profile`.  
    **Zsh**: Modify your `~/.zshenv` file instead of `~/.bash_profile`.

5. Restart your shell so the path changes take effect. You can now begin using rbenv.

    ```text
    exec $SHELL
    ```

6. Install ruby-build.

    ```text
    mkdir -p ~/.rbenv/plugins
    cd ~/.rbenv/plugins
    git clone git://github.com/sstephenson/ruby-build.git
    source ~/.bash_profile
    ```

7. Install the latest Ruby. This may take a while.

    ```text
    rbenv install 1.9.3-p286
    rbenv global 1.9.3-p286
    ```

8. Close an re-open your terminal and confirm Ruby is installed properly

    ```text
    ruby --version
    ```

    You should get something similar to `ruby 1.9.3p286 (2012-10-12 revision 37165) [i616-linux]` 
    If you do not see `ruby 1.9.3` please call in an instructor to help diagnose the installation issue.

9. Install Rails and other supporting gems

    ```text
    gem install bundler rails
    ```

10. Run `rbenv rehash` again so you can access the gems you just installed:

    ```text
    rbenv rehash
    ```

Congratulations, you now have the Ruby development environment up and
running. Now go forth and do something awesome with it!

[« Back to Installfest](/installfest)

