# Deploy to Heroku

## Overview
We've committed our code to git. What now?

**Ship it!**

## Goals
* Deploy your app to the web

## Steps

### Step 1: Push your code to Heroku

Type this in the terminal

```text
git push heroku master
```

This takes all changes you've committed locally and pushes them to heroku.

The first time you push to heroku, you may see a message like this:

```text
The authenticity of host 'heroku.com (50.19.85.156)' can't be established.
RSA key fingerprint is 8b:48:5e:67:0e:c9:16:47:32:f2:87:0c:1f:c8:60:ad.
Are you sure you want to continue connecting (yes/no)? 
```
Your laptop is cautioning that you've never connected to Heroku before, 
and your latop can't be absolutely sure that Heroku is who it says it is. 

Say `yes` and hit return.  It will reply:

```text
Warning: Permanently added 'heroku.com,50.19.85.156' (RSA) to the list of known hosts.
```

After a pause, you'll see a lot of output... finally ending in something like this:

```text
-----> Compressing... done, 21.5MB
-----> Launching... done, v7
       http://boiling-waters-1263.herokuapp.com/ deployed to Heroku

To git@heroku.com:boiling-waters-1263.git
   648c398..18c5229  master -> master
```

### Step 2: Update heroku on changes to your database schema

Type this in the terminal

```text
heroku run rake db:migrate
```

Remember when you ran `rake db:migrate` in the terminal? This does the same thing in heroku land. You should see:

```text
Running `rake db:migrate` attached to terminal... up, run.9433
== 20140516201901 CreateTopics: migrating =====================================
-- create_table(:topics)
   -> 0.0248s
== 20140516201901 CreateTopics: migrated (0.0251s) ============================
```

### Step 3: Visit your application

If you've forgotten the URL, type:

```text
heroku apps:info
```

Copy this URL into your web browser and load it.  This opens your new web
application in your browser. Hooray!


## Explanation

While I realize that at this point this isn't all that exciting, the point is that it doesn't get more difficult than
this as we add more functionality to the application. Your typical workflow will look like:

<img src="/images/curriculum/workflow.png" class="thumbnail"></img>

1. Add or change some code
1. If you added anything new in your db/migrate/ folder, rake your database (`rake db:migrate`)
1. Tell git about it ('git add .')
1. Commit your changes (`git commit -m "made some change"`)
1. Deploy your changes (`git push heroku master`)
1. If you added anything new in your db/migrate/ folder, rake your database on heroku ('heroku run rake db:migrate')
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


## Extra Credit

Try doing some [more with Heroku](extra_credit/03_more_heroku).

[<<< Table of Contents](/curriculum/curriculum_toc)
