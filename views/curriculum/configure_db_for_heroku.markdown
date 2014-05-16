# Configure a database for Heroku

## Overview
Heroku uses a database called PostGres. So far, locally, you've been using a database called Sqlite3. We'll make a small change to our Gemfile to make this this distinction.

## Goals
* Update your application's configuration to use PostGres in production.

### Step 1: Edit the Gemfile

Open the file called `Gemfile` in Sublime Text 2, or your preferred editor, and find the line containing:

```ruby
gem 'sqlite3'
```

**Remove that line** and replace it with:

```ruby
group :development do
  gem 'sqlite3'
end

group :production do
  gem 'pg'
end
```

### Step 2: Apply the Gemfile changes

Type this in the terminal

```text
bundle install --without production
```

Every time the Gemfile changes, you need to run `bundle install` for the changes to be processed. When you run this command, the "gems" listed in your Gemfile will be installed and the `Gemfile.lock` file will be updated to list the current versions of all the gems. When you run this command with the `--without production` flag, you will skip installation of the gems you listed in the production group in your Gemfile. We're skipping the installation of PostGres locally, because Sqlite3 is fine.


## Explanation

The Gemfile is a list of all the Ruby libraries your application needs. What we've declared here is that we want to
use the sqlite3 library while we're developing on our computer (the development group) but when deploying to heroku
(the production group) we want to use the pg library, which is made for the type of database that heroku uses.

Bundler is how Ruby projects keep track of the gems that they use. We told bundler what we wanted to use in the Gemfile,
now we need make sure those gems are installed. Since we don't have the type of database heroku does, we skip the
production gems. Don't worry though! Bundler still logs them so Heroku will install them when they get your code.

[<<< Table of Contents](/curriculum/curriculum_toc)
