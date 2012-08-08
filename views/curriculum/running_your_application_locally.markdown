#Goals


*Let's fire up the application locally

#Steps


>[]()#Step 1:


>Type this in the terminal:bundle
rails server

[]()#Step 2:


>Point your web browser to 
[http://localhost:3000](http://localhost:3000)See your web app actually running!

[]()#Step 3:


>When at the terminal with your running rails server, Type Control+C to stop rails server, you can do this now.

Expected result:^C[2012-03-31 08:33:11] INFO  going to shutdown ...
[2012-03-31 08:33:11] INFO  WEBrick::HTTPServer#start done.
Exiting

#Explanation


>bundle installs software your application needs and prepares it to run.

rails server ran your application locally just like heroku will be running it on their servers.

This provides a very simple means to see your changes before you commit and push them to heroku.

Control+C is a way of closing or cancelling terminal programs. Since rails server runs forever, you need to interrupt it with Control+C.

#Next Step:


Go on to 
[Deploy To Heroku](deploy_to_heroku?back=running_your_application_locally%23step3)