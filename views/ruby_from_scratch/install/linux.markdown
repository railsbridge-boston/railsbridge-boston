# Install Ruby on Linux
Installing Ruby on Linux is easy!

## Run the Rails Ready Script
Then you can run the Rails Ready installation script from the Terminal with this command:

```text
wget --no-check-certificate \
https://raw.github.com/joshfng/railsready/master/railsready.sh && \
bash railsready.sh
```

The above is one command (not three separate ones), so just copy the entire
3 lines at once, then paste it once into a terminal window (shift-ctrl-v or
fom the terminal window menu)

When prompted:

```text
Build Ruby or install RVM?
=> 1. Build from source
=> 2. Install RVM
```

Choose 2 (RVM).

It will now run and install a bunch of useful things including ruby
1.9.3-p194 and the latest rails. When it is complete, that's it! Just open
a new terminal window and type `rvm list`, `ruby -v` and `rails -v` to
check the versions are actually installed.

[«Back](/ruby_from_scratch)
