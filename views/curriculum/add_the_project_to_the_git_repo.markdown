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


