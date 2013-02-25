# Interactive Ruby (IRB)
The Interactive Ruby Shell (irb) is a console that lets you execute Ruby code. It is "interactive" because every time you
write a line of code and press 'Enter', the code executes and shows you the result. This allows you to experiment
and get instant feedback.

1. Start up a new command prompt (or 'Terminal').

2. To run irb, type

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

3. Try out a line of ruby. Type:

    ```ruby
    puts 'Hello world!'
    ```

    You should see something like this:

    ```ruby
    irb(main):001:0> puts 'Hello world!'
    Hello world!
    => nil
    ```

4. Exit IRB by typing
    
    ```ruby
    exit
    ```

    and hitting enter. You are now back at the command prompt.

	You can also exit by pressing the control and C keys (a.k.a "Ctrl-C" or "^C") at the same time.

### Success
You can now run Ruby code in the IRB prompt. Practice these steps until you feel comfortable starting a command prompt, 
then starting and exiting IRB.

[«Back](/installfest)
