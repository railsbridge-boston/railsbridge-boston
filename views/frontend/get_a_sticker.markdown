Find a volunteer and have them watch the next steps.

If this works - get a sticker from them for your computer!

#Verify tool installation


>![](/img/info.png)Most of the time, the version numbers don't have to match exactly. In general, if the 
first two numbers match, or if the full number you have is 
greater than the one below, then you're cool.

###If you're on OSX or Linux:


Type this in the terminal:rvm -v

Expected result:rvm 1.11.2 by Wayne E. Seguin (wayneeseguin@gmail.com) [https://rvm.beginrescueend.com/]

Type this in the terminal:sqlite3 --version

Expected result:3.7.5

###On all operating systems:


Type this in the terminal:ruby -v

Expected result:ruby 1.9.3p125 (2012-02-16 revision 34643) [x86_64-darwin11.3.0]

Type this in the terminal:git --version

Expected result:git version 1.7.4.4

Type this in the terminal:gem -v

Expected result:1.8.21

Type this in the terminal:rake --version

Expected result:rake, version 0.9.2.2

Type this in the terminal:bundle -v

Expected result:Bundler version 1.1.3

#Change to your home directory


>[]()#Option 1:Windows


>Type this in the terminal:cd c:\Sites


[]()#Option 2:Mac or Linux


>Type this in the terminal:cd ~

#Verify rails


>Type this in the terminal:rails -v

Expected result:Rails 3.2.6

Type this in the terminal:rails new sticker

Expected result:# ...most output omitted for brevity...
Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.

![](/img/info.png)On Linux, you may have to add this line to your Gemfile:

gem 'therubyracer', :platforms => :ruby

Type this in the terminal:cd sticker
rails generate scaffold drink name:string temperature:integer

Expected result:invoke  active_record
      create    db/migrate/20120331005122_create_drinks.rb
      create    app/models/drink.rb
      invoke    test_unit
      create      test/unit/drink_test.rb
      create      test/fixtures/drinks.yml
       route  resources :drinks
      invoke  scaffold_controller
      create    app/controllers/drinks_controller.rb
      invoke    erb
      create      app/views/drinks
      create      app/views/drinks/index.html.erb
      create      app/views/drinks/edit.html.erb
      create      app/views/drinks/show.html.erb
      create      app/views/drinks/new.html.erb
      create      app/views/drinks/_form.html.erb
      invoke    test_unit
      create      test/functional/drinks_controller_test.rb
      invoke    helper
      create      app/helpers/drinks_helper.rb
      invoke      test_unit
      create        test/unit/helpers/drinks_helper_test.rb
      invoke  assets
      invoke    coffee
      create      app/assets/javascripts/drinks.js.coffee
      invoke    scss
      create      app/assets/stylesheets/drinks.css.scss
      invoke  scss
      create    app/assets/stylesheets/scaffolds.css.scss

Type this in the terminal:rake db:migrate

Expected result:==  CreateDrinks: migrating ===================================================
-- create_table(:drinks)
   -> 0.0030s
==  CreateDrinks: migrated (0.0033s) ==========================================

Type this in the terminal:rails server

Expected result:=> Booting WEBrick
=> Rails 3.2.6 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2012-03-30 17:56:02] INFO  WEBrick 1.3.1
[2012-03-30 17:56:02] INFO  ruby 1.9.3 (2012-02-16) [x86_64-linux]
[2012-03-30 17:56:02] INFO  WEBrick::HTTPServer#start: pid=27148 port=3000
  TERMINAL

In your web browser, go to 
[http://localhost:3000/drinks](http://localhost:3000/drinks)


*Click on "New drink"


*Enter Cappuccino for the name


*Enter 135 for the temperature.


*Click on "Create Drink".You should see: 
![Drink was successfully created](get_a_sticker_you_should_see.png)


In your terminal, Hold Control and hit C to stop the rails server.

Expected result:=> Booting WEBrick
=> Rails 3.2.6 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2012-03-30 17:56:02] INFO  WEBrick 1.3.1
[2012-03-30 17:56:02] INFO  ruby 1.9.3 (2012-02-16) [x86_64-linux]
[2012-03-30 17:56:02] INFO  WEBrick::HTTPServer#start: pid=27148 port=3000
# ...most output omitted for brevity...
^C>> Stopping ...

18:00:58 - Installfest stopping
>> Stopping ...

#Verify git


>Make sure you're still in the sticker directory.

Type this in the terminal:git init

Expected result:Initialized empty Git repository in /home/steven/Code/ruby/sticker/.git/

Type this in the terminal:git add .

Type this in the terminal:git status

Expected result:# On branch master
#
# Initial commit
#
# Changes to be committed:
#   (use "git rm --cached <file>..." to unstage)
#
#       new file:   .gitignore
#       new file:   Gemfile
#       new file:   Gemfile.lock
#       new file:   README.rdoc
#       new file:   Rakefile
# ...most output omitted for brevity...

Type this in the terminal:git commit -m "Getting that sticker"

Expected result:[master (root-commit) 8cd0e44] Getting that sticker
 54 files changed, 1531 insertions(+)
 create mode 100644 .gitignore
# ...most output omitted for brevity...
 create mode 100644 test/unit/helpers/drinks_helper_test.rb
 create mode 100644 vendor/assets/javascripts/.gitkeep
 create mode 100644 vendor/assets/stylesheets/.gitkeep
 create mode 100644 vendor/plugins/.gitkeep

Type this in the terminal:git status

Expected result:# On branch master
nothing to commit (working directory clean)

#Verify heroku deploy


>Use your editor to open the Gemfile and find the line containing:

gem 
'sqlite3'

Remove this line and replace it with:

group 
:development 
do
  gem 
'sqlite3'

end

group 
:production 
do
  gem 
'pg'

end

Type this in the terminal:bundle install --without production

Expected result:Fetching gem metadata from https://rubygems.org/.........
# ...most output omitted for brevity...
Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem is installed.

Type this in the terminal:git add .
git commit -m "Add pg gem for Heroku."

Expected result:[master 4a275be] Add pg gem for Heroku.
 2 files changed, 6 insertions(+)

The name of your heroku app will be different. That is fine.

Type this in the terminal:heroku create

Expected result:Creating evening-wind-5284... done, stack is cedar
http://evening-wind-5284.heroku.com/ | git@heroku.com:evening-wind-5284.git
Git remote heroku added

Type this in the terminal:git push heroku master

Expected result:Counting objects: 7, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), 453 bytes, done.
Total 4 (delta 3), reused 0 (delta 0)

-----> Heroku receiving push
-----> Ruby/Rails app detected
-----> Detected Rails is not set to serve static_assets
       Installing rails3_serve_static_assets... done
-----> Configure Rails 3 to disable x-sendfile
       Installing rails3_disable_x_sendfile... done
-----> Configure Rails to log to stdout
       Installing rails_log_stdout... done
-----> Gemfile detected, running Bundler version 1.0.7
       Unresolved dependencies detected; Installing...
       Using --without development:test
# ...most output omitted for brevity...
-----> Compiled slug size is 6.1MB
-----> Launching...

Type this in the terminal:heroku run rake db:migrate

Expected result:Migrating to CreateDrinks (20120428044153)
==  CreateDrinks: migrating ===================================================
-- create_table(:drinks)
   -> 0.0084s
==  CreateDrinks: migrated (0.0085s) ==========================================

Type this in the terminal:heroku open

Expected result:Opening http://evening-wind-5284.heroku.com/

Append 
drinks to the end of your heroku url. For example, if your url was

<http://evening-wind-5284.heroku.com/,> then change it to 
<http://evening-wind-5284.heroku.com/drinks.>


You should see the same screen as you did at 
<http://localhost:3000/drinks> and be able to click "New Drink" and "Create Drink" as expected.

[]()#Step 3:Congratulations!


>You got a sticker!

#Next Step:


Go on to 
[Clean Up](clean_up?back=get_a_sticker%23step3)