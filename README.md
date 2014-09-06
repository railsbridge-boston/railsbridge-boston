# railsbridge-boston


This is the website for the RailsBridge Boston Workshop for Women and their
friends.

The site URL is <http://www.railsbridgeboston.org/>

## We've moved repos!

We are no longer using this repo! If you're looking to contribute, please check out the separate [website](https://github.com/railsbridge-boston/railsbridgeboston_dot_org) and [curriculum](https://github.com/railsbridge-boston/docs) repos.


## Setup

For development, if you want to test the curriculum progress features,
create a local PostgreSQL database called 'students'.

Load the schema with

    psql students < schema.sql

This is not necessary if you're just editing the curriculum or other
static content.

To start the app:

    bundle 
    rackup


## How to reset the db on production instance in Heroku

Jump into the database and delete all the records:

    heroku pg:psql --app railsbridge-boston
    # wait for prompt
    delete from completions;
    delete from students;
    \q 

That should do it.


