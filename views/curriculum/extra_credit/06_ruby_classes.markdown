# Extra Credit: Ruby Classes
## Steps

## Step 1 - declaring a class

A class is a mold of what your objects are going to look like. In a class you
define the properties (instance variables) and actions (methods) your objects 
have so you can use them in your application.

Let's declare a class in Ruby:

```ruby
class Movie
end
```

You declare a class in Ruby with the `class` keyword followed by the class name
and then you close it with an `end` once you're done.

## Step 2 - creating objects

Now that we have the class declared, let's create an object of that class:

```ruby
some_movie = Movie.new
puts some_movie.inspect
```

When you do `Movie.new` you are asking Ruby to create an `new` object based on the
`Movie` class definition. The class itself doesn't have a lot of stuff yet, but 
we will add it shortly.

## Step 3 - declaring instance methods

Our class is somewhat empty at this moment, let's add some instance methods to it:

```ruby
class Movie

  def title
    @title
  end

  def title=(new_title)
    @title = new_title
  end

end
```

We now have two methods declared in our class and these two methods are for
acessing the `@title` instance variable and for setting a value to it, let's get
deeper into this:

```ruby
  def title
    @title
  end
```

A method definition starts with the `def` keyword followed by a method name and
a sequence of parameter names (which is optional). After this you have the method
body (that is the code inside the method) and then an `end` to let Ruby know
the method body has ended.

This method's body is just giving us the value of the `@title` instance variable
of our `Movie` object. Let's see how we can use them:

```ruby
some_movie = Movie.new
some_movie.title = 'Men in Black 3'
puts "The movie title is #{some_movie.title}"
```

As you can see, we first create a `Movie` object and then we call the methods
on it. This is because these are **instance methods** so you have to call them
at object instances.

In this example, we called both methods, first, we called `title=` to assign a 
value to the `@title` variable, then we called `title` to print it's value to 
the command line.

## Step 4 - declaring class methods

And not only of instance methods our classes live, they can also have class methods.
A class method is a method that is called on the class itself instead of an object.

Let's take a look at an example:

```ruby
class Movie

  def title
    @title
  end

  def title=(new_title)
    @title = new_title
  end  

  def year
    @year
  end

  def year=( new_year )
    @year = new_year
  end

  def self.older( one_movie, other_movie )
    if one_movie.year > other_movie.year
      other_movie
    else
      one_movie
    end
  end

end
```

And here's how we would use it:

```ruby
wreck_it_ralph = Movie.new
wreck_it_ralph.title = 'Wreck-it Ralph'
wreck_it_ralph.year = 2012

braveheart = Movie.new
braveheart.title = 'Braveheart'
braveheart.year = 1995

puts Movie.older( wreck_it_ralph, braveheart ).inspect
```

And this will print:

```text
#<Movie:0x007fb482025ab0 @title="Braveheart", @year=1995>
```

Which is exactly what we expected.

What is the difference here?

Instead of calling the method `older` in the `wreck_it_ralph` or `braveheart` 
objects, we called it at the class with `Movie.older`. This is because this is 
a class method and as such it's called directly in the class instead of on objects.

The other difference is that when we declare class method we append `self.` at it's 
name as in:

```ruby
  def self.older( one_movie, other_movie )
    if one_movie.year > other_movie.year
      other_movie
    else
      one_movie
    end
  end
```

Another way of declaring class methods is with the following syntax:

```ruby
class Movie

  class << self

    def older( one_movie, other_movie )
      if one_movie.year > other_movie.year
        other_movie
      else
        one_movie
      end
    end

  end

end
```

All methods declared inside of a `class << self` block will also become class
methods and can be called using `Movie.older` as the previous example.

## Step 5 - simplified properties

Since we just spoke about class methods, let's talk about one of the most class 
methods in the language, `attr_accessor`:

```ruby
class Movie
  attr_accessor :title, :year

  def self.older( one_movie, other_movie )
    if one_movie.year > other_movie.year
      other_movie
    else
      one_movie
    end
  end

end
```

The `attr_accessor` class method does the same we did manually declaring the 
`title` and `year` methods, it will generate methods to read and write the 
`@year` and `@title` instance variables in our `Movie` objects just as we did
manually.

You might ask yourself, if this is a class method, why am I not calling it 
as `Movie.attr_accessor` but calling it inside the class body itself?

Because when you are inside of a class body and you call a method without a 
target (without saying where it should be called, like this `attr_accessor`) it
gets called on the current class, that in our case is the `Movie` class.