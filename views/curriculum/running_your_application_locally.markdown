# Run Your Application on Your Machine
## Goals

* Let's fire up the application locally


### Step 1

Type this in the terminal

```text
bundle
rails server
```

You should see something like this:

```text
$ rails server
=> Booting WEBrick
=> Rails 3.2.2 application starting in development on http://0.0.0.0:3000
=> Call with -d to detach
=> Ctrl-C to shutdown server
[2012-08-08 23:53:15] INFO  WEBrick 1.3.1
[2012-08-08 23:53:15] INFO  ruby 1.9.3 (2012-04-20) [x86_64-darwin11.4.0]
[2012-08-08 23:53:15] INFO  WEBrick::HTTPServer#start: pid=44455 port=3000
```
This means the server is running and waiting for connections.

### Step 2

Point your web browser to [http://localhost:3000](http://localhost:3000). See your web app actually running!

It should look like this:

<img src="/images/curriculum/Start_page.png" class="thumbnail"></img>


### Step 3

When at the terminal with your running rails server, Type `Ctrl+C` to stop rails server, you can do this now.
Expected result:

```text
^C[2012-03-31 08:33:11] INFO  going to shutdown ...
[2012-03-31 08:33:11] INFO  WEBrick::HTTPServer#start done.
Exiting
```

## Explanation

`bundle` installs software your application needs and prepares it to run.  
`rails server` ran your application locally just like heroku will be running it on their servers.
This provides a very simple means to see your changes before you commit and push them to heroku.  
`Ctrl+C` is a way of closing or cancelling terminal programs. Since rails server runs forever, 
you need to interrupt it with `Ctrl+C`.

## Next Step

Go on to [Deploy To Heroku](deploy_to_heroku)
