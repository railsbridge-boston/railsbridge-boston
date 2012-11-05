# Extra Credit: More Heroku

## Steps

### Step 1: Rename your application
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


### Step 2: Check the Heroku logs
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


### Step 3: Try out the Heroku console
Type this in the terminal

```text
heroku run console
```

This will launch a Rails console process attached to your local terminal so you can experiment with your Heroku app.


### Step 4: See your Heroku app configuration
Type this in the terminal

```text
heroku config
```

This shows a list of all the environment variables for your application. These environment variables are persistent and will remain in place across deploys and app restarts. You can add new variables with `heroku config:add NAME=value`.

![](/images/info.png) Environment variables are useful for keeping track of configuration settings, such as credentials for an external service like Amazon S3.

## Finished

You can [return to the main curriculum](/curriculum/curriculum_toc).
