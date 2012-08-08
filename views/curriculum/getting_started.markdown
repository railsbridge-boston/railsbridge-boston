![Start Page](img/Start_page.png)#Goals


*Create Your New Application


Let's get started! By the end of this step, we'll have  brand-spankin'-new (empty) rails app.

#Steps


>![](/img/info.png)If you have 
any problems, contact a TA immediately.

Type this in the terminal:mkdir railsbridge
cd railsbridge
rails new suggestotron
cd suggestotron
ls

Here's a step-by-step breakdown, with explanations:

[]()#Step 1:


>Type this in the terminal:mkdir railsbridge

'mkdir' stands for make directory (folder).

We've made a folder called 
railsbridge.

[]()#Step 2:


>Type this in the terminal:cd railsbridge

'cd' stands for change directory.

'cd railsbridge' makes railsbridge our current directory.

[]()#Step 3:


>Type this in the terminal:rails new suggestotron

'rails new' creates a new rails project with the name you give.

In this case we told it to create a new project called 
suggestotron. We'll go into detail on what it created shortly.

[]()#Step 4:


>Type this in the terminal:cd suggestotron

'cd' stands for change directory.

'cd suggestotron' makes suggestotron our current directory.

[]()#Step 5:


>Type this in the terminal:ls

'ls' stands for 'list (stuff)'.

It shows you the contents of the current folder.

You can see that 
rails new created a lot directories and
  files. The ones we want to focus on today are:

File/Folder

Purposeapp/

Contains the controllers, models, and views for your application.  You will do most of your work here.config/

Configure your application's runtime rules, routes, database, and more.db/

Shows your current database schema, as well as the database migrations.public/

The only folder seen to the world as-is.  This is where your images, JavaScript,  stylesheets (CSS), and other static files goThere is a lot more that 
rails new created. Probably enough to fill a book, so we're going to ignore them for now.

#Next Step:


Go on to 
[Create A New Git Repo](create_a_new_git_repo?back=getting_started%23step5)