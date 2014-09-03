# Run Ruby from a File


**If you are using the RailsBridge Virtual Machine**, there is a folder
inside the virtual machine called `~/workspace`. This folder is mapped
to a folder at `~/workspace` in your host
operating system. Make sure you can find `~/workspace`. It should already
contain a file called `Vagrantfile`. When you are editing files in your text
editor, make sure you save files to this folder or into a subdirectory inside
this folder.  

### Start Your Text Editor

1. Launch your text editor. See the [text editor setup instructions](/installfest/text_editor) 
for how to do this.

2. Open a New File (`File > New File` in Sublime Text 2)


### Write a Ruby Script

1. Add this line to your new text file:

    ```ruby
    puts "Hello World!"
    ```

2. Save as `hello.rb` in your *working directory*. The `.rb` extension indicates that this file contains Ruby code.

Your *working directory* should be `~/workspace`.

### Run the Script


2. Navigate to your working directory from the command line.
Don't hesitate to get help from a staff member on this step if you need it -- it's a new way of navigating your 
computer, so it may be unintuitive at first!

3. Once you are in your working directory, enter `ls` (or `dir` on Windows) and you should see `hello.rb` listed amongst the directory's contents.

4. Type

    ```text
    ruby hello.rb
    ```

    and hit enter. This instructs Ruby to execute the contents of `hello.rb`. The `puts "Hello World!"` call will be 
    executed within the script, and that should print "Hello World!" to the command line. You should see something
    like this:

    ```text
    ruby hello.rb
    Hello World!
    ```

### Success
You created and ran your first Ruby script!  

You learned:  

* When you run the `ruby` command with a file name as an argument, Ruby executes the Ruby code in that file.


### Extra Credit

Edit your `hello.rb` file to use a Ruby loop.

```ruby
1.upto(1000) do |x|
  print "hello for the #{x}th time! "
end
```

Save `hello.rb` and run it again.

`print` is like `puts`, but it doesn't create a new line after its output.

`upto` is an instance method of `Integer`. Look up the documentation from the command line by typing

```text
ri Integer#upto
```

Can you rewrite this last program to start at 1000 and count down to 1?


[«Back](/installfest)
