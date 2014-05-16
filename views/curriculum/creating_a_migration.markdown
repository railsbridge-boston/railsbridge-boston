# Creating a Model and Running a Database Migration
## Overview

Let's start with models.  A model is a thing - a group of related data.  

The Suggestotron has topics that people can vote on. Topics are models. We'll store our topics in the database.

Rails provides several tools for making an application quickly.  In this step we'll see two more of them. 
We'll use Rails' scaffolding to generate a basic Topic skeleton which we'll enhance later.  
We'll use the rake utility to make database tables to hold our new Topic model. 

## Goals
* create a topic model with scaffold
* create a database table for topics with a title and a description
* meet the rake utility

![Topics Table](/images/curriculum/topics_table.png)


### Step 1
Time to make our first model. 

Type this in the terminal:

```text
rails generate scaffold topic title:string description:text
```

* `generate scaffold` tells rails to create everything necessary to get up and running with topics
* `topic` tells rails the name of the new model
* `title:string` says that topics have a title, which is a string (words). The database will need to 
know what kind of information a title is.
* `description:text` says that topics have a description which is a "text", which is like a string, but longer.

Rails will create a lot of directories and files.  Notice that some of the directories are named "model", "view", and "controller". 


### Step 2

Databases don't create tables by themselves - they need instructions. 

One of the files the scaffold command created will be named something like "db/migrate/20140515115208_create_topics.rb".  The numbers 
in the name are the date and time the file was made, so yours will be named differently.  

The file contains Ruby code that describes what the table will look like. This is called a migration file.  
It tells the database how to transform itself into the new configuration. 

```text
class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
```

See how this lines up with the scaffold command?

```text
rails generate scaffold topic title:string description:text
```

The migration says to create a table named topics, with a title that's a string, and a description that's text.  Rails automatically
adds a timestamp, and will use it to automatically record when the data was updated. 

Next we need to run the migration. Rails has a utility called rake, a swiss army knife tool that does a lot of tasks. 

Type this in the terminal:

```text
rake db:migrate
```

Rake looks at the db/migrate directory and runs the instructions it finds there.  Rake keeps track of what it has already run.
It will run any new migration 


## Explanation
### Explaining MVC and Records

![MVC](/images/curriculum/mvc.png)

Rails implements a very specific notion of the **Model/View/Controller** pattern, which guides how you structure your 
web applications.

### Model

* saves data to the database
* accesses data from the database
* bridge between the database and objects

### View

* display the data for human (or machine) consumption
* webpages are views

### Controller

* acts as the glue between the models and the views
* combines data from multple models
* summarizes and filters data

In MVC, models, views, and controllers have very specific jobs.  Separating responsibilities like this make it easy to maintain and extend rails applications.  When responsibilities become muddied it gets much harder to debug issues and add new functionality.


## Next Step

Go on to [Crud with Scaffolding](CRUD_with_scaffolding)
