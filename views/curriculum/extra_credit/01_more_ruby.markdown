# Extra Credit: More Ruby Arrays

## Steps

### Step 1
Each individual fruit in our `fruits` Array is a **String**. A String is an
ordered collection of characters, such as `"apple"` or `"Ruby is fun!!"`.
A String also has certain properties.  For example, try the following:

```ruby
a = "apple"
a.size
```

Ruby prints `5`.   This is because `size` refers to the length of the String,
and there are 5 characters in the String "apple".

### Step 2
The contents of a String can be manipulated just like an Array. Try appending
more characters to the end of `a`, your "apple" String:

```ruby
a += "sauce"
puts a
```

Ruby prints `"applesauce"`. (Yum!) The `+=` operator takes the value of a variable,
adds or appends the value on the right side, and then stores the result in the
same variable. Saying `a += "sauce"` is the same as saying `a = a + "sauce"`.

### Step 3
Each element in an Array is positioned in a specific order. The String "kiwi" is
the first element of our `fruits` Array. The position of an element is known as
its **index** in the Array. We can use Ruby to find the index of any of our fruits.

```ruby
fruits.index("kiwi")
```

Ruby prints `0`. For historical reasons, the first element of an Array has index
0. The second element has index 1, the third has index 2, and so on.

Find out the index of "orange" in the `fruits` Array.

### Step 4
We can access a specific fruit in the Array if we know its index. We use the
Array index operator:

```ruby
puts fruits[1]
```

Ruby prints `"strawberry"`.

What does Ruby print out when you type in `puts fruits[0]`?  Is it what you
expected, after what we saw in Step 3?

### Step 5
We can also assign to an index in the Array. That is, we can replace the value
at that index/position and have it refer to something new:

```ruby
fruits[1] = 15.5
fruits.each do |f|
  puts f
end
```

Notice that our Array no longer contains just fruits, but also the number
`15.5`.  (Perhaps we are adding the price for a bushel of strawberries.)
Arrays don't have to contain things that are all the same type.

### Step 6
Try creating an Array of names, like the following:

```ruby
names = ["Bob", "Alice", "Sarah", "Joe"]
```

What if we want the names in alphabetical order? We can sort them by using a
**method** on the Array.

```ruby
names.sort
```

We've already used methods above, like the `size` method on the "apple" String.

### Step 7
Let's look at our names again (simply type `names` and hit ENTER):

```ruby
names
```

Wait a minute, Ruby prints out the names in their original order!  I thought we
sorted those!

As it turns out, when you call `sort` on an Array, Ruby gives you back a completely
new copy of the Array, that is sorted.  The `sort` method doesn't change the original
Array.

Try the following:

```ruby
names_sorted = names.sort
```

You have saved the sorted copy that Ruby gave you in a new Array, called
`names_sorted`.

Now let's add another name to the original Array, `names`:

```ruby
names << "Martha"
```

What did this do to the sorted Array, `names_sorted`?  Type:

```ruby
names_sorted
```

As you can see from what Ruby prints out, `names_sorted` is unchanged.
Once you create the Array `names_sorted`, it is completely independent
of the original Array, `names`.

## Finished!

You can go on to another extra-credit lesson and learn more about
[Ruby classes](06_ruby_classes), or you can go back to the
[main curriculum](/curriculum/curriculum_toc).
