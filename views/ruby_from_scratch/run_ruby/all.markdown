# Run Ruby from a File


### Start Your Text Editor

1. Launch Sublime Text 2. See the [text editor setup instructions](/ruby_from_scratch/text_editor/all) 
for how to do this.
2. Open a New File (`File > New File`)


### Write a Ruby Script

1. Add this line to your new text file:

    ```ruby
    puts "Hello World!"
    ```

2. Save as `hello.rb` in your home directory. The `.rb` extension indicates that this file contains Ruby code.


### Run the Script

1. Start the Command Prompt. See the terminal navigation for [Windows](/ruby_from_scratch/command_prompt/windows),
[OSX](/ruby_from_scratch/command_prompt/osx), or [Linux](/ruby_from_scratch/command_prompt/osx) instructions for how to do this.

2. Navigate to your home directory from a command prompt.
Don't hesitate to get help from a staff member on this step if you need it -- it's a new way of navigating your 
computer, so it may be unintuitive at first!

3. Once you are in your home directory, enter `ls` (or `dir` on Windows) and you should see `hello.rb` listed amongst the directory's contents.

4. Type

    ```text
    ruby hello.rb
    ```

    and hit enter. This instructs Ruby to execute the contents of `hello.rb`. The `puts "Hello World!"` call will be 
    executed within the script, and that should print "Hello World!" to the command prompt. You should see something
    like this:

    ```text
    ruby hello.rb
    Hello World!
    ```

### Success
You created and ran your first Ruby script!  

You learned:  

* When you run the `ruby` command with a file name as an argument, Ruby executes the Ruby code in that file.

[«Back](/ruby_from_scratch)
