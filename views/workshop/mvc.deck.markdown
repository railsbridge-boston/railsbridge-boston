# MVC and Associations
### Decklin Foster
##### [@decklin](http://twitter.com/decklin)
### Braulio Carreno
##### [@bcarreno](http://twitter.com/bcarreno)

<!SLIDE center>
# MVC

<!SLIDE>
# How to organize your code

<!SLIDE>
# Back in Intro to Ruby...

* We wrote small programs
* We ran them ourselves
* From the command line

<!SLIDE>
# Now, we're going to write a web app!

* Bigger program, more code
* Will be used by the people on the internet
* From a web browser

<!SLIDE>
# If you're nervous...

![Before there was doge...](http://upload.wikimedia.org/wikipedia/en/f/f8/Internet_dog.jpg)

<!SLIDE>
# Here's how we programmed in the Intro workshop...

<!SLIDE center>
# (just an example!)
    @@@ Ruby
    def dog_bark
      puts "Bark!"
      # ... maybe some other stuff ..
    end

    # Run the method
    dog_bark

<!SLIDE center>
# (just an example! #2)
    @@@ Ruby
    class Dog
      def bark
        puts "Bark!"
        # ... maybe some other stuff ..
      end
    end

    # Run the method
    Dog.new.bark

<!SLIDE center>
# (better)
    @@@ Ruby
    class Dog < Animal
      def make_noise
        puts "Bark!"
      end
    end
    class Cat < Animal
      def make_noise
        puts "Meow!"
      end
    end

    def greet(animal)
      animal.make_noise
    end

<!SLIDE center>
# Direct

<!SLIDE>
# "Imperative"
This is just a fancy word for a "do this, then, do that" style.

You'll hear programmers use it.

<!SLIDE>
# Does it scale?

<!SLIDE center>
![Pile of shipping containers falling over](http://www.cargolaw.com/images/disaster2007.Ital.Florida7.GIF)

<!SLIDE>
# What tools do we have?

<!SLIDE center>
![We can do it](http://www.veteranstoday.com/wp-content/uploads/2014/01/we-can-do-it.jpg)

<!SLIDE>
# 1. Object Orientation
(like the previous example)

<!SLIDE>
# 2. URLs

    http://www.railsbridgeboston.org/about

(you know these!)

(much more on that later!)

<!SLIDE>
# What do we want to *avoid*?

<!SLIDE>
![can u not](https://lh6.googleusercontent.com/-wGi0W5qO_S0/UsWfIOMgtgI/AAAAAAAAAEY/XjHrempJP3o/s0-d/canyounot.gif)

<!SLIDE>
# OK, What *do* we want to avoid?

We don't want users on the Internet to directly tell our code what to run.

![big-endian or little-endian](http://farm3.static.flickr.com/2021/2060860569_b42c04642a_m.jpg)

(There are many reasons this style is bad, but I'll just give one example...)

<!SLIDE center>
# Hackers!
![Lisbeth (well, this is what a "hacker" looks like in popular culture I guess)](http://www.writeups.org/img/inset/Lisbeth_Salander_h5.jpg)

<!SLIDE>
# Abstraction

<!SLIDE center>
# Abstraction in Ruby

High level languages like Ruby use *metaphors* or *abstractions* to make code more human friendly.

    $ irb
    >> "Rails" + "Bridge"
    => "RailsBridge"

<!SLIDE center>
# New abstractions

Ruby lets you create your own abstractions

    @@@ Ruby
    class Workshop
       # ... code here ...

(we now join this program already in progress)

    >> my_workshop.class
    => Workshop
    >> my_workshop.name
    => "RailsBridge"

<!SLIDE center>
# Resources

<!SLIDE center>
# "Things"

Imagine a social network type site:

* User
* Status
* Photo

<!SLIDE center>
![Fakebook](http://wireframesketcher.com/mockups/images/small/Facebook.jpg)

<!SLIDE center>
# Resources represent these "things" in the real world.

<!SLIDE>
# Users will ask us for information about resources
![Cat at work](http://www.travisbewley.com/wp-content/uploads/2013/05/37361-cats-cat-in-computer.jpg)

<!SLIDE center>
![Not pictured, a series of tubes](http://www.w3.org/wiki/images/1/1d/Article3.gif)

<!SLIDE center>
# GET /users/42

<!SLIDE center>
![not ALL ikea men](https://dsjanvisser.files.wordpress.com/2011/05/ikea1.jpg)

<!SLIDE center>
# Object Orientation!

<!SLIDE center>
# Objects

Users have IDs

    @@@ Ruby
    class User
        # ... code here ...

(once again, imagine IRB is already open)

    >> jane.class
    => User
    >> jane.id
    => 1234

<!SLIDE center>
# GET /users/1234

<!SLIDE center>
# Objects *model* resources

<!SLIDE center>
# Objects *model* resources (that represent real "things")

<!SLIDE center>
![Tongue twister](http://1.bp.blogspot.com/-JWAsRbJ2xts/UuEf_r_RFGI/AAAAAAAAA0E/_w60iOaPwNo/s1600/la_tongue_twister.gif)

<!SLIDE center>
# Models!

<!SLIDE center>
# Models

![Not the Museum of Science orrery](http://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Grand_orrery_in_Putnam_Gallery%2C_2009-11-24.jpg/640px-Grand_orrery_in_Putnam_Gallery%2C_2009-11-24.jpg)

We'll talk about how models work later.

For now, know that they are Ruby `Class`es.

<!SLIDE center>
# Where do they go?

    $ ls app
    app
    ├── controllers
    ├── helpers
    ├── models      <-- here!
    └── views

<!SLIDE center>
# 1/3!

<!SLIDE center>
# Let's go back...

<!SLIDE center>
# (part of the first example)
    @@@ Ruby
    def dog_bark
      puts "Bark!"
    end

<!SLIDE center>
# Output goes to the terminal

<!SLIDE center>
![Terminal with defaultish colors](/images/slides/mvc/terminalbark.png)

<!SLIDE center>
# On the Web... no "output"

<!SLIDE center>
![lost in the tubes again](http://www.w3.org/wiki/images/1/1d/Article3.gif)

<!SLIDE center>
# HTML

* Hypertext Markup Language
* You all know this
* We're going to assume basic familiarity with it

<!SLIDE center>
# Your app will generate HTML

<!SLIDE center>
# View

<!SLIDE center>
# a View presents a resource in a particular format

![ASL interpreter](http://www.gpc.edu/programsofstudy/sites/default/files/images/Interpreter018.secondary.jpg)

<!SLIDE center>
# Just HTML

<!SLIDE>
# What do views look like?
    @@@ ERB
    <h1><%= @name %>'s Status Updates</h1>

    <%= @statuses.each do |s| %>
      <div>
        <%= s %>
      </div>
    <% end %>

(this not good code, don't look too closely)

<!SLIDE>
# This is called "ERB"

* It doesn't say *how* to send the response back to the browser, just *what*
* HTML with embedded Ruby expressions
* Turns into a String of HTML ("rendering")

<!SLIDE>
# <% `some_code` %>

<!SLIDE>
# <%= `some_value` %>

<!SLIDE center>
# Location, unsuprisingly

    $ ls app
    app
    ├── controllers
    ├── helpers
    ├── models
    └── views       <-- here!

<!SLIDE>
# A more interesting View

    @@@ ERB
    <h1>New Topic</h1>
    <%= form_for @topic do |f| %>
      <%= f.label :title %>
      <%= f.text_field :title %>

      <%= f.label :description %>
      <%= f.text_area :description %>

      <%= f.submit %>
    <% end %>

<!SLIDE>
# Lots to look at there!

`form_for` is a helper that knows what kind of attributes a `Topic` (or other model) has.

Helpers help you keep logic out of your views.

You'll learn more as you create your app.

<!SLIDE center>
# 2/3!

<!SLIDE center>
# We've done something awesome

<!SLIDE center>
# Organization!
![things organized neatly](http://31.media.tumblr.com/d981d42fb48c643218c7f00115201dfc/tumblr_n19itn22Vo1qbycdbo1_500.jpg)

<!SLIDE center>
# Separated logic and presentation

<!SLIDE center>
# How do we connect them together?

<!SLIDE center>
# Controller

<!SLIDE>
# The Controller

![Serious Traffic Cop](http://cdn.newsday.com/polopoly_fs/1.2994620.1309388241!/httpImage/image.JPG_gen/derivatives/display_600/image.JPG)
<p style="text-align: center; font-size: 0.75em">http://newsday.com</p>

<!SLIDE>
# What does the Controller do?

* Determines what view to render or where to send you
  - the "plumbing" of the app
* Determines what models to show in the view
  - the bridge between the model and the view
* Determines if you have access to the information
  - **Authentication** and **Authorization**

<!SLIDE>
# Controller code
    @@@ Ruby
    class StatusesController < ApplicationController
      def new
        @status = Status.new      # Status is our model class
        render :new               # render the 'new' view
      end
    end

<!SLIDE>
# Controller code pt. 2
    @@@ Ruby
    class StatusesController < ApplicationController
      def create
        @status = Status.new(params[:status])
        if @status.save
          redirect_to '/'   # send back to the home page
        else
          render :new       # render the new view again
        end
      end
    end

<!SLIDE>
# Controller parts

The controller's methods are called "actions"

  * They create and work with instances of Models
  * And render Views
  * Or other kinds of responses

<!SLIDE>
# Now we've seen all three letters of MVC

* **M**odel
* **V**iew
* **C**ontroller

<!SLIDE>
# MVC is an architectural style

You may also hear "design pattern", but I like the architecture metaphor because:

<!SLIDE>
# From small...
![The shell script of housing](http://upload.wikimedia.org/wikipedia/commons/thumb/9/91/Lotam_Mud_Hut.JPG/640px-Lotam_Mud_Hut.JPG)

<!SLIDE>
# To big...
![Greenspun's tenth rule](http://img593.imageshack.us/img593/6258/sagradafamilia007.jpg)

<!SLIDE>
# To standard
![Boring is good](http://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Wood-framed_house.jpg/640px-Wood-framed_house.jpg)

<!SLIDE>
# TMTOWTDI

<!SLIDE>
![partial nope to avoid needing TW](images/slides/mvc/nope.gif)

<!SLIDE>
# Convention over configuration

Instead of choosing how to organize our code, or where to put each part of the M, V, and C, Rails has a convention.

* It's a better way for programmers to understand their own code.
* It provides rules about what to put where
* It hides irrelevant detail
* Programmers from one app can understand and collaborate on another app more easily

<!SLIDE center>
# One example we've seen

No need to spend time deciding where to put your files!

    $ ls app
    app
    ├── controllers
    ├── helpers
    ├── models
    └── views

<!SLIDE>
# And...

* It allows us to lean on the framework
* Tedious and tricky parts are handled for you
* Using patterns that have been tested and proved in the real world

<!SLIDE>
# Rails does the heavy lifting
![The dozer will not clear a path](http://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Construction_worker_at_Westlake_Center%2C_1988.jpg/640px-Construction_worker_at_Westlake_Center%2C_1988.jpg)

<!SLIDE>

# When you hear MVC, remember:

* Models know your data
* Views handle the presentation
* Controllers direct the traffic

<!SLIDE>
# Let's use it!

<!SLIDE>
# Let's use it!

If you've created the Suggestotron app already, we won't touch it here.

For this example, you can create a temporary app and delete it after.

Following along is optional!

<!SLIDE>
# If you want to follow along

In your command line:

    $ cd ~/workspace
    $ rails new scratch
    $ cd scratch

(If you're not ready for this yet, it's OK! I'm going to show all the code I talk about here.)

<!SLIDE>

# Scaffolds Make It Easy

A scaffold creates a model, controller, and set of views for you. **GREAT** for learning.

    $ rails generate scaffold article

You can create a scaffold with attributes already included:

    $ rails generate scaffold article title:string body:text

<!SLIDE>

# Generating Resources

A resource is similar to a scaffold, but it doesn't do as much work, you have to fill some of the blanks.

In your command line:

    $ rails generate resource comment

<!SLIDE>
# Let's check out that model

<!SLIDE>
# Let's check out that model
![Moisture is the essence of wetness, and wetness is the essence of beauty](http://carreno.me/assets/a/zegna.jpg)

<!SLIDE>
# Let's check out that (ahem) Model

    @@@ Ruby
    class Article < ActiveRecord::Base
    end

<!SLIDE>
# ActiveRecord::Base

<!SLIDE>
# ActiveRecord::Base

* Classes can *inherit* from other classes. (like `Animal` earlier)
* `ActiveRecord` is the part of Rails that talks to the database.

<!SLIDE>
# What Models Do

<!SLIDE>
![Hey it's that orrery again](http://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Grand_orrery_in_Putnam_Gallery%2C_2009-11-24.jpg/640px-Grand_orrery_in_Putnam_Gallery%2C_2009-11-24.jpg)

* The **data** components of my system
* How these pieces relate to each other with **associations**
* Validating objects to ensure good data gets in the system
* These depend on the "business" logic, ex: bookstore, blog, social network

<!SLIDE>
# CRUD interaction with the database

* **C**reate
* **R**ead
* **U**pdate
* **D**elete

This is the standard set of things you can do with a database.

Models allow you to *abstract* these low-level operations.

<!SLIDE>

# The Model in Rails: ActiveRecord and ActiveModel

* Maps your real world objects to database tables with **persistence**
* Relate real world objects together with **associations**
* Keeps your data clean with **validations**

<!SLIDE>
# Relate real world objects with **associations**

Objects can be **related** using foreign key relationships.

There are different types of relationships.

<!SLIDE>
# A Blog

<!SLIDE>
# What are our "things"?

* Article
* Comment
* User

Let's look at the Article model. What attributes do we want?

    @@@ Ruby
    >> a = Article.new
    >> a.id = 123
    >> a.title = "This Programmer Created An Object. You Won't Believe What Happened Next."
    >> a.body = "(Bob, write some copy ASAP.)"
    >> a.comments = []

<!SLIDE>
## One to Many Association

![OneToMany](/images/slides/mvc/association_one_to_many.png)

* An article **has many** comments
* A comment **belongs to** an article

<!SLIDE>
## One to Many Association code

![OneToMany](/images/slides/mvc/association_one_to_many.png)

    @@@ Ruby
    class Article < ActiveRecord::Base
      has_many :comments
    end

    class Comment < ActiveRecord::Base
      belongs_to :article
    end

<!SLIDE>

## One to One Association

![OneToOne](/images/slides/mvc/association_one_to_one.png)

* A user **has one** credit card
* A credit card **belongs to** a user

(Is this true in the real world? No. That's OK.)

<!SLIDE center>
# It's only a model
<img src="http://37.media.tumblr.com/a9ec743ae118a0cc203d9e05cbdb8d51/tumblr_mvi4qnpcwC1rraalgo6_400.gif" width=640 height=360>

<!SLIDE>
# One to One Association code

![OneToOne](/images/slides/mvc/association_one_to_one.png)

    @@@ Ruby
    class User < ActiveRecord::Base
      has_one :credit_card
    end

    class CreditCard < ActiveRecord::Base
      belongs_to :user
    end

<!SLIDE>
# Models: Validations

A model can ensure that its objects are "valid".

    @@@ Ruby

    class Article < ActiveRecord::Base
      # save will fail if a title is not specified
      validates_presence_of :title
    end

and then...

    @@@ Ruby
    doge = Article.new(:body => "wow      such blog")

    # evaluates to false and does not
    # write to the database
    doge.save

<!SLIDE>
# Models have...

* Associations
* Validations

Both let you concisely express a lot of "business logic"

You will also add your own business logic with code.

<!SLIDE>
# So...

Now you know the three pillars that you will use to build apps: **M**odels, **V**iews, and **C**ontrollers.

![Generic three-pillar image](http://cdn2.hubspot.net/hub/69576/file-15310885-jpg/images/3-pillars-of-successful-online-marketing.jpg?t=1364704108000)

<!SLIDE>
# Remember: when their forces combine...

* Models take care of business!
* Views handle the presentation
* Controllers direct the traffic

<!SLIDE>

# Questions?

