# Commit and Push to Heroku
## Goals
We just added a whole new feature. Let's push it to heroku so our friends can play with it.

## Steps
### Step 1: Redeploy
Type this in the terminal:

```text
git add .
git commit -m "Added topics"
git push heroku master
heroku run rake db:migrate
```

![](/images/info.png) There is a period after the word add in the first line

### Step 2: Check that it worked
Open your heroku app in the browser again by typing `heroku open`, then add "topics" to the end of the url.
So if your app is called at <http://fierce-meadow-4845.heroku.com/> it should look lile
<http://fierce-meadow-4845.heroku.com/topics>


You should see a page that looks shockingly similar to the one you had locally. Test that you can create new topics on Heroku. When you've had enough fun, move on.

## Explanation
* We've done the 'git' steps before, so we won't go over that again...
* `heroku run rake` executes a rake task on your server, in this case, `db:migrate`, just like you did locally.

## Checkpoint: Scaffolding another model

To pass this checkpoint, show your TA the following steps:

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

[Back to Contents](/curriculum/curriculum_toc)
