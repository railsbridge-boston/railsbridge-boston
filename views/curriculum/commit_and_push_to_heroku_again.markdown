# Commit and Push to Heroku, Again
## Goals
We just made some awesome changes. Let's push them so our friends can play with it.

## Steps
See if you can remember how to do the following without reading the hints:

Add all your changes to Git, commit them, push them to Heroku, and run the 'migrate' rake task on Heroku.

<div class="hints">
  <p><a class="show-hints dropdown" href="#hints">Show me the hints<b class="caret"></b></a></p>
  <div class="CodeRay commands">
    <div class="code">
      <pre>
git add .
git commit -m "Added votes"
git push heroku master
heroku run rake db:migrate</pre>
    </div>
  </div>
</div>

## Explanation
We commit our changes, push them out and run the remote migration... By this time it should be fairly old hat.

## Checkpoint: Vote belongs_to User

Let's try another association exercise. This won't change anything in the view, so you won't see
any changes if you push to Heroku.

Set an association so Vote belongs_to a User, and User has_many Votes, just like you associated votes with a topic.

You've never generated a migration by itself, use these steps:

1. Create a migration to add an integer "user_id" to the votes table.

    Run `rails generate migration add_votes_user_id`
    You should see something like this:

    ```text
    invoke  active_record
    create    db/migrate/20121105020720_add_votes_user_id.rb
    ```

2. Open the migration file that was just created and edit it so it looks like this:

    ```ruby
    class AddVotesUserId < ActiveRecord::Migration
      def up
        add_column :votes, :user_id, :integer # add column :user_id to the :votes table
      end

      def down
      end
    end
    ```

3. Run the migration

4. Edit the Vote and User models so that Vote belongs_to User. 
    (If you need help remembering how to do this, take another look at [Hooking Up Votes and Topics](/curriculum/hooking_up_votes_and_topics))

5. Verify that everything is hooked up correctly.

    We won't add this Vote belongs_to User association to the view, because that would take too long, 
    but you can verify that everything is working in the Rails console.  

    Open up up Rails console by typing in the terminal: `rails console`  

    You are now in an irb session that has your whole Rails app pre-loaded!  
    Create a user, and a vote:  

    ```ruby
    vote1 = Vote.create
    user1 = User.create(name: 'Amelia Earhart')
    ```

    Now set the `user` on the vote you just created.

    ```ruby
    vote1.user = user1
    vote1.save
    ```

    If everything worked, you will be able to access `vote1`'s user:

    ```ruby
    vote1.user
    ```

    should return:

    ```text
    => #<User id: 1, name: "Amelia Earhart">
    ```

    It works! `vote1` now "belongs_to" `user1`!  

    Now check that `user1` can access its votes:

    ```ruby
    user1.votes
    ```

    should return:

    ```text
    => [#<Vote id: 1, topic_id: nil, user_id: 1>]
    ```

    That works too! `user1` "has_many" votes!  
    You can exit rails console by typing `exit`

## Extra Credit
If you already tried working with the [Rails console](extra_credit/04_console),
why not [add some pagination](extra_credit/05_pagination)?

## Next Step
Wait for the next lecture!  

[(…is the lecture over? Go to the next section)](/curriculum/setting_the_default_page)
