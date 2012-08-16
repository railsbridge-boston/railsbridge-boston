# Add the Project Files to the Git Repo

## Goals

It is time to add all the files to the repo now.

### Step 1

Type this in the terminal

```text
git status
```

`git status` tells you everything git sees as modified, new, or missing.
The first time you run this, you should see a ton of stuff.
The second time you run this, you shouldn't see much of anything.


### Step 2

Type this in the terminal

```text
git add .
```

`git add .` tells git that you want to add the current directory (aka .) and everything under it to the repo.

![](/images/info.png) `git add`

With Git, there are many ways to do the same thing.

* `git add foo.txt` adds a file named `foo.txt`
* `git add .` adds all new files and changed files, but *keeps* files that you've deleted
* `git add -A` adds everything, including deletions

"Adding deletions" may sound weird, but if you think of a version control system as keeping track of changes, it might 
make more sense. Most people use `git add .` but `git add -A` can be safer. No matter what, `git status` is your friend.

### Step 3

Type this in the terminal

```text
git commit -m "Added all the things"
```

`git commit` tells git to actually do all things you've said you wanted to do.
This is done in two steps so you can group multiple changes together.
`-m "Added all the things"` is just a shortcut to say what your commit message is. 
You can skip that part and git will bring up an editor to fill out a more detailed message.

## Explanation

By checking your application into git now, you're creating a record of your starting point. Whenever you make a 
change during today's workshop, we'll add it to git before moving on. This way, if anything ever breaks, or you make a 
change you don't like. You can use git as an all-powerful "undo" technique. But that only works when you remember to 
commit early and often!

## Next Step

Go on to [Running Your Application Locally](running_your_application_locally)

* * *

## Extra Credit - Using git branches
A branch is a sandbox in which you can make changes to the files in the repository. You might want to create a branch when you work on a new feature in your app.

![](/images/info.png) If you are a Mac user, you can install a GUI for git called **GitX** at http://gitx.frim.nl/.

### Step 4: Create a new git topic branch
Type this in the terminal

```text
git checkout -b new-branch-name
```

This will create and checkout a new branch. You still have a "master" branch which will stay the same while you are working in your new branch. You can create as many new branches as you want. 

![](/images/info.png) To delete an old branch, type `git checkout master` and then type `git branch -D new-branch-name`.

### Step 5: Make a change to the README file
Type this in the terminal

```text
mv README.rdoc README.md
``` 

Open the file called README.md in Sublime Text 2, or your preferred editor. Replace the content that is there with the following text:

```text
# Boston Ruby Workshop: first Ruby on Rails application

This is the first application for [your name here].
```

Then save and close the file.


### Step 6: Make a commit
Type this in the terminal

```text
git add .
git commit -m "Modified README"
```

### Step 7: Add the changes to your master branch, and deploy your app
Type this in the terminal

```text
git checkout master
git rebase new-branch-name
git push heroku master
```

This will combine the changes in your new branch with your master branch, and then deploy your modified app to Heroku.

Now you know how to use topic branches to work on features in your project!

## Next Step

Go on to [Running Your Application Locally](running_your_application_locally)


