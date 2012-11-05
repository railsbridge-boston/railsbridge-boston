# Friday Setup: Installfest

Install Ruby, Install a Text Editor, and Start Coding

At the end of this tutorial, you will have all the tools you need to write and run Ruby code. Work thourgh
these sections in order, and ask questions if you get stuck! That's what the TAs and instructors are here for.

When you are done with all the sections, find a staff member to go through the checklist with you.


### 1. Set Up Ruby
Instructions for installing and running Ruby.

[Install Ruby on Windows](/installfest/install/windows)  
[Install Ruby on Mac OS X](/installfest/install/osx)  
[Install Ruby on Linux](/installfest/install/linux)  


### 2. Using the Command Prompt
The command prompt is the primary way to run Ruby files. In this section you will learn to navigate your filesystem
from your command prompt.

[Using the Command Prompt](/installfest/command_prompt)

### 3. Starting and Exiting Interactive Ruby
To start writing Ruby code, you will use the Interactive Ruby Shell (irb). It is "interactive" because every time you 
write a line of code and press 'Enter', the code executes and shows you the result. This will allow you to experiment
and get instant feedback.

[Interactive Ruby (irb)](/installfest/interactive_ruby)  

### 4. Install a Text Editor
You will want a text editor that designed for coding. These instructions will show you how to install a good text 
editor, and the basics of using it effectively.

[Text Editor](/installfest/text_editor)  

### 5. Run Ruby from a File
In this section you will learn to run Ruby code from a file, a prerequisite of writing more complex and powerful
programs.

[Run Ruby from a File](/installfest/run_ruby)


### 6. Create a Heroku Account
Heroku is the host that you will deploy your application to.

[Create a Heroku Account](/installfest/create_a_heroku_account)


### 7. Setup Checklist 

Find a staff member and run through this checklist:

1. Create a new ruby file (with an .rb extension). In that file, type:

    ``` ruby
    puts 'Hello World!'
    ```
    Then save the file. From the command prompt, navigate to and execute the Ruby script you just created.

2. Confirm that Ruby and Rails are installed on your machine.  From the command line type:

    ```text
    rails -v
    ```
    
    And you should see:
    
    ```text
    Rails 3.2.8
    ```
    
3. Confirm that your Heroku account is set with your key. From the
   command line, type:

    ```text
    heroku keys
    ```
    And you should see something like:

    ```text
    === youremail@example.com Keys
    ssh-dss AAAAAAAA..12312asfdsdf== user@system.local
    ```

4. Confirm that `git` is set up properly. From the command line, type:

    ```text
    git --version
    ```

    And you should see output like this (the version number doesn't need to be exact):

    ```text
    git version 1.7.10.2 (Apple Git-33)
    ```

5. Get a setup confirmation sticker from a staff member and stick it on
   your laptop where it will be visible when you come back tomorrow morning.


### You're Done!
Congratulations, you're done with the Friday tutorial. We'll see you at 9:30am tomorrow. Please bring
the same laptop you used tonight.

If you have any questions, comments, or feedback on tonight's material, don't hesitate to let a staff member know. We 
also have a feedback form that you can use early and often to provide feedback about the workshop. 

[« Back to Friday Night Overview](/friday)
