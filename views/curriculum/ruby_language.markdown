# The Ruby Language

## Goals

* be able to start up irb
* do simple calculations in ruby
* use and understand variables
* use and understand collections
* use loops

## Steps
### Step 1
Type this in the terminal

```text
irb
```
Starts up the Interactive Ruby Shell an environment where you can try bits of ruby code and they'll be run automatically.


### Step 2

Type this in the terminal

```ruby
3 + 3
7 * 6
```

Ruby can do simple math automatically. 
`*` is used for multiplication and 
`/` for division.

### Step 3

Type this in the terminal

```ruby
my_variable = 5
```
Variables are words that hold information. Here we're holding a 5 with the word 
`my_variable`.

### Step 4

Type this in the terminal

```ruby
my_variable + 2
my_variable * 3
```

Ruby remembers that we are holding a 5 with the words my_variable and can use that 5 do to math.

### Step 5

Type this in the terminal

```ruby
puts my_variable
```

puts prints the value of what comes after it. In this case it should print 5 since my_variable is holding a 5.

### Step 6

We can change the value that a variable holds. Try the following:

```ruby
my_variable = my_variable + 10
puts my_variable
```

Now puts prints 15 because we added 10 to the value of my_variable and stored the new value in the same variable.

### Step 7

Type this in the terminal

```ruby
fruits = ["kiwi", "strawberry", "plum"]
```

Variables can also hold more than one value. Here were using the variable fruits to hold a collection of fruit names. 
This type of collection is called an **Array**.

### Step 8

Type this in the terminal 

```ruby
fruits + ["orange"]
fruits - ["kiwi"]
```

`+` and 
`-` are called operators. We can use them with the array of fruits just like we can use them with numbers.

### Step 9

Type this in the terminal

```ruby
fruits.each do |f|
  puts f
end
```

This code goes through the fruits array item by item and runs the code between do and end for each item. 
These lines should print a list of the fruits.

### Step 10

Type this in the terminal 

```ruby
if my_variable > 1
  puts "YAY!"
end
```

This prints `YAY!` if the value stored in `my_variable` is greater than 1. Since the code only runs when certain 
conditions are met if is called a **conditional**.

### Step 11
The individual fruits in the fruits array are each **Strings**. A string is an ordered collection of characters. Try the following:

```ruby
a = "apple"
a.size
```

Ruby prints 5, because there are 5 characters in the String "apple".

### Step 12
The contents of a String can be manipulated just like an array. Try 'appending' to the end of your apple string:

```ruby
a += "sauce"
puts a
```

Ruby prints applesauce (yum!). The `+=` operator takes the value of a variable, adds or appends the value on the right side, and then stores the result in the same variable. Saying a += "sauce" is the same as saying a = a + sauce

### Step 13
Each element in an Array is positioned in a specific order. The String "kiwi" is the first element of our fruits array. The position of an element is known as its **index** in the Array. We can ask Ruby for the index of any of our fruits.

```ruby
fruits.index("kiwi")
```

Ruby prints 0. For historical reasons, the first element of an Array has index 0. The second element has index 1, the third has index 2, and so on. What is the index of "orange" in the fruits Array?

### Step 14
We can access a specific fruit in the Array if we know its index. We use the array index operator:

```ruby
puts fruits[1]
```

Ruby prints "strawberry".

### Step 15
We can also assign to an index in the Array. That is, we can replace the value at that index/position and have it refer to something new:

```ruby
fruits[1] = 15.5
fruits.each do |f|
  puts f
end
```

Notice that our array no longer contains just fruits, but also the price for a bushel of strawberries. Arrays don't have to contain things that are all the same type.

### Step 16
Try creating an Array of names, like the following:

```ruby
names = ["Bob", "Alice", "Sarah", "Joe"]
```

What if we want the names in alphabetical order? We can sort them by using a **method** on the array.

```ruby
names.sort()
```

We've already seen methods, like the `size` method on the apple String above. This time, we call the method using parenthesis. In ruby, method parenthesis are optional in most cases: you could have called the sort method simply as names.sort

### Step 17
Let's look at our names again (simply type 'names' and hit ENTER):

```ruby
names
```

Wait a minute, I thought we sorted those! As it turns out, when you call sort on an Array, Ruby gives you back a completely new copy of the Array that is sorted. Try the following:

```ruby
names_sorted = names.sort
```

Now add another name to the original Array:

```ruby
names << "Martha"
```

What happens to the sorted array?

```ruby
names_sorted
```

It is unchanged. The Array referenced by names_sorted is indpendent of the one referenced by names.

## Next Step

Go on to [Tools](tools)
