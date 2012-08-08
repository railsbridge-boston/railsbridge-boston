[]()#Step 1:Change to your home directory


>[]()#Option 1:Windows


>Type this in the terminal:cd c:\Sites


[]()#Option 2:Mac or Linux


>Type this in the terminal:cd ~

[]()#Step 2:Create a new Rails app


>Type this in the terminal:rails new test_app

The command's output is voluminous. :-)

![](/img/info.png)On Linux, you may have to add this line to your Gemfile:

gem 'therubyracer', :platforms => :ruby

Type this in the terminal:cd test_app

Type this in the terminal:rails server

![](/img/info.png)Shortcut: Just type 'rails s'

Throughout your Rails programming career you're going to type 
rails server a


lot.  In fact, you'll type this so much that DHH and the Rails Core team


decided to save you 5 keystrokes per server restart.  Simply typing 
rails s

is the same as 
rails server.

The first command should produce no output.


If "rails server" starts up with no errors, you're golden! It'll look something like this:

Expected result:=> Booting WEBrick
=> Rails 3.2.6 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2010-09-30 21:04:12] INFO  WEBrick 1.3.1
[2010-09-30 21:04:12] INFO  ruby 1.9.2 (2010-08-18) [x86_64-darwin10.4.0]
[2010-09-30 21:04:12] INFO  WEBrick::HTTPServer#start: pid=24805 port=3000

If it does, congratulations! You've successfully installed Ruby AND Rails and started your server.

![](/img/info.png)If it doesn't work...

Go on to 
[Diagnostics For Windows](diagnostics_for_windows?back=create_and_deploy_a_rails_app%23step2)

Go on to 
[Diagnostics For Rvm](diagnostics_for_rvm?back=create_and_deploy_a_rails_app%23step2)

*In your browser, go to 
[http://localhost:3000](http://localhost:3000)![Successful Rails Install](successful-rails-install.jpg)


*Back in the Terminal window where you ran 
rails server, type 
**Control-C**
 to kill(stop) the server.

![](/img/warning.png)On Windows, sometimes Control-C doesn't work. In that case, look for the key called 'Break' or 'Pause' and press Control-Break.

[]()#Step 3:Generate a database model


>Type this in the terminal:cd test_app
rails generate scaffold user name:string email:string address:text active:boolean
rake db:migrate
rails server

In the browser, visit 
[http://localhost:3000/users](http://localhost:3000/users)

Click 
New user to create a user to make sure we can save to the database. (The window where you ran 
rails server will display debugging information as you do so.)

In your Terminal window where you ran 
rails server, type Control-C to kill(stop) the server.

[]()#Step 4:Use git


>Type this in the terminal:cd test_app
git init

Expected result:Initialized empty Git repository in c:/Sites/test_app/.git/

Type this in the terminal:git add -A

![](/img/info.png)git add

With Git, there are usually many ways to do very similar things.


*git add foo.txt adds a file named 
foo.txt


*git add . ("git add dot") adds all new files and changed files, but 
keeps files that you've deleted


*git add -A adds everything, including deletions"Adding deletions" may sound weird, but if you think of a version control system as keeping track of 
changes, it might make more sense.

Type this in the terminal:git commit -m "initial commit"

Expected result:a lot of lines like create mode 100644 Gemfile

Type this in the terminal:git log

Expected result:(Your git name and "initial commit" message.)

[]()#Step 5:Deploy your app to Heroku


>[]()#Step 1:Create a Heroku application from this local Rails application.


>The very first time you use 
heroku you must enter your Heroku email address and password.

Type this in the terminal:heroku create

Expected result:Enter your Heroku credentials.
Email: myemail@example.com
Password:
Uploading ssh public key /Users/smei/.ssh/id_rsa.pub
Creating floating-winter-18... done, stack is cedar
http://floating-winter-18.heroku.com/ | git@heroku.com:floating-winter-18.git
Git remote heroku added

Type this in the terminal:git remote show

Expected result:heroku

If you get messages here complaining about public keys it's probably due to some confusion with SSH key usage by another app on your computer.  Call a volunteer over to help you figure it out.  Luckily this only needs to be done the first time you create a Heroku app.

[]()#Step 2:Prepare your rails app for deploying to Heroku


>Find your test_app and open it in a text-editor.


Inside, find a file named Gemfile.


Edit your Gemfile and change the line:


gem 'sqlite3'


To this:


group :development, :test do
  gem 'sqlite3'
end
group :production do
  gem 'pg'
end

Type this in the terminal:bundle install --without production

if this fails, edit 
config/environments/production.rb

[]()#Step 3:Add the changes to git


>Type this in the terminal:git add .
git commit -m "Updates for heroku deployment"

[]()#Step 4:Deploy (push) to heroku


>Type this in the terminal:git push heroku master

It may ask: "The authenticity of host 'heroku.com (75.101.145.87)' can't be established. RSA key fingerprint is 8b:48:5e:67:0e:c9:16:47:32:f2:87:0c:1f:c8:60:ad. Are you sure you want to continue connecting (yes/no)?" Type 
yes and hit 
.

Expected result:The authenticity of host 'heroku.com (75.101.145.87)' can't be established.
RSA key fingerprint is 8b:48:5e:67:0e:c9:16:47:32:f2:87:0c:1f:c8:60:ad.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'heroku.com,75.101.145.87' (RSA) to the list of known hosts.
Counting objects: 60, done.
Compressing objects: 100% (54/54), done.
Writing objects: 100% (60/60), 79.03 KiB, done.
Total 60 (delta 10), reused 0 (delta 0)

-----> Heroku receiving push
-----> Rails app detected
       Compiled slug size is 080K
-----> Launching...... done
       App deployed to Heroku

To git@heroku.com:floating-winter-18.git
 * [new branch]      master -> master

![](/img/warning.png)Be sure to find and learn your Heroku application name in the output.

[What to do if git seems stuck](what_to_do_if_git_seems_stuck)

Type this in the terminal:heroku run rake db:migrate

Expected result:Running rake db:migrate attached to terminal... up, run.1
Migrating to CreateUsers (20111204065949)
==  CreateUsers: migrating ====================================================
-- create_table(:users)
   -> 0.0122s
==  CreateUsers: migrated (0.0123s) ===========================================

The long number after CreateUsers is a timestamp. Yours will be different!

[]()#Step 5:Visit your new application


>In the browser, go to your application's URL. You'll need your Heroku application name.

![](/img/info.png)To find your Heroku application name

Type this in the terminal:heroku info

The URL for your app is 
application name.heroku.com -- so with the example output in the previous step, it would be 
floating-winter-18.heroku.com. Verify you see the welcome page. Leave this browser window open.

![](/img/info.png)To quickly open your heroku application in a browser

Type this in the terminal:heroku open

In the browser, add 
/users to the end of the URL. Verify you see the user list page.

Create a new user to verify you can write to the database on Heroku.

#Next Step:


Go on to 
[Get A Sticker](get_a_sticker?back=create_and_deploy_a_rails_app%23step5)