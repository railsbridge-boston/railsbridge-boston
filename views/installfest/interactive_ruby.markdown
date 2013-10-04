# Interactive Ruby (IRB) and looking up Ruby documentation (RI)

The Interactive Ruby Shell (irb) is a console that lets you execute Ruby code.
It is "interactive" because every time you write a line of code and press
'Enter', the code executes and shows you the result. This allows you to
experiment and get instant feedback.

Start up a new command line (or 'Terminal').

To run irb, type

```text
irb
```
You should see something like this:

```text
irb(main):001:0> 
```
or

```text
1.9.3-p327 :001 >
```

This is the irb prompt. It means that irb is running and ready for you to type something.

The numbers at the end are a counter.  Hit enter a few times and watch the number go up.

Try out a line of ruby. Type:

```ruby
puts 'Hello world!'
```

You should see something like this:

```ruby
irb(main):001:0> puts 'Hello world!'
Hello world!
=> nil
```

Exit IRB by typing

```ruby
exit
```

and hitting enter. You are now back at the command line.

Assuming things worked, you invoked a Ruby method called `puts`.
If you want to look up the documentation for `puts`, there is a nifty command Ruby
provdies called `ri`. Type this on the command line:

```text
ri puts
```

You should see some documentation for several different versions of the `puts` method.
Use `f` and `b` to scroll, and `q` to quit.

If might be confusing which version of `puts` you actually invoked, but after you
learn more Ruby you should get the hang of it.

Try looking up the documentation for `String`:

```text
ri String
```

You'll see a long list of words under the heading "Instance methods". You can
look up further documentation for each of those instance methods of String like so: 

```text
ri String#capitalize
```

Try this for a few of the instance methods you see for String. 



### Success
You can now run Ruby code in the IRB prompt and look up documentation for Ruby
methods and classes with `ri`. Practice these steps until you feel comfortable.


[«Back](/installfest)
