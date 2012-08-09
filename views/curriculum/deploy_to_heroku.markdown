# Deploy to Heroku
## Goals
* OK. We've got an empty app and it has been added to git. What now?

**Ship it!**

## Steps
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

1. Add or change some code
1. Commit your changes (`git commit`)
1. Deploy your changes (`git push heroku`)
1. Boom! Your changes are live!
1. Repeat

## Next Step

Go on to [Creating A Migration](creating_a_migration)
