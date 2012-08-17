# Extra Credit: More Ruby

## Steps

### Step 1
The individual fruits in the fruits array are each **Strings**. A string is an
ordered collection of characters. Try the following:

```ruby
a = "apple"
a.size
```

Ruby prints 5, because there are 5 characters in the String "apple".

### Step 2
The contents of a String can be manipulated just like an array. Try 'appending'
to the end of your apple string:

```ruby
a += "sauce"
puts a
```

Ruby prints applesauce (yum!). The `+=` operator takes the value of a variable,
adds or appends the value on the right side, and then stores the result in the
same variable. Saying a += "sauce" is the same as saying a = a + sauce

### Step 3
Each element in an Array is positioned in a specific order. The String "kiwi" is
the first element of our fruits array. The position of an element is known as
its **index** in the Array. We can ask Ruby for the index of any of our fruits.

```ruby
fruits.index("kiwi")
```

Ruby prints 0. For historical reasons, the first element of an Array has index
0. The second element has index 1, the third has index 2, and so on. What is the
index of "orange" in the fruits Array?

### Step 4
We can access a specific fruit in the Array if we know its index. We use the
array index operator:

```ruby
puts fruits[1]
```

Ruby prints "strawberry".

### Step 5
We can also assign to an index in the Array. That is, we can replace the value
at that index/position and have it refer to something new:

```ruby
fruits[1] = 15.5
fruits.each do |f|
  puts f
end
```

Notice that our array no longer contains just fruits, but also the price for a
bushel of strawberries. Arrays don't have to contain things that are all the
same type.

### Step 6
Try creating an Array of names, like the following:

```ruby
names = ["Bob", "Alice", "Sarah", "Joe"]
```

What if we want the names in alphabetical order? We can sort them by using a
**method** on the array.

```ruby
names.sort
```

We've already seen methods, like the `size` method on the apple String above.
This time, we call the method using parenthesis. In ruby, method parenthesis are
optional in most cases: you could have called the sort method simply as names.sort

### Step 7
Let's look at our names again (simply type 'names' and hit ENTER):

```ruby
names
```

Wait a minute, I thought we sorted those! As it turns out, when you call sort on
an Array, Ruby gives you back a completely new copy of the Array that is sorted.
Try the following:

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

It is unchanged. The Array referenced by names_sorted is indpendent of the one
referenced by names.

## Finished!

You can go [back](javascript:window.history.back(\)) to the main curriculum.
