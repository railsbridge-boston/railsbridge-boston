# Add the Project Files to the Git Repo

## Overview
Now that we set up git, we can save our files.

## Goals

* add files to git
* use the status command to see what changed

### Step 1

Type this in the terminal

```text
git status
```

`git status` tells you everything git sees as modified, new, or missing.
The first time you run this, it will list several untracked files- new files
that aren't saved to git. 


### Step 2

Type this in the terminal

```text
git add .
```

`git add .` tells git that you want to add the current directory (aka .) and everything under it to the repo.

![](/images/info.png) `git add`

With Git, there are many ways to do the same thing.

* `git add foo.txt` adds a file named `foo.txt`
* `git add .` adds all new files and changed files


Type this in the terminal

```text
git status
```

Git will say "Changes to be committed:" and lists all the files you've added.


### Step 3

Type this in the terminal

```text
git commit -m "Added initial project files"
```

`git commit` tells git to actually make the changes you've said you wanted to do.
This is done in two steps so you can group multiple changes together.

`-m` is a option that tells git to add the commit message that follows.  These messages
explain what you changed, so you or another developer will understand what happened when they look back at the logs.

Type this in the terminal again:

```text
git status
```
Git will say 'nothing to commit, working directory clean'.  That means nothing has been changed since the last commit.


### Step 4
You can see what you've just added to the repository in several ways:

```text
git log
```

will show a log of your commit messages with timestamps, including the message you added. Scroll with `f` and `b` and quit the view with `q`.

```text
git log --stat
```

adds some information about which files you changed in each commit and how many lines you deleted or added.

```text
git log -p
```

shows a log of your previous changes in detail.


## Explanation

By checking your application into git now, you're creating a record of your starting point. Whenever you make a
change during today's workshop, we'll add it to git before moving on. This way, if anything ever breaks, or you make a
change you don't like, you can use git as an all-powerful "undo" technique. But that only works when you remember to
commit early and often!

## Next Step

Go on to [Running Your Application Locally](running_your_application_locally)


