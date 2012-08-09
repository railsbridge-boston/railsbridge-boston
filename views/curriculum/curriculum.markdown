# Saturday Curriculum
## Goal

To teach you Ruby on Rails we are going to use a "Real World"
example. You've decided to create a voting system for you and your
friends to play with. You've decided at a minimum, you'd like to
allow users to:

* view the topics sorted by number of votes
* vote on topics
* create, edit, and destroy topics

You've sketched up an initial screenshot of what you want it to look like:

<img src="/images/curriculum/finished_app.png" alt="screenshot of rails app" class="thumbnail"></img>

## Meta-Goal

When you have completed today's goal of getting the basic
application online you should understand:

* Basic Ruby syntax
* How to try your Ruby code (irb)
* How to go from requirements to a new working Rails application
* How to get your application online
* The basic tools a RoR developer uses (source control, editor, console, local server)

## Schedule

* 1-ish hour of ruby
* 4-ish hours of rails, broken up in 1-ish hour stepsThis is just a rough guideline, not a mandate. Some steps you'll go
over and some you'll go under. It'll all work out by the end of the
day... unless I really screwed something up. :D


## Requirements

We're going to be working with:

* ruby 1.9.3 installed via rvm (mac or linux) or railsinstaller (windows)
* rails 3.2.x
* bundler
* sqlite
* the text editor of your choice

Everything should be set up the night before during our install-fest. Please ensure you have everything working before 
you show up for railsbridge on Saturday.

You can verify that you have everything working by trying this out in your terminal:

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

* Bring up your terminal and open 2 tabs:
* One is for regular terminal stuffs
* One will be for irb (aka rails console). We'll explain later
* Open your browser fresh or hide any windows you already have open.
* Bring up one window with two tabs
* One for this content
* One for interacting with your app.
* Open your text editor and do not ever close it. We're not quitters.
* Hide all extra applications. Turn off twitter, IM, and all other distractions.

By minimizing the number of things you interact with, you reduce the
amount of time spent switching between them and the context lost as
you work through the lessons. Having 50 tabs open in your web browser gets confusing and wastes time.


## Format

Each lesson will look like this:

#Step Title
  
#Goal:
    
Description of the current step.
  
#Steps:
    
steps to take.

```ruby    
def code_to_write
  1 + 1
end
```    
  
#Explanation
    
Details of what the steps actually did... spell out the cause and effect.

### Next Step:

Go on to 
[Ruby Language](ruby_language?back=curriculum)
