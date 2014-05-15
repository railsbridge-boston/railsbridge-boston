# Create a Git Repo

## Overview

We're going to put Suggestotron on the web using a service called Heroku. Heroku provides web servers that run [many companies' applications](https://success.heroku.com/). 
 You'll be able to share your Suggestotron with friends after the workshop.

As a prerequisite, we're going to save our code in git.  Git is a "revision control system", 
a tool that programmers use to manage changes to code.  It allows us to save a snapshot of code
when we finish a big change and know it's working - like backing up your laptop in Time Machine.  
It makes it easier for groups of people to work on the same code and not overwrite each other's changes. 

We're introducing git today because Heroku depends on git to copy your code to its servers.  You'll see git
again if you contribute to open source projects or work as a programmer. For today, we're only using the commands
we need to publish our code.


## Goals
* Create a new git repository to hold your code


### Step 1
Before git will let us save anything, we need to set our username and email.

Type this in the terminal:

```text
  git config --global user.email "you@example.com"
  git config --global user.name "Your Name"
```
... using your own name and email address.  This is a one-time setup step, only needed when you first install git.



### Step 2
Now we'll initialize git for our Suggestotron project.  This is a once-per-project step.

Type this in the terminal:

```text
git init
```

You'll see a response like

```text
Initialized empty Git repository in /vagrant/suggestotron/.git/
```

It doesn't look like anything really happened, but `git init` initialized its repository (repo) in a hidden directory 
called `.git`. You can see this by typing `ls -a` (list all files).







## Next Step
Go on to [Add the Project to the Git Repo](add_the_project_to_the_git_repo)
