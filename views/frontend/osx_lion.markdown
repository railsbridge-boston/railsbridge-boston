[]()#Step 1:Open Terminal


>Look for 
**Terminal.app**
 inside Applications -> Utilities.

Add it to your dock; you'll be using it a lot. (To add it to the dock, click and hold the dock icon once Terminal is open. Select options -> keep in dock.)

![](/img/info.png)Arrange your windows so that Terminal and your web browser are next to each other. You will want to 
read from your browser and 
type into your terminal 
at the same time.

[]()#Step 2:Install A Compiler (XCode or GCC)


>Go on to 
[Install Xcode](install_xcode?back=osx_lion%23step2)

[]()#Step 3:Install Homebrew


>Type this in the terminal:which git

Expected result:/usr/bin/git

If you get the result above skip to: 
[Install RVM](install_rvm_and_ruby)

Go on to 
[Install Homebrew](install_homebrew?back=osx_lion%23step3)

[]()#Step 4:Install Git


>Next we'll install Git, the most popular version control system in the Ruby world:

Type this in the terminal:brew install git

#Verify


>Type this in the terminal:git --version

Expected result:git version 1.7.7.5

Go on to 
[Configure Git](configure_git?back=osx_lion%23step4)

[]()[]()#Step 5:Install RVM, the Ruby Version Manager


>Go on to 
[Install Rvm And Ruby](install_rvm_and_ruby?back=osx_lion%23step5)

[]()#Step 6:Install Rails


>Type this in the terminal:gem install rails

#Verify


>Type this in the terminal:rails -v

Expected result:Rails 3.2.6

[]()#Step 7:Install KomodoEdit


>We'll be using the KomodoEdit text editor during the workshop, though you are free to use a different editor if you prefer. It must be a plain-text editor, such as vi or TextMate. Microsoft Word and other word processing programs won't work.

![](/img/warning.png)When in doubt, use KomodoEdit.

Go on to 
[Install Komodo Edit For Mac](install_komodo_edit_for_mac?back=osx_lion%23step7)

[]()#Step 8:Install the heroku tool


>Type this in the terminal:gem install heroku

#Verify successful installation


>Type this in the terminal:which git

Expected result:/usr/bin/git

Type this in the terminal:which ruby

Expected result:/Users/alex/.rvm/rubies/ruby-1.9.2-p290/bin/ruby

Type this in the terminal:which rails

Expected result:/Users/alex/.rvm/gems/ruby-1.9.2-p290/bin/rails

Type this in the terminal:which heroku

Expected result:/Users/alex/.rvm/gems/ruby-1.9.2-p290/bin/heroku

[]()#Step 9:Generate an ssh public key


>Go on to 
[Create An Ssh Key](create_an_ssh_key?back=osx_lion%23step9)

[]()#Step 10:Congratulations!


>You have everything you need to write a Ruby on Rails application.

#Next Step:


Go on to 
[Create A Heroku Account](create_a_heroku_account?back=osx_lion%23step10)