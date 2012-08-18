# Saturday Curriculum

## Goal

To teach you Ruby on Rails we are going to use a "Real World"
example. You've decided to create a voting system for you and your
friends to play with. You've decided at a minimum, you'd like to
allow users to:

* View the topics sorted by number of votes
* Vote on topics
* Create, edit, and destroy topics

You've sketched up an initial screenshot of what you want it to look like:

<img src="/images/curriculum/finished_app.png" alt="screenshot of rails app" class="thumbnail"></img>

## Meta-Goal
When you have completed today's goal of getting the basic
application online you should understand:

* Basic Ruby syntax
* How to try your Ruby code (i.e. irb)
* How to go from requirements to a new working Rails application
* How to get your application online
* The basic tools a RoR developer uses (source control, editor, console, local server)

## Schedule
* 1-ish hour of Ruby
* 4-ish hours of Rails, broken up in 1-ish hour steps

This is just a rough guideline, not a mandate. Some steps you'll go
over and some you'll go under. It'll all work out by the end of the
day.


## Requirements
We're going to be working with:

* Ruby 1.9.3 installed 
* Rails 3.2.x
* Bundler
* SQLite
* Heroku
* Git
* The text editor of your choice

You can verify that you have everything working by trying this out in a terminal window:

```ruby
$ irb
>> 1 + 2
=> 3
>> require "active_support"
=> true
>> exit
$
```

If you can do that, you are probably good to go.


## Working Effectively and Efficiently
I highly recommend you do the following:

* Bring up your terminal program and open 2 tabs or windows:
  * One is for regular terminal stuff
  * One will be for irb (or the rails console). We'll explain later.
* Open a fresh browser window or hide others you already have open.
* Bring up one window with two tabs
  * One for this content
  * One for interacting with your app
* Open your text editor and do not ever close it. We're not quitters.
* Hide all extra applications. Turn off Twitter, IM, and all other distractions.

By minimizing the number of things you interact with, you reduce the
amount of time spent switching between them and the context lost as
you work through the lessons. Having 50 tabs open in your web browser gets confusing and wastes time.


## Format
Each lesson will look like this:

<div id="lesson-format">
  <h2>Step Title</h2>
  <h2>Goal</h2>
  <p>Description of the current step.</p>
  <h2>Steps</h2>
  <p>Steps to take.</p>

  <pre>
  def code_to_write
    1 + 1
  end </pre>

  <h2>Explanation</h2>
  <p>An explanation of what the steps actually did.</p>

</div>

### Next Step
Go on to [Ruby Language](ruby_language)
