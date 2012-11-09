# Commit and Push to Heroku
## Goals
We just added a whole new feature. Let's push it to heroku so our friends can play with it.

## Steps
### Step 1: Redeploy

See if you can do the following without reading the hints:

1. Add all your changes to Git,
2. commit them,
3. push them to Heroku,
4. and run 'migrate' rake task on Heroku with `heroku run rake db:migrate`.

<div class="hints">
  <p><a class="show-hints dropdown" href="#hints">Show me the hints<b class="caret"></b></a></p>
  <div class="CodeRay commands">
    <div class="code">
      <pre>
git add .
git commit -m "Added topics"
git push heroku master
heroku run rake db:migrate</pre>
    </div>
  </div>
</div>

### Step 2: Check that it worked
Open your heroku app in the browser again by typing `heroku open`, then add "topics" to the end of the url.
So if your app is called at <http://fierce-meadow-4845.heroku.com/> it should look lile
<http://fierce-meadow-4845.heroku.com/topics>


You should see a page that looks shockingly similar to the one you had locally. Test that you can create new topics on Heroku. When you've had enough fun, move on.

## Explanation
* We've done the 'git' steps before, so we won't go over that again...
* `heroku run rake` executes a rake task on your server, in this case, `db:migrate`, just like you did locally.

## Checkpoint: Scaffolding another model

Scaffold a `user` model, run the generated migration, add and edit some users locally, then deploy the changes to Heroku.

Hints:
You will be using all the same steps you used to create "Topics":

1. Run the `scaffold` command to generate a migration, model, controller and view for "Users". 
  Give the user a "name" attribute as a string.
2. Run the database migration you just generated.
3. Run the rails server.
4. View your user CRUD actions at "localhost:3000/users"
5. Add a user, then go back and edit the user's name.
6. Commit your changes to Git and deploy them to Heroku.
7. Run the database migration on Heroku.
8. Open up your Heroku app in your browser, and add and edit a user there.

## Extra Credit
Finish a little early? Try [working with the console](extra_credit/04_console).

## Next Step
Wait for the next lecture!  

[(…is the lecture over? Go to the next section)](/curriculum/voting_on_topics)
