# Deploy to Heroku

## Overview
We've got an empty app and it has been added to git. What now?

**Ship it!**

## Goals
* Deploy your app to the web

## Steps

### Step 0: Confirm you have installed the heroku toobelt

Before you do anything, ensure that you have the `heroku` toolbelt installed

```text
heroku --version
```

If heroku doesn't respond with its version, then you need to go to [Create a Heroku Account](/installfest/create_a_heroku_account),
follow the instructions, then come back here.

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

`gittyup` is a helper that simplifies copying your code to heroku. 


Type this in the terminal

```text
gittyup
```

This takes all changes you've committed locally and pushes them to heroku.
Gittyup will ask `enter commit message (blank to exit)`. Type `some changes to Gemfile` and hit return.

You'll see something like this:

```text
Commiting files with: git commit --message gemfile changes
[master 0268bd7] gemfile changes
 3 files changed, 54 insertions(+), 1 deletion(-)
 create mode 100644 Gemfile~

Pushing to heroku with: git push heroku master
```

The first time you push to heroku, you may see a message like this:

```text
The authenticity of host 'heroku.com (50.19.85.156)' can't be established.
RSA key fingerprint is 8b:48:5e:67:0e:c9:16:47:32:f2:87:0c:1f:c8:60:ad.
Are you sure you want to continue connecting (yes/no)? 
```
Your latop is cautioning that you've never connected to Heroku before, 
and your latop can't be absolutely sure that Heroku is who it says it is. 

Say `yes` and hit return.  It will reply:

```text
Warning: Permanently added 'heroku.com,50.19.85.156' (RSA) to the list of known hosts.
```


### Step 5: Visit your application

Find out the web URL of your application with this command:

```text
heroku apps:info
```

You should see some output. The last line should be the web URL of your
deployed Rails application.

Copy this URL into your web browser and load it.  This opens your new web
application in your browser.


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
1. Deploy your changes (`gittyup` or `git push heroku`)
1. Boom! Your changes are live!
1. Repeat

## Checkpoint: Deploying a Change to Heroku

Make a change to the "Welcome aboard" page, commit the change to Git, and deploy it to Heroku.

1. Edit the "Welcome aboard" default Rails welcome page. 
  You can find the file in `public/index.html`. 
  Open the file and find the line: `<h1>Welcome aboard</h1>`
  Change that to say `<h1>Ahoy, Matey! Welcome to RailsBridge!</h1>` or something you like.
  Remember to save your changes.
2. Run the rails server.
3. View your change in the browser at `localhost:3000`.
4. Now that you are satisfied with your change, `add` and `commit` the change to Git.
5. Push the change to Heroku.
6. View the change in the browser, live on Heroku.

Hints:
If you need a reminder on how to run the rails server, go back to [Running Your Application Locally](/curriculum/running_your_application_locally)  
The instructions for Git and Heroku are up above on this page.

## Extra Credit

Try doing some [more with Heroku](extra_credit/03_more_heroku).

## Next Step

Wait for the next lecture!  

[(…is the lecture over? Go to the next section)](/curriculum/creating_a_migration)
