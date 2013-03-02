<!SLIDE subsection>
# Starting a Rails Application

### Generate, Track Changes, Run, and Deploy ###

<!SLIDE bullets>
# Rails - Big Ideas

* Set of Tools + Generated Code + Code We Write

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
  * Environment Specific, ex: DB devel != production

* Gemfile / bundler for dependencies
  * Same gem versions in development & production

* Migrations for database structure


<!SLIDE bullets>
# Version Control

```ruby
movies = ["Star Wars", "The Godfather"]
count = movies.size
puts count
```

<!SLIDE bullets>
# Version Control

```ruby
titles = ["Star Wars", "The Godfather"]
count = titles.size
puts count
```

<!SLIDE bullets>
# Version Control

```ruby
titles = ["Star Wars", "The Godfather", "Jaws"]
count = titles.size
puts count
```


<!SLIDE bullets>
# VC - Showing Differences

```ruby

movies = ["Star Wars", "The Godfather"]

count = movies.size

puts count
```

<!SLIDE bullets>
# VC - Showing Differences

<pre><code class="ruby"><span style="color: red">titles</span>
<strike>movies</strike> = ["Star Wars", "The Godfather"]
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: red">titles</span>
count = <strike>movies</strike>.size

puts count
</code></pre>

<!SLIDE bullets>
# VC - Showing Differences

<pre><code class="ruby"><span style="color: red">titles</span>
<strike>movies</strike> = ["Star Wars", "The Godfather"<span style="color: red">, "Jaws"</span>]
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="color: red">titles</span>
count = <strike>movies</strike>.size

puts count
</code></pre>

<!SLIDE bullets>
# Version Control with Git

* Also called Source Control

* Repository: stores files and tracks changes to them
  * Can use it for anything; text files and code work well
  * Can maintain different versions, coordinate many developers

* No more fear of losing work, or getting back to something working

* Commit = snapshot of your files that goes in the repo

* Cycle: make changes + commit &rarr; make changes + commit &rarr;



<!SLIDE bullets>
# Source Control with Git

* Run locally, but synch it with remote repositories
  * Add files you want to track
  * Commit a set of changes to keep them
  * Push commits from local to remote repositories

* Very complex, but the basics can get you far
  * Many command line tools
  * We'll use `gittyup`

* Go sign up for <http://www.github.com>
  * *Champs-Élysées* of Open Source 
  * Git additions: Fork, Pull Requests

<!SLIDE bullets>
# Rails Server - Running Locally

* Rails program to start development server
  * Runs a basic Ruby web/HTTP server

* Use Bundler to install dependencies
  * Uses Gemfile

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

* `gittyup` will do this for us

* Has it's own command line 'toolbelt'
  * Also has a web interface

* Some limits
  * Email, file uploads

* Many 3rd party plugins


<!SLIDE bullets>
# Go Do It!

* Generate a new Rails app
  * `rails new myapp`

* Run it locally
  * `bundle`
  * `rails server`

* Initialize git repository
  * `git init`

* Deploy and run on Heroku
  * `heroku create`
  * `gittyup`
