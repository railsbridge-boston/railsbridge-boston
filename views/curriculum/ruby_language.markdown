# The Ruby Language

## Goals

* Be able to start up irb
* Do simple calculations in ruby
* Use and understand variables
* Use and understand collections
* Use loops

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

## Next Step

Go on to [Tools](tools)

