# Linux

To build and install Ruby yourself on Linux, first make sure that you
have followed the instructions on the
[Linux Downloads page](/downloads/linux).

If you run into errors at any step here, please ask an instructor or TA
to help diagnose the issue.

Open your command line and `cd` to the directory where you put `chruby`
and `ruby-install`.

## Build Tools

`cd` to the `chruby` directory that you cloned with Git. Run:

    `make install`

`cd` to the `ruby-install` directory that you cloned with Git. Run:

    `make install`

# Ruby

Run:

   `ruby-install ruby 2.0`

This will download and build Ruby, which will take a while.


Run:
     `ruby -v`

If everything is set up, you'll see:

<pre>
ruby 2.0.0p451 (2014-02-24) [i686-linux]
</pre>


3. Add chruby to your shell

    ```text
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
    echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
    ```

    **Linux Mint and Ubuntu 10.10**: Modify your `~/.bashrc` file instead of `~/.bash_profile`.  
    **Zsh**: Modify your `~/.zshenv` file instead of `~/.bash_profile`.

4. Restart your shell so the path changes take effect. You can now begin using rbenv.

    ```text
    exec $SHELL
    ```

7. Close an re-open your terminal and confirm Ruby is installed properly

    ```text
    ruby --version
    ```

    You should get something similar to `ruby 2.0.0p451 (2014-02-24) [i686-linux]`
    If you do not see `ruby 2.0.0` please call in an instructor to help diagnose the installation issue.

8. Install Rails and other supporting gems

    ```text
    gem install rails -v 4.0.5
    gem install protected_attributes
    ```

Congratulations, you now have the Ruby development environment up and
running. Now go forth and do something awesome with it!

[« Back to Installfest](/installfest)
