# MVC and Associations
### Braulio Carreno
##### [@bcarreno](http://twitter.com/bcarreno)

<!SLIDE>

# What does MVC stand for?

* <strong>M</strong>odel
* <strong>V</strong>iew
* <strong>C</strong>ontroller

<!SLIDE>

# Ok, so what does it really mean?

Object Oriented Languages like Ruby use *metaphors* to make code more human friendly.

<!SLIDE>

# MVC is a <strong>design pattern</strong>.

Hint: it's just a better way for programmers to understand their own code.

* It gives us rules about what to put where
* It gives us consistency from application to application

<!SLIDE>

# When you hear MVC, remember this:

* Models take care of business!
* Controllers direct the traffic
* Views handle the presentation

<!SLIDE>

# The app directory

In terminal:

```
 #> ls app
```

<!SLIDE>

![NerdTree Screenshot](http://screens.launchware.com/9b7fa2ddba357e509279f0e0513ec652.jpg)

<!SLIDE>

# Scaffolds Make It Easy!

* A scaffold (like the one you just generated) creates a model, controller, and set of views for you.
* <strong>GREAT</strong> for learning.

In terminal:

```
  #> rails generate scaffold post
```


<!SLIDE>

# The Model (The Hard Worker)

![We Can Do It!](http://screens.launchware.com/d6622ad02739451dcef7436b244c056d.jpg)

<!SLIDE>

# The Model (The Hard Worker)

* Where the CRUD interaction with the database happens!
  * Create
  * Read
  * Update
  * Delete
* relating objects together with <strong>associations</strong>
* validating your objects to ensure good data gets in the system

![We Can Do It!](http://screens.launchware.com/d6622ad02739451dcef7436b244c056d.jpg)

<!SLIDE>

# The Model in Rails: ActiveRecord and ActiveModel

* Maps your real world objects to database tables with <strong>persistence</strong>
* Relate real world objects together with <strong>associations</strong>
* Keeps your data clean with <strong>validations</strong>

<!SLIDE>

# Related real world objects with <strong>associations</strong>

Objects can be <strong>related</strong> using foreign key relationships.

There are different types of relationships.

<!SLIDE>

![OneToMany](http://screens.launchware.com/f6bf450896f4f3367f262802a15d3bae.jpg)

* A post <strong>has_many</strong> comments
* A comment <strong>belongs_to</strong> a post

<!SLIDE>

![OneToMany](http://screens.launchware.com/f6bf450896f4f3367f262802a15d3bae.jpg)

``` Ruby
  class Post < ActiveRecord::Base
    has_many :comments
  end

  class Comment < ActiveRecord::Base
    belongs_to :post
  end
```

<!SLIDE>

![OneToOne](http://screens.launchware.com/c3941a04d4049395b49c2b262d8ea2cf.jpg)

* A user <strong>has_one</strong> favorite url
* A favorite url <strong>belongs_to</strong> a user

<!SLIDE>

![OneToOne](http://screens.launchware.com/c3941a04d4049395b49c2b262d8ea2cf.jpg)

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

``` Ruby
  #app/models/topic.rb
  class Topic < ActiveRecord::Base
    validates_presence_of :title #save will fail if a title is not specified
  end

  topic = Topic.new(description: 'a topic without a title')

  topic.save => false #the save fails and does not write the database
```

<!SLIDE>

# The Controller (The Traffic Cop)

![Serious Traffic Cop](http://screens.launchware.com/6e7866cab4c2d0c251620915cae4fd21.jpg)

<p style="text-align: center; font-size: 0.75em">http://sketchofshanghai.net</p>

<!SLIDE>

# The Controller (The Traffic Cop)

* Determines what view to render or where to send you
* Determines what models to show in the view (the bridge between the model and the view)
* Determines if you have access to the information? (<strong>Authentication and Authorization</strong>)

![Serious Traffic Cop](http://screens.launchware.com/6e7866cab4c2d0c251620915cae4fd21.jpg)

<p style="text-align: center; font-size: 0.75em">http://www.news-gazette.com</p>

<!SLIDE>

# Controllers

``` Ruby
  #app/controllers/topics_controller.rb
  class TopicsController < ApplicationController
    def new
      @topic = Topic.new #the model that's made available to the view
      render :new #render the 'new' view
    end

    def create
      @topic = Topic.new(params[:topic])
      if @topic.save
        redirect_to '/' #send back to the home page
      else
        render :new #render the new view again because something went wrong
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
  <%- end -%>
```

<!SLIDE>

# Remember: when their forces combine...

* Models take care of business!
* Controllers direct the traffic
* Views handle the presentation

<!SLIDE>

# Questions?

