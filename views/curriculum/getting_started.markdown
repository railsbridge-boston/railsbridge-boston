# Creating a Rails Application  

<img src="/images/curriculum/Start_page.png" class="thumbnail"></img>

## Goals

* Create Your New Application

Let's get started! By the end of this step, we'll have brand-spankin'-new rails app.


## Steps

<img src="/images/info.png"></img> If you have any problems, contact a TA immediately.

You will type this in the terminal. But please read the explanations for each line below as you type them.

```text
rails new suggestotron --skip-sprockets
cd suggestotron
ls
```

Here's a step-by-step breakdown, with explanations:


## Step 1

Type this in the terminal

```text
rails new suggestotron --skip-sprockets
```

`rails new` creates a new rails project with the name you give.

In this case we told it to create a new project called suggestotron. We'll go
into detail on what it created shortly.

`--skip-sprockets` turns off a complex optimization feature called the [Asset
Pipeline](http://guides.rubyonrails.org/asset_pipeline.html) which we won't be
using. Note there are *two leading dashes* in `--skip-sprockets`.

## Step 2

Type this in the terminal

```text
cd suggestotron
```

`cd` stands for change directory.

`cd suggestotron` makes suggestotron our current directory.


## Step 3

In step 1, `rails new` created a lot of files and directories. Let's look at what it made.

To see the contents of the current folder, type this in the terminal

```text
ls
```

`ls` stands for 'list (stuff)'.


Let's look at the structure of the whole project. 

In OS X, type this command to make Finder open the current directory:

```text
open .
```

You will see the entire directory tree of your project. We suggest leaving this
open during the workshop, since the Rails lectures will mention many folders
and files. 

You can see the project directory when you're using Sublime Text. This is
convenient when you're going to edit several files and want to navigate
quickly.  Start Sublime Text and go to the File menu. Windows users should
select "Open Folder"; OS X and Linux users should select the "Open..." command.
Choose the suggestotron folder. A new pane showing the suggestotron folder will
appear.

You can see that `rails new` created a lot directories and files. The ones we will focus on today are:

* `app/` Contains controllers, models, and views for your application.  You will do most of your work here.  
* `config/` Configure your application's runtime rules, routes, database, and more.  
* `db/` Shows your current database schema, as well as the database migrations.  
* `public/` The only folder seen by the world as-is. This is where your static files go. You can also put stylesheets, javascript and images in this folder.

There is a lot more that `rails new` created. Probably enough to fill a book,
so we're going to ignore them for now.


## Next Step

Go on to [Create a New Git Repo](create_a_new_git_repo)
