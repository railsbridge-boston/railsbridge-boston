# Creating a Rails Application  

<img src="/images/curriculum/Start_page.png" class="thumbnail"></img>

## Goals

* Create Your New Application

Let's get started! By the end of this step, we'll have brand-spankin'-new rails app.


## Steps

<img src="/images/info.png"></img> If you have any problems, contact a TA immediately.

Type this in the terminal

```text
mkdir railsbridge
cd railsbridge
rails new suggestotron
cd suggestotron
ls
```

Here's a step-by-step breakdown, with explanations:


## Step 1

Type this in the terminal

```text
mkdir railsbridge
```

`mkdir` stands for make directory (folder).
We've made a folder called railsbridge.


## Step 2

Type this in the terminal

```text
cd railsbridge
```

`cd` stands for change directory.
`cd railsbridge` makes railsbridge our current directory.


## Step 3

Type this in the terminal

```text
rails new suggestotron
```

`rails new` creates a new rails project with the name you give.

In this case we told it to create a new project called 
suggestotron. We'll go into detail on what it created shortly.


## Step 4

Type this in the terminal

```text
cd suggestotron
```

`cd` stands for change directory.

`cd suggestotron` makes suggestotron our current directory.


## Step 5

Type this in the terminal

```text
ls
```

`ls` stands for 'list (stuff)'.
It shows you the contents of the current folder.

The `tree` command can show you how files are laid out in your project
folder.

If you are using OS X, you may first need to install the `tree` command
by typing this command:

```text
brew install tree
```

Assuming that you have the `tree` command installed, if you are using OS
X or Linux, type this in the terminal: 

```text
tree -d
```

If you on Windows, just type

```text
find .
```

You should see the entire directory tree of your project so you can see all the folders. 

You can see that `rails new` created a lot directories and files. The ones we want to focus on today are:

`app/` Contains assets (stylesheets, javascript, images), controllers, models, and views for your application.  You will do most of your work here.  
`config/` Configure your application's runtime rules, routes, database, and more.  
`db/` Shows your current database schema, as well as the database migrations.  
`public/` The only folder seen to the world as-is. This is where your static files go. You can also put stylesheets, javascript and images in this folder.

There is a lot more that `rails new` created. Probably enough to fill a book, so we're going to ignore them for now.


## Next Step

Go on to [Create a New Git Repo](create_a_new_git_repo)
