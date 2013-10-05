# MVC and Associations
### Braulio Carreno
##### [@bcarreno](http://twitter.com/bcarreno)

<!SLIDE>

# What does MVC stand for?

* **M**odel
* **V**iew
* **C**ontroller

<!SLIDE>

# Ok, so what does it really mean?

Object Oriented Languages like Ruby use *metaphors* or *abstractions* to make code more human friendly.

We break down the system into pieces and interactions between those pieces.

<!SLIDE>

# MVC is a **design pattern**

Hint: it's just a better way for programmers to understand their own code.

* It gives us rules about what to put where
* It gives us consistency from application to application

<!SLIDE>

# When you hear MVC, remember:

* Models know my data and the business logic
* Views handle the presentation
* Controllers direct the traffic

<!SLIDE>

# The app directory

In terminal:

```text
$ ls app
app
├── controllers
├── helpers
├── models
└── views
```

<!SLIDE>

# Scaffolds Make It Easy!

* A scaffold (like the one you just generated) creates a model, controller, and set of views for you.
* **GREAT** for learning.

In terminal:

```
  $ rails generate scaffold article
```

<!SLIDE>

# Resources

* A resource is similar to a scaffold, but it doesn't do as much work, you have to fill some of the blanks
* This is what you'll use in the exercise

In terminal:

```
  $ rails generate resource article
```

<!SLIDE>

# The Model

![Model](http://carreno.me/assets/a/zegna.jpg)

<!SLIDE>

# The Model

![Model](/images/slides/mvc/model.png)

<!SLIDE>

# The Model

* The **data** components of my system
* How these pieces relate to each other with **associations**
* Validating objects to ensure good data gets in the system
* These depend on the "business" logic, ex: bookstore, blog, social network
* Where the CRUD interaction with the database happens!
  * Create
  * Read
  * Update
  * Delete

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

## One to Many Association

![OneToMany](/images/slides/mvc/association_one_to_many.png)

* An article **has_many** comments
* A comment **belongs_to** an article

<!SLIDE>

![OneToMany](/images/slides/mvc/association_one_to_many.png)

``` Ruby
  class Article < ActiveRecord::Base
    has_many :comments
  end

  class Comment < ActiveRecord::Base
    belongs_to :article
  end
```

<!SLIDE>

## One to One Association

![OneToOne](/images/slides/mvc/association_one_to_one.png)

* A user **has_one** favorite url
* A favorite url **belongs_to** a user

<!SLIDE>

![OneToOne](/images/slides/mvc/association_one_to_one.png)

``` Ruby
  class User < ActiveRecord::Base
    has_one :favorite_url
  end

  class FavoriteUrl < ActiveRecord::Base
    belongs_to :user
  end
```

<!SLIDE>

# Models: Validations

```ruby
 # app/models/topic.rb

 class Topic < ActiveRecord::Base
   # save will fail if a title is not specified
   validates_presence_of :title
 end

 topic = Topic.new(description: 'topic with no title')

 topic.save => false
 # the save fails and does not write the database
```

<!SLIDE>

# The Controller

![Serious Traffic Cop](http://screens.launchware.com/6e7866cab4c2d0c251620915cae4fd21.jpg)

<p style="text-align: center; font-size: 0.75em">http://sketchofshanghai.net</p>

<!SLIDE>

# The Controller

* Determines what view to render or where to send you
* Determines what models to show in the view (the bridge between the model and the view)
* Determines if you have access to the information? (**Authentication and Authorization**)

![Serious Traffic Cop](http://screens.launchware.com/6e7866cab4c2d0c251620915cae4fd21.jpg)

<p style="text-align: center; font-size: 0.75em">http://www.news-gazette.com</p>

<!SLIDE>

# Controllers

``` Ruby
 # app/controllers/topics_controller.rb

 class TopicsController < ApplicationController
   def new
     # the model that's made available to the view
     @topic = Topic.new
     # render the 'new' view
     render :new
   end

   def create
     @topic = Topic.new(params[:topic])
     if @topic.save
       # send back to the home page
       redirect_to '/'
     else
       # render the new view again
       render :new
     end
   end
 end
```

# The View (The Presenter)

![The Presenter](http://www.nicholasmirzoeff.com/O2012/wp-content/uploads/2012/06/at-last-Mad-Men.jpg)

<p style="text-align: center; font-size: 0.75em">http://www.nicholasmirzoeff.com</p>

# The View (The Presenter)

* What to show to the user
* The markup (the HTML that gets sent back to the user)

![The Presenter](http://www.nicholasmirzoeff.com/O2012/wp-content/uploads/2012/06/at-last-Mad-Men.jpg)

<p style="text-align: center; font-size: 0.75em">http://www.nicholasmirzoeff.com</p>

# The View: An Example

``` Ruby
 <!-- app/views/topics/new.html.erb -->
 <!-- a form for a user to create a new topic -->

 <h1>New Topic</h1>
 <%= form_for @topic do |f| %>
   <%= f.label :title %>
   <%= f.text_field :title %>

   <%= f.label :description %>
   <%= f.text_area :description %>

   <%= f.submit %>
 <% end %>
```

<!SLIDE>

# Remember: when their forces combine...

* Models take care of business!
* Views handle the presentation
* Controllers direct the traffic

<!SLIDE>

# Questions?

