# Create a Heroku Site

## Overview
We've committed our code to git. What now?

**Ship it!**

## Goals
* Deploy your app to the web

## Steps

### Step 0: Confirm you have installed the heroku toobelt

Before you do anything, ensure that you have the `heroku` toolbelt installed

```text
heroku keys
```

If heroku doesn't respond with something like this:

```text
=== jen@example.com Keys
ssh-dss AAAAB8NzaC...DVj3R4Ww== jen@example.com
```

then you need to go to [Create a Heroku Account](/installfest/create_a_heroku_account),
follow the instructions, then come back here.

### Step 1: Create a heroku application

Type this in the terminal

```text
heroku create
```

`heroku create` registers a new application on heroku's system.

[<<< Table of Contents](/curriculum/curriculum_toc)
