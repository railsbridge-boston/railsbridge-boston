#Goals


*We just added a whole new feature. Let's push it to heroku so our friends can play with it.

#Steps


>[]()#Step 1:Redeploy


>Type this in the terminal:git add .
git commit -m "Added topics"
git push heroku master
heroku run rake db:migrate

![](/img/info.png)there is a period after the word add in the first line

[]()#Step 2:Check that it worked


>Open your heroku app in the browser again by typing 
heroku open, then add "topics" to the end of the url. So if your app is called at 
<http://fierce-meadow-4845.heroku.com/> it should look lile 
<http://fierce-meadow-4845.heroku.com/topics>


You should see a page that looks shockingly similar to the one you had locally. Test that you can create new topics on Heroku. When you've had enough fun, move on.

#Explanation


>*We've done the 'git' steps before, so we won't go over that again...


*heroku run rake executes a rake task on your server, in this case,

db:migrate, just like you did locally.

#Next Step:


Go on to 
[Voting On Topics](voting_on_topics?back=commit_and_push_to_heroku%23step2)