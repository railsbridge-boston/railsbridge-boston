OS X 10.3-10.5 (Panther, Tiger, Leopard)

[]()#Step 1:XCode tools


>These are part of OS X, but are not installed by default.


*Insert your OS X DVD.


*Look for Xcode.mkpg - it may be under "Optional Installs"


*Double click to run the installer. It will take a while - the XCode tools are large.

[]()#Step 2:Git


>[]()#Option 1:Leopard or Panther


>[http://code.google.com/p/git-osx-installer/](http://code.google.com/p/git-osx-installer/)Click "Download the packages here" which will take you to a list of downloads. Pick Intel if you have an Intel Mac, and Universal Binary if you have a PowerPC Mac.

Go on to 
[Intel Or Ppc Mac](intel_or_ppc_mac?back=osx_panther%23step2-1)


[]()#Option 2:Tiger


>ask a TA to help you install git on Tiger

(you probably want to use MacPorts)

[]()#Step 3:Ruby, RubyGems, and Rails


>[]()#Option 1:Tiger (10.4) and Panther (10.3)


>visit 
[http://rubyosx.rubyforge.org/](http://rubyosx.rubyforge.org/)

Select the correct download in the right side of the page


[]()#Option 2:Leopard (10.5)


>use the built-in version of Ruby

![](/img/warning.png)Whenever you install a gem using the built-in Ruby you should precede 'gem install' with 'sudo'


Type this in the terminal:sudo gem install rubygems-update
sudo update_rubygems
sudo gem update --system
sudo gem install rails

If you are having this error:


ERROR:  Error installing rubygems-update: hoe requires RubyGems version >= 1.3.1


Try the steps in this order:


sudo gem update --system
sudo gem install rubygems-update
sudo update_rubygems
sudo gem install rails


For Tiger ONLY:


*Install the "X11 User" optional package from your OS X DVD.


*Install [
[http://www.macports.org/install.php](http://www.macports.org/install.php) MacPorts].


*Ruby: 
sudo port install ruby


*Gems:


*download [
[http://rubyforge.org/frs/?group_id=126](http://rubyforge.org/frs/?group_id=126) RubyGems]


*unpack: 
tar xzf rubygems-1.3.5.tgz


*cd rubygems-1.3.5


*Install:
ruby setup.rb


*Rails: 
sudo gem install rails --version 2.3.9 --no-rdoc --no-ri

[]()#Step 4:Install KomodoEdit


>Go on to 
[Install Komodo Edit For Mac](install_komodo_edit_for_mac?back=osx_panther%23step4)

[]()#Step 5:Other required libraries


>Type this in the terminal:sudo gem install heroku --no-rdoc --no-ri

[]()#Step 6:Create an SSH key


>Go on to 
[Create an SSH Key](create_an_ssh_key?back=osx_panther%23step6)

#Next Step:


Go on to 
[Create A Heroku Account](create_a_heroku_account?back=osx_panther%23step6)
