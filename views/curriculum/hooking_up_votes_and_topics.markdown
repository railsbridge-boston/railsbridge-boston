# Hooking Up Votes and Topics
## Goals
![topics_and_votes_table](/images/curriculum/topics_and_votes_table.png)

Because there is an explicit relationship between a topic and its
votes, we need to specify that. In this step, we'll explicitly
declare the relationship between votes and topics.

## Steps
### Step 1
Edit `app/models/topic.rb` so that it looks like this:

```ruby
class Topic < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :votes
end
```

### Step 2
Edit `app/models/vote.rb` so that it looks like this:

```ruby
class Vote < ActiveRecord::Base
  attr_accessible :topic_id
  belongs_to :topic
end
```

## Explanation
`has_many` and `belongs_to`:

* In rails, relationships between models are called associations.
* Associations (usually) come in pairs.
* A topic will have many votes so we put `has_many :votes` in the topic model.
* When you ask a topic for its votes, you get an array of votes for that topic.
* A vote is for a particular topic, so we put `belongs_to :topic` in the vote model.
* When you ask a vote for its topic, you get the topic for that vote.

## Next Step
Go on to [Allow People To Vote](allow_people_to_vote)
