# Run Your Application on Your Machine
## Overview
With one command, Rails built a skeleton application. Let's fire it up. 

## Goals

* start a Rails server


### Step 1

Now we can run the application on your laptop. Type this in the terminal:

```text
bundle
```
Bundle updates helper libraries that your application uses. 


Now start your server. Type this in the terminal:

```text
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

Now let's stop the server. Switch from your web browser back to your terminal.  In the terminal, hold the CONTROL or CTRL key and hit the  C key. ( We'll abbreviate this as `Ctrl+c` in later steps.)

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
`Ctrl+c` is a way of closing or cancelling terminal programs. Since rails server runs forever, 
you need to interrupt it with `Ctrl+c`.


## Next Step
Wait for the next lecture!  

[(…is the lecture over? Go to the next section)](/curriculum/creating_a_migration)

[<<< Table of Contents](/curriculum/curriculum_toc)


