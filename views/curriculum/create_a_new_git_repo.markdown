# Create a Git Repo
## Goals
* Create a local git repository

In order to publish our application, we need to add our application and any changes we make over time to a 
"revision control system". In our case we're going to use git because it is (relatively) easy and it is what our 
app server, Heroku, uses.

### Step 1
Type this in the terminal:

```text
git init
```

## Explanation
It doesn't look like anything really happened, but `git init` initialized its repository (repo) in a hidden directory 
called `.git`. You can see this by typing `ls -a` (list all files).

## Next Step:
Go on to [Add The Project To The Git Repo](add_the_project_to_the_git_repo)
