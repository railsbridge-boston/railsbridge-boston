# Voting on Topics
## Goals
* Create a model for votes
![Topics Table](/images/curriculum/votes_table.png)

Every topic in suggestotron can be voted on. In order to count votes, we need to record votes. We'll add that table now.

## Steps
Type this in the terminal:

```text
rails generate resource vote topic_id:integer
rake db:migrate
```

## Explanation
* Just like before, we're creating a new model named "vote"
* The only thing really different is the integer we added called `topic_id`.
* `topic_id` is the data we need to draw the line between votes and topics.
* We didn't generate a full scaffold this time because we aren't
going to do the full CRUD for votes; they're just going to be
considered part of topics as-is.

## Next Step:
Go on to [Hooking Up Votes And Topics](hooking_up_votes_and_topics)
