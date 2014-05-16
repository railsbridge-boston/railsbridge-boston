# Create a Heroku Site

## Overview
Heroku makes it easy to create a new site for your web application. We'll start by creating and visiting an empty site.

## Goals
* Create a site and learn its randomized URL

## Steps

### Step 0: Confirm you have configured heroku
Before you do anything, ensure that you have the `heroku` toolbelt installed and your heroku keys added. Type:

```text
heroku keys
```

If heroku doesn't respond with something like this:

```text
=== jen@example.com Keys
ssh-dss AAAAB8NzaC...DVj3R4Ww== jen@example.com
```

then you need to finish all the instructions at [Create a Heroku Account](/installfest/create_a_heroku_account), then come back here.

### Step 1: Create a heroku site

Type this in the terminal

```text
heroku create
```

`heroku create` registers a new application on heroku's system.


### Step 2: Visit your site

Find out the web URL of your site with this command:

```text
heroku apps:info
```

You should see some output. The last line should be the web URL of your deployed Rails application. Hint: You can rename it later in the Extra Credit section. Copy this URL into your web browser and load it.  You haven't deployed your code yet, so you'll see "The page you were looking for doesn't exist."


## Next Step
Go on to [Configure a Database for Heroku](configure_db_for_heroku)