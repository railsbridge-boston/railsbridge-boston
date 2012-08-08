You will need sudo access in order to complete these directions (The first user account has this by default).

[]()#Step 1:Install packaged software and libraries


>Open a terminal (Applications > Accessories > Terminal).  You may want to right-click on the terminal icon and select "Add to panel" so the icon will appear next to the default help and firefox icons in the top panel.

Type this in the terminal:sudo apt-get install autoconf automake bison build-essential curl libc6-dev libreadline6 libreadline6-dev libsqlite3-0 libsqlite3-dev libssl-dev libxml2-dev libxslt-dev libxslt1-dev libyaml-dev ncurses-dev openssl sqlite3 zlib1g zlib1g-dev

[]()#Step 2:Install git


>Type this in the terminal:sudo apt-get install git

If this results in an error, you may try installing 
git-core instead of 
git

[]()#Step 3:Install RVM


>Go on to 
[Install Rvm And Ruby](install_rvm_and_ruby?back=ubuntu%23step3)

Restart your terminal before continuing.

[]()#Step 4:Install Rails


>Using a terminal again, execute the following command to install rails.

Type this in the terminal:gem install rails

[]()#Step 5:Install Heroku


>Type this in the terminal:gem install heroku

![](/img/info.png)This only installs a local command-line 
heroku tool. You will still need to sign up for a Heroku account later.

[]()#Step 6:KomodoEdit


>If you don't have a preferred code editor, you can install KomodoEdit. It's available for 
[32-bit machines](http://downloads.activestate.com/Komodo/releases/7.0.2/Komodo-Edit-7.0.2-9923-linux-x86.tar.gz) and 
[64-bit machines](http://downloads.activestate.com/Komodo/releases/7.0.2/Komodo-Edit-7.0.2-9923-linux-x86_64.tar.gz)


Check 
[http://downloads.activestate.com/Komodo/releases/](http://downloads.activestate.com/Komodo/releases/) for the latest version.

![](/img/info.png)How many bits?

If you're not sure, you're probably 32-bit. Run 
uname -i and see. "x86" in the filename means 32-bit, and "x86_64" means 64-bit.

#Next Step:


Go on to 
[Create A Heroku Account](create_a_heroku_account?back=ubuntu%23step6)