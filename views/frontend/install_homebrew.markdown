Type this in the terminal:/usr/bin/ruby -e "$(/usr/bin/curl -fksSL https://raw.github.com/mxcl/homebrew/master/Library/Contributions/install_homebrew.rb)"

![](/img/warning.png)If that doesn't work, visit 
[https://github.com/mxcl/homebrew/wiki/installation](https://github.com/mxcl/homebrew/wiki/installation) and follow the instructions there.

#Verify


>Type this in the terminal:brew -v

Expected result:0.9

![](/img/info.png)Homebrew uses 
sudo to prepare your 
/usr/local directory. 'sudo' stands for 'super user do' and it's a way to get your computer to do anything you ask it to do. It is the subject of a famous cartoon:


![sudo make me a sandwich](http://imgs.xkcd.com/comics/sandwich.png)


$USER is a variable that contains your username. You can also run the command 
**whoami**
 in your terminal and it'll output your username.