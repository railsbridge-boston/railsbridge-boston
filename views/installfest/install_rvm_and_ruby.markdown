RVM stands for Ruby Version Manager and is the easiest way to install and manage Ruby.  The 
[official RVM install instructions](http://rvm.beginrescueend.com/rvm/install/) are available here, but this should work for you:

[]()#Step 1:Install RVM


>Type this in the terminal:curl -L get.rvm.io | bash -s stable

This will do some stuff and print a long message which you can ignore.

[]()#Step 2:Configure your shell


>Every time you open a new terminal window, rvm will be active inside it. Close your terminal window and open a new one.

#Verify


>Type this in the terminal:type rvm | head -1

Expected result:rvm is a function

Type this in the terminal:rvm -v

Expected result:rvm 1.14.5 (stable) by Wayne E. Seguin (wayneeseguin@gmail.com) [https://rvm.beginrescueend.com/]

[]()#Step 3:Install Ruby 1.9.3 using RVM


>Type this in the terminal:rvm install 1.9.3

![](/img/warning.png)If you get an entire page of instructions, beginning with 'Ruby (and needed base gems) for your selection...', you should press Q to skip.

This downloads and compiles Ruby, which takes a while.

![](/img/warning.png)If 
rvm install 1.9.3 says 
autoreconf was not found in the PATH

[]()#Option 1:Mac OS


>Type this in the terminal:brew install automake


[]()#Option 2:Ubuntu Linux


>Type this in the terminal:sudo apt-get install automake


Once that completes, retry 
rvm install 1.9.3

Type this in the terminal:rvm use 1.9.3
rvm --default use 1.9.3

#Verify


>Type this in the terminal:ruby -v

Expected result:1.9.3