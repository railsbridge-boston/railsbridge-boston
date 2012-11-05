# Extra Credit: The Rails Console
## Goals
The topics page is looking a little lonely. Let's make some new topics we can
use for testing.

## Steps
### Step 1: Open the Rails Console

Type `rails console` into the terminal. You should see something like the
following:

```text
rails console
Loading development environment (Rails 3.2.5)
1.9.3p174 :001 >
```

The little caret (or greater-than sign) means that Rails is ready to take
commands.
Let's start with making a new topic.

### Step 2: Create a New Topic

Type the following command into the Rails Console:

```ruby
topic = Topic.new(title:"My Test Topic", description:"A little topic for testing with.")
topic.save
```

We just created a new topic in our database, using Rails!

If you would like to see it, you can start the server and visit
[http://localhost:3000/topics](http://localhost:3000/topics)

### Step 3: Create 100 New Topics!

Let's try something different, and make 100 topics all at once. Put the
following into the console.

```ruby
100.times do |number|
  Topic.create(title:"My Topic Number #{number}", description: "Another test.")
end
```

This created 100 new topics for us to test with.

### Step 4: Count Your Topics

Now we can find out how many topics we have in our database. Try the following:

```ruby
Topic.count
```

That should tell us how many topics there are in our database, and it should be
at least 101.

### Step 4: Quit the Console

All you need to do is type `quit` to leave the console. If that doesn't work,
try pressing `^C` (Control+C).

## Further Exploration
* Try creating some records on Heroku, instead of on your local machine (Hint: try `heroku run console` instead of `rails console`)
* Try making some changes to the Topics you create, or to the number of Topics.
  Be careful, though! If you make too many topics, you can always start over with
  `Topic.delete_all`.


## All Done!

Go ahead and go [back](/curriculum/curriculum_toc) to the main curriculum.
