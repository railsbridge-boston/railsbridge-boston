<!SLIDE subsection>
# Starting a Rails Application

### Generate, Track Changes, Run, and Deploy ###

<!SLIDE bullets>
# Rails - Big Ideas

* Code You Use + Generates Code + Tools

* Convention > Configuration
  * The same structure and naming

* Start with something simple that works


<!SLIDE bullets>
# Rails - Code

* Blog in 5 minutes, how?
  * Very fast typing?

* Have programs generate common code
  * Create the project shell/skeleton
  * Scaffolds, migrations


<!SLIDE bullets>
# Rails - Configuration

* Everything specified in the project
  * Easy to share project
  * Essential for deployment

* Code & Configuration
  * Environment Specific

* Gemfile / bundler for dependencies
  * Same gem versions in development & production

* Migrations for database structure


<!SLIDE bullets>
# Source Control with Git

* Repository: stores files and tracks changes to them
  * Can use it for anything; text files and code work well
  * Can maintain different versions, coordinate many developers

* No more fear of losing work, or getting back to something working

* Commit early and often; find your rhythm


<!SLIDE bullets>
# Source Control with Git

* Run locally, but synch it with remote repositories
  * Add files you want to track
  * Commit a set of changes to keep them
  * Push commits from local to remote repositories

* Very complex, but the basics can get you far
  * Many command line tools

* Go sign up for <http://www.github.com>
  * Elysian Fields of Open Source 
  * Git additions: Fork, Pull Requests

<!SLIDE bullets>
# Rails Server - Running Locally

* Use Bundler to install dependencies
  * Uses Gemfile

* Rails program to start developmet server
  * Runs a basic Ruby web/HTTP server

* Lets you see changes as you code
  * Edit, save, reload browser


<!SLIDE bullets>
# Heroku - Running Remotely

* A service for running apps
  * Started with Rails, now runs anything
  * Create new, small apps for free
  * Has great docs, and online examples

* For beginners and experts

* Start small, scale big


<!SLIDE bullets>
# Heroku Logistics

* Uses `git push` to heroku remote repo

* Has it's own command line 'toolbelt'
  * Also has a web interface

* Some limits
  * Email, file uploads

* Many 3rd party plugins


<!SLIDE bullets>
# Go Do It!

* Generate a new Rails app
  * `rails new myapp`

* Add it to Git
  * `git init`
  * `git add .`  
  * `git commit -m 'new project!'`

* Run it locally
  * `bundle`
  * `rails server`

* Deploy and run on Heroku
  * `heroku create`
  * `git push heroku master`
