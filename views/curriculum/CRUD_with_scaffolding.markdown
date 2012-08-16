# CRUD with Scaffolding
## Goals
At the core, most database driven web sites are the same. They need to store records and provide a way to do the following:

* **C**reate new records in the database
* **R**ead or show the records in the database
* **U**pdate existing records
* **D**estroy or delete records

Because these 4 actions (CRUD) are so common rails includes the scaffold command to make creating them easier.

## Steps


### Step 1
Run `rails server` in your terminal.


### Step 2
Point your browser to [http://localhost:3000/topics](http://localhost:3000/topics)  

You should see a page listing topics that looks something like this:

<img src="/images/curriculum/Seattle_topic_list_page.png" alt="Topic List Page" class="thumbnail"></img>


### Step 3
* Click on "New Topic"
* Fill in the form and click "Create Topic"
* You should see a confirmation page like this:

<img src="/images/curriculum/Seattle_topic_created.png" alt="topic created" class="thumbnail"></img>

### Step 4
* Click on "back"
* You should see the topic list again, this time with your new topic listed
    
    <img src="/images/curriculum/Seattle_list_with_topic.png" alt="list with topic" class="thumbnail"></img>
* Try the 'show', 'edit', and 'destroy' links to see what they do
* You've created a basic database driven web site, congrats!

## Explanation

How did all those pages get created and hooked together? The rails
scaffold did it for you.  Let's take a closer look at some of the files
Rails created:

`app/models/topic.rb`

* This file contains code for our topic model. If you look at it its nearly blank. 

`app/views/topics`

* This folder contains all the views for our topics model. This is where the code for the forms you used above is stored. Rails
created all of these pages as part of the scaffold.

`app/views/topics/index.html.erb`

* This is the code for the page that lists all the topics.
* Index is the name given to the "default" page for a website or a section of a website. When you navigate to
[http://localhost:3000/topics](http://localhost:3000/topics) the topics index page is what is sent to your computer.
* If you've written HTML before many lines in the views should look familiar. Rails views are HTML with some extra code added to display data from the database.

`app/views/topics/show.html.erb`

* This is the page you get when you click the "show" link on the "Listing topics" page.

`app/views/topics/new.html.erb`

* This is the page you get when you click on "New Topic".

`app/views/topics/edit.html.erb`

* This is the page you get when you click on "Edit"

`app/views/topics/_form.html.erb`

* You may have noticed that the page for new topics and the page
to edit topics looked similar. That's because they both use the
code from this file to show a form. This file is called a
partial since it only contains code for part of a page. Partials
always have filenames starting with an underscore character.
* Challenge question: Can you find the line of code in `new.html.erb` and `edit.html.erb` that makes the form partial appear?

`app/controllers/topics_controller.rb`

* This is the controller file that rails created as part of the scaffold
* If you look you'll see a method (a line beginning with `def`) for each of the views listed above (except `_form.html.erb`)

## Next Step
Go on to [Commit and Push to Heroku](commit_and_push_to_heroku)
