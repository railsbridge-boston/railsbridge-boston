(If you used RailsInstaller on Windows then you should already have 
user.name and 
user.email configured.)

Type this in the terminal:git config --global user.name "Your Actual Name"
git config --global user.email "Your Actual Email"

![](/img/warning.png)Use the same email address for heroku, git, github, and ssh.

#Verify


>Type this in the terminal:git config --get user.name

Expected result:your name

Type this in the terminal:git config --get user.email

Expected result:your email address

![](/img/info.png)Colored output in Git

Type this in the terminal:git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto

![](/img/warning.png)If you are using Windows, you may need to install AnsiCon to see colors (otherwise you'll see gibberish).

Go on to 
[Windows Colors](windows_colors?back=configure_git%23step)