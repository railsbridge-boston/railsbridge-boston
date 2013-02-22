!SLIDE bullets
# Intro to Ruby

!SLIDE bullets
# What is Ruby?
## Ruby is a programming language
### Variables
### Control Structures
### Comments
## Ruby is object-oriented
### Objects & methods
### Classes & subclasses


# Ruby is designed to be intuitive and fun for programmers!
# Ruby's creator Matz says:
> "I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language."

!SLIDE bullets
# Basic Programming Concepts
## Variables
### Variables are words that hold information of any kind
### We can name them anything we want
    my_first_variable = 5
    => 5
    my_great_variable = "hi"
    => "hi"
    my_first_variable + 4
    => 9
### We can change the value of a variable anytime
    my_first_variable = 4
    my_first_variable + 4
    => 8

!SLIDE
# Basic Programming Concepts
## Control Structures
### <code>if</code>: see if a condition is true
    if my_first_variable > 1
      return "it's greater than 1"
    else
      return "it's less than 1"
    end
    => "it's greater than 1"
### <code>unless</code>: see if a condition is false 
### <code>until</code>: repeat until condition is true
### <code>for</code>: repeat for each item in a list
    for i in ["apple", "orange", "banana"]
       # do stuff to each fruit
    end
#### Control structures in Ruby end with <code>end</code>


!SLIDE
# Basic Programming Concepts
## Comments
#### Comments in Ruby start with <code>#</code>
    if my_first_variable > 1

    # this is a comment adding more information
    # here we are testing if our variable's value is greater than 1

       return "it's greater than 1"
    end    

!SLIDE bullets
# Ruby is Object Oriented
## Everything is an object
### Objects are like nouns
## Everything has a class
### Classes are like kinds of things
## Objects have methods
### An object's class determines its methods
### Methods are like verbs

!SLIDE
# Everything is an object
    "Hello World"
      # is an object
    4 
      # is an object
    Array.new
      # is an object
## Everything has a class
### Call <code>class</code> on an object to find out its class
    "Hello World".class
    => String
    4.class
    => Integer
    Array.new.class
    => Array
## Objects have methods
### <code>reverse!</code> is a method available to the <code>String</code> class
    > "Hello World".reverse!
    => "dlroW olleH"


!SLIDE bullets
# Classes
![a picture of a dog](/images/slides/dog.jpg)
### Classes like <code>String</code>, <code>Integer</code>, and <code>Array</code> already exist in Ruby...
## And we can make our own, too!
    class Dog
      def bark
        return "WOOF!"
      end
    end

!SLIDE bullets
## We can make new objects with our class
### An object is a particular instance of a class
![a picture of a dog](/images/slides/dog.jpg)
### Fido is a particular dog
#### Here we create a new <code>Dog</code> object and assign it to the <code>fido</code> variable
    fido = Dog.new
    fido.class
    => Dog

!SLIDE
## Objects respond to the methods defined in their class
![a picture of a dog](/images/slides/dog.jpg)
#### Call <code>.methods</code> on any object to see what it can do
    fido.methods
    => [:bark, ...]
#### Fido can <code>bark</code>, because we told our <code>Dog</code> class how to '<code>bark</code>'
    fido.bark
    => "WOOF!"

!SLIDE bullets
## Classes can have attributes, too
#### Attributes are kind of like adjectives
#### Each object has its own value for an attribute
![a picture of Oliver](/images/slides/oliver.jpg)
#### We can use an attribute to add <code>color</code> to our <code>Dog</code>s
    class Dog

      # add a 'color' attribute to our Dogs
      attr_accessor :color

      def bark
        return "WOOF!"
      end
    end


!SLIDE bullets
## Adding attributes gives us more methods
### When we define a new attribute with <code>attr_accessor</code>:
![a picture of Oliver](/images/slides/oliver.jpg)
### OR, when we add a new database field in Rails:
#### Each object from our class gets two new methods
    oliver = Dog.new
    oliver.methods
    => [:color, :color=, :bark...]
#### <code>.color=</code> is a method to give the attribute a value for that object
#### <code>.color</code> is a method to get the current value of the attribute for that object

!SLIDE bullets
## Changing the value of an object's attributes
#### It's just like setting or changing the value of a variable
    oliver.color = "white"
    oliver.color
    => "white"

![a picture of Oliver](/images/slides/oliver.jpg)
#### Different <code>Dog</code>s can have different <code>color</code>s
    fido.color = "golden"
    fido.color
    => "golden"
    oliver.color
    => "white"

!SLIDE bullets
# Inheritance
## We can make subclasses
![a picture of a pug](/images/slides/pug.jpg)
#### Every <code>Pug</code> is a <code>Dog</code>, but not every <code>Dog</code> is a <code>Pug</code>
    class Pug < Dog
      # A pug is a kind of dog

      # Here we add a new method that's just for pugs
      def wrinkly?
    	return true
      end

    end

!SLIDE
# Using the subclass
![a picture of a pug](/images/slides/pug.jpg)
#### Mollie is a particular <code>Pug</code>
    mollie = Pug.new

    mollie.class
    => Pug
    mollie.is_a? Pug
    => true

#### Every <code>Pug</code> is also a <code>Dog</code>!
    mollie.is_a? Dog
    => true

!SLIDE
# Using the subclass
![a picture of a pug](/images/slides/pug.jpg)
### Because a <code>Pug</code> is a kind of <code>Dog</code>, Mollie can <code>bark</code>
#### Even though we didn't tell our <code>Pug</code> class how to '<code>bark</code>'!
    mollie.bark
    => "WOOF!"

!SLIDE
# Using the subclass
![a picture of a pug](/images/slides/pug.jpg)
### Mollie is *also* <code>wrinkly</code>... even though not every <code>Dog</code> is <code>wrinkly</code>!
    mollie.wrinkly?
    => true

!SLIDE
# Questions?
## Thank you!
### @clararaubertas on Twitter
### Enjoy programming and be happy with Ruby!
## &nbsp;

<img src="/images/slides/dog.jpg" style='display: inline; height: 300px;' />
<img src="/images/slides/oliver.jpg" style='display: inline; height: 300px;' />
<img src="/images/slides/pug.jpg" style="display: inline; height: 300px;' />


