# Deploy to Heroku

## Goals
* OK. We've got an empty app and it has been added to git. What now?

**Ship it!**

## Steps

### Step 0: Confirm you have installed the heroku gem

Before you do anything, ensure that you have the `heroku` gem installed

```text
gem install heroku
```

### Step 1: Create a heroku application

Type this in the terminal

```text
heroku create
```

`heroku create` registers a new application on heroku's system.


### Step 2: Edit the Gemfile

Heroku will run our application slightly differently than our development computer does, which requires us to make a 
small change to our Gemfile.

Open the file called `Gemfile` in Sublime Text 2, or your preferred editor, and find the line containing:

```ruby
gem 'sqlite3'
```

**Remove that line** and replace it with:

```ruby
group :development do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end
```


### Step 3: Apply the Gemfile changes

Type this in the terminal

```text
bundle install --without production
```

Every time the Gemfile changes, you need to run `bundle install` for the changes to be processed. The processed version 
of the changes is stored in another file called `Gemfile.lock`.


### Step 4: Commit the Gemfile changes

There are now changes to Gemfile and Gemfile.lock that need to be committed before we can push to heroku.

Type this in the terminal

```text
git add .
git commit -m "Changed Gemfile for Heroku"
```

![](/images/info.png) There is a period after the word add in the third line.


### Step 5: Push changes to heroku

Type this in the terminal

```text
git push heroku master
```

This takes all changes you've committed locally and pushes them to heroku.


### Step 6: Visit your application

Type this in the terminal

```text
heroku open
```

This opens the new application in your browser.


## Explanation

The Gemfile is a list of all the Ruby libraries your application needs. What we've declared here is that we want to 
use the sqlite3 library while we're developing on our computer (the development group) but when deploying to heroku 
(the production group) we want to use the pg library, which is made for the type of database that heroku uses.

Bundler is how Ruby projects keep track of the gems that they use. We told bundler what we wanted to use in the Gemfile, 
now we need make sure those gems are installed. Since we don't have the type of database heroku does, we skip the 
production gems. Don't worry though! Bundler still logs them so Heroku will install them when they get your code.

While I realize that at this point this isn't all that exciting, the point is that it doesn't get more difficult than 
this as we add more functionality to the application. Your typical workflow will look like:

<img src="/images/curriculum/workflow.png" class="thumbnail"></img>

o. Add or change some code
1. Commit your changes (`git commit`)
1. Deploy your changes (`git push heroku`)
1. Boom! Your changes are live!
1. Repeat

## Next Step

Go on to [Creating A Migration](creating_a_migration)

* * *

## Extra Credit

### Step 7: Rename your application
When Heroku creates an application, it assigns a dynamically generated name. You can change the name of your application to whatever you want. To do this, first change into the app's git checkout directory.

Then, to rename an app from "oldname" to "newname", type this in the terminal:

```text
heroku apps:rename newname
```

This will change the subdomain of your app from http://oldname.herokuapp.com to http://newname.herokuapp.com/. This will also update your remote heroku git branch to git@herokuapp.com:newname.git.


To see a list of all the git remotes for your application, type

```text
git remote -v
```

![](/images/info.png) You can specify your app name when you create your app, by typing `heroku create your-app-name`. You can also buy a domain name and map it to the Heroku-generated name.


### Step 8: Check the Heroku logs
Type this in the terminal

```text
heroku logs -n 1000
```
This command will show the last 1000 lines of activity for your app.

![](/images/info.png) Logs are a stream of time-ordered events aggregated from the output streams of all your app’s running processes, system components, and backing services.

If you want to "tail" the logs, which means you will see a **live stream** of logs from your app on Heroku, type:

```text
heroku logs -n 1000 -t
```


### Step 9: Try out the Heroku console
Type this in the terminal

```text
heroku run console
```

This will launch a Rails console process attached to your local terminal so you can experiment with your Heroku app.


### Step 10: See your Heroku app configuration
Type this in the terminal

```text
heroku config
```

This shows a list of all the environment variables for your application. These environment variables are persistent and will remain in place across deploys and app restarts. You can add new variables with `heroku config:add NAME=value`. 

![](/images/info.png) Environment variables are useful for keeping track of configuration settings, such as credentials for an external service like Amazon S3.

## Next Step

Go on to [Creating A Migration](creating_a_migration)

