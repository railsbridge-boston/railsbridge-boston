# Extra Credit - Using git branches
##Goals
A branch is a sandbox in which you can make changes to the files in the repository. You might want to create a branch when you work on a new feature in your app.

![](/images/info.png) If you are a Mac user, you can install a GUI for git called **GitX** at http://gitx.frim.nl/.

## Steps

### Step 1: Create a new git topic branch
Type this in the terminal

```text
git checkout -b new-branch-name
```

This will create and checkout a new branch. You still have a "master" branch which will stay the same while you are working in your new branch. You can create as many new branches as you want.

![](/images/info.png) To delete an old branch, type `git checkout master` and then type `git branch -D new-branch-name`.

### Step 2: Make a change to the README file
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


### Step 3: Make a commit
Type this in the terminal

```text
git add .
git commit -m "Modified README"
```

### Step 4: Add the changes to your master branch, and deploy your app
Type this in the terminal

```text
git checkout master
git rebase new-branch-name
git push heroku master
```

This will combine the changes in your new branch with your master branch, and then deploy your modified app to Heroku.

Now you know how to use topic branches to work on features in your project!

## All Done

You can move on to the "[More Heroku](/curriculum/extra_credit/03_more_heroku)" extra credit section, or  
head on [back to the main curriculum](/curriculum/curriculum_toc).
