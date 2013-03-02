# railsbridge-boston

This is the website for the Railsbridge Boston Workshop for Women and their
friends.

The new site URL is <http://www.railsbridgeboston.org/>


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


TEST
