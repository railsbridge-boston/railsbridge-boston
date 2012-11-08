# Extra Credit: Ruby Classes
## Goals

* Understand what classes and objects are
* Learn how (and when) you should create classes
* Defining instance methods and class methods

## Step 1 - declaring a class

A class is just like a cake mold, it contains the format your 
cake is going to have, but it isn't the cake itself. You may reuse 
the same mold to create cakes with different properties, but 
they will all share the same form. These cakes that are produced out of 
the mold are what we call objects.

Classes are used to define two things, what properties your objects have
and what actions they can perform. Starting our example, we will create a 
`Movie` class that will have the `title`, `year` and `category` properties.

Let's see how we declare a class in Ruby:

```ruby
class Movie

  def initialize( title, year, category )
  	@title = title
  	@year = year
  	@category = category
  end

end
```

So, to declare a class, you just use the `class` keyword and you give it a name 
(`Movie` in this example). Inside the class definition you can declare 
your class properties (in this case, we have declared a method) and once you're
done, you close the `class` declaration with and `end`.

The method `initialize` is an special one, because it's the method that 
gets called when we are creating a new object of our class. Think like this,
if the `class` declaration is the mold, creating an object is baking a cake
using the mold. When you create an object from an specific class, it has all
properties that were declared on that class.

Let's see now how we create a new `Movie` object:

```ruby
men_in_black = Movie.new( 'Men in Black 3', 2012, 'Comedy' )
puts men_in_black.inspect
```

The output of running this code is going to be something like this:

```text
men_in_black = Movie.new( 'Men in Black 3', 2012, 'Comedy' )
puts men_in_black.inspect
=> #<Movie:0x007fb84b832600 @title="Men in Black 3", @year=2012, @category="Comedy">
```

When you call `Movie.new` a new `Movie` object is created and the 
`initialize` method is called with the parameters you gave to new. 
That's why when we the `men_in_black` object is printed, it's variables 
have the values we gave them. We say that the `new` method is a constructor, 
because it creates a new object out of the class you asked it to.

In Ruby, you don't have to make a special declaration to say what properties your
class has, once you attribute a value to a property (or use it in your class),
it becomes a property of your class. So, at the `initialize` method, at the moment
we do:

```ruby
@title = title
```

A property `@title` is now a part of the `Movie` object since we have defined
a value for it. And it happens the same way for all the other properties assigned
at this `initialize` method.

When you have something that starts with a single `@` sign, it means this is 
an instance variable. Instance variables are the properties that define what 
your object is. In our case, the `@title` instance variable contains the 
movie's title, that is, in this case, 'Men in Black 3'.

But we have a problem here, we can't read these properties of our object, 
because they're all instance variables. Let's move on to see how we can 
change this!

## Step 2 - Declaring our own instance methods

You now know how to declare a class, let's get deeper into declaring methods. Going back to the `Movie` class:

```ruby
class Movie

  def initialize( title, year, category )
  	@title = title
  	@year = year
  	@category = category
  end

  def title
    @title
  end

  def year
    @year
  end

  def category
    @category
  end

end
```

Look at this! We have declared three new methods at our `Movie` class. To
declare a method in Ruby, you just start it with the `def` keyword, followed
by the method name and then method parameters (this piece if optional). 
After the parameters you have the method body, that's where you place the 
method's code. Once you're done, close the method declaration with an `end`.

In our case, our methods are quite simple, they just return the instance 
variables (see the `@` sign? it's what tells us this is an instance variable)
of our `Movie` object, but as you move on programming your methods will grow
large and to a lot of different stuff.

Now we can not only create new movie objects, but also read their properties in our program:

```ruby
men_in_black = Movie.new( 'Men in Black 3', 2012, 'Comedy' )
puts "Title: #{men_in_black.title}"
puts "Year: #{men_in_black.year}"
```

To call an instance method, you just type the variable name, a dot and then the 
method name. If there are parameters, you must also provide them, if there are no
parameters, you can just call the method as we just did with `men_in_black.title`.

## Step 3 - Declaring instance methods with parameters

We were able to read values from our `Movie` object, but what if some of the 
information we had on our movie object was wrong. How do we fix it?

Let's declare a bunch of methods that are going to allow us to change the movie
properties as needed:

```ruby
class Movie

  def initialize( title, year, category )
  	@title = title
  	@year = year
  	@category = category
  end

  def title
    @title
  end

  def year
    @year
  end

  def category
    @category
  end

  def title=(new_title)
    @title = new_title
  end

  def year=(new_year)
    @year = new_year
  end

  def category=(new_category)
    @category = new_category
  end

end
```

Now we have three other methods declared that will allow us to change the 
`Movie` properties. The first thing you should notice about these methods is 
that they all have parameters, second is that they end with an `=` sign.

Now let's see how we can use these methods:

```ruby
men_in_black = Movie.new( 'Men in Black 3', 2012, 'Comedy' )
men_in_black.category = 'Sci-fi'
puts "Category: #{men_in_black.category}"
```

Once you run this code, it will print 'Sci-fi' as the category for the `men_in_black`
object because we have updated it. 

How did this happen?

The code you see above is just a shorthand version for:

```ruby
men_in_black.category=( 'Sci-fi' )
```

It's just calling the method `category=(new_category)` we had defined earlier and
the method implementation is to get the value given as a parameter and set it 
to the `@category` instance variable of our object.

So now anyone using our `Movie` object is going to be able to read it's properties
and also update them!

## Step 4 - attr_accessor and getting to know class methods

What we did so far is a very common pattern in Ruby programs. Since no one out
of your own class would be able to read or write instance variables like 
`@title`, we had to create methods to let people from the outside world read 
and write them.

No, this is not a defect, this is by design. Why, you ask.

When you're building programs, you want to expose as little information as possible,
so that you can change your code in the future without affecting people using it.
And to be able to do this, one of the very first things you need to do is hide
all the information that is not necessary for others to work with your code. That's
why Ruby programs need to explicitly make the instance variables available for 
other code, if you don't make it, they will not be able to access it and depend on it.

So, going back to the pattern, it's so common that there is a much smaller solution
to do the same, it's called the `attr_accessor` class method. Let's see how it
would look like:

```ruby
class Movie

  attr_accessor :title, :year, :category

  def initialize( title, year, category )
  	@title = title
  	@year = year
  	@category = category
  end

end
```

Yeah, I know. Why didn't we do it like this the first time? Because you're learning!

What happens here is that we call the `attr_accessor` class method and we 
give it a list of names, property names. It's implementation will then declare
the method we had declared before, exactly the same way. You don't see the code
in your class, but it's in there (and it's not magic, it's called metaprogramming, 
you will read about this in the future).

This leads us to another question, what is a class method?

Class methods are methods that are defined at the class level. Different than 
instance methods that require an object to be called, the class methods are
called directly in the class itself.

Let's look at an example, a method that says which one of two movies is the oldest:

```ruby
class Movie

  attr_accessor :title, :year, :category

  def initialize( title, year, category )
  	@title = title
  	@year = year
  	@category = category
  end

  def self.oldest( first_movie, second_movie )
    if first_movie.year > second_movie.year
      second_movie
    else
      first_movie
    end
  end

end
```

And then we use it:

```ruby
wreck_it_ralph = Movie.new('Wreck-it Ralph', 2012, 'Comedy')
cars = Movie.new('Cars', 2006, 'Comedy')
oldest = Movie.oldest( wreck_it_ralph, cars )
puts "Oldest movie is #{oldest.title}"
```

As you can see, instead of calling the `oldest` method in `wreck_it_ralph` or `cars`, 
we made the call directly at the `Movie` class, that's why we call them class methods,
because we call them at the class and not at the objects.

There are many ways to define class methods in Ruby, while they are slightly different,
they will work the same for our example (we will cover the differences later).
You can define a class method by adding `self.` before it's method name (as we did
on the previous example) and you can also do it like this:

```ruby
class Movie

  attr_accessor :title, :year, :category

  def initialize( title, year, category )
  	@title = title
  	@year = year
  	@category = category
  end

  class << self

    def oldest( first_movie, second_movie )
      if first_movie.year > second_movie.year
        second_movie
      else
        first_movie
      end
    end

  end

end
```

Now, instead of having a `self.` before the method name, you declare a special 
block with `class << self` where all methods defined will be class methods. This
is a much nicer solution if you're going to have many class methods in your class,
as you can just declare them all inside this block instead of having to remember
to add `self.` on every single declaration.

Going back to the `attr_accessor` call, instead of being magic, it's just a class
method defined on `Object` that our `Movie` class inherits, that's why we can call
it directly at the class body.

Oh, wait, inheritance? What do you mean by that? Curious? Keep reading!

## Step 5 - Inheritance

One of the pilars of object oriented development is that it allows us to reuse
code in many different ways and one of these ways is inheritance. With inheritance
you can create objects that inherit the characteristics and behaviors of other
objects. But let's stop talking and start doing:

```ruby
class Person

  attr_accessor :name, :social_security_number

  def initialize( name, social_security_number )
    @name = name
    @social_security_number = social_security_number
  end

end
```

Here we have a `Person` class that has a `name` and a `social_security_number` as 
properties. Moving on in our application, we get the information it's going to be
used at schools to manage students and teachers. Well, we already have `Person`, 
so we can possibly use that, can't we?

Hum, looks like we won't be able to. The company that has contracted us says teachers
and students will have a couple of different information associated with them. 
There will be some stuff that is shared betweem them, but there will also be 
stuff that's only for teachers and only for students.

What do we do then? We inherit!

The main goal of inheritance is to reuse code directly by saying that one class
inherits from another. When you inherit from another class, you reveive all 
properties and methods from that class, so you become an specialization of it. Let's
see how our teacher would look like:

```ruby
class Teacher < Person

  attr_accessor :title

  def initialize( name, social_security_number, title )
    super(name, social_security_number)
    @title = title
  end

end
```

