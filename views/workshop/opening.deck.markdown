!SLIDE centereverything bullets
# Ruby on Rails Workshop

!SLIDE image
# Anatomy of a Web Request
![Internet](/images/slides/internet.png)

!SLIDE bullets
# Anatomy of a HTTP Request
* ![URL](/images/slides/url.png)
* <span style="color:red">the scheme</span>
* <span style="color:blue">the hostname or domain</span>
* <span style="color:green">the path</span>
* <span style="color:orange">the query or parameters</span>
* HTTP request includes an initial line with the path and some other stuff (GET, POST, etc.), headers, and an optional body
* HTTP response includes an initial line with response code and some other stuff, headers, and body (with your HTML or other data in it)
* How did this all come to be?  

!SLIDE image
# Inside the Rails server
![Inside Rails](/images/slides/inside_rails.png)

!SLIDE bullets
# What is Rails?  What is Ruby?
* Rails is a framework, a set of conventions and code that help do all of the stuff that is common to web applications
* Rails is there to help you handle and respond to web requests
* Ruby is a programming language that is the primary language of Rails
* Rails helps you get an application up and running very fast and makes it easy to modify
* Ruby also makes it easy to modify by letting you change code on the fly
* There is more to say than this...

!SLIDE bullets
# What We Are Doing Today
* Building a Rails application from scratch so you can experience the full cycle of development
* You will be organized into a small group with a TA and go step-by-step through the process with plenty of chance to ask questions
* We've divided the workshop up into 5 segments.  Each segment will begin with a short lecture from a TA and then each workshop group will go through that section of the curriculum.
* Those who need extra help can get it from "floater" TAs and those who finish early can work on optional extra credit extensions (or take a break)

!SLIDE bullets
# What You Should Do Tomorrow
* Start building your own app (or go to the beach)
* But wait, will I be ready? Yes, and here's why...

![Do Tomorrow](/images/slides/do_tomorrow.png)

!SLIDE bullets
# Knowing How to Find the Answers
* Let's say you need to add a feature to your site like logging in with Facebook or paginating a big list of products, you can bet it has been done before and you can find information on how to do it. 
  * [Google](http://www.google.com)
  * [Github](http://www.github.com)
* Let's say you're getting an error when you try to load a page or seeing one in your server logs, others have probably gotten the same error before: 
  * [Stackoverflow](http://www.stackoverflow.com) ([Example](http://stackoverflow.com/questions/11996767/joining-2-elements-at-once))
  * [Google](http://www.google.com)
* Let's say you're trying to write ruby code to do something to a list of objects
  * Try [the documentation](http://api.rubyonrails.org/)

!SLIDE bullets
#  Mistakes and Errors
* Mistakes and errors are an integral part of development.  They happen *all the time* to *everyone*.
* Rails is designed to minimize their effect on your app:
  * Separate development and production environments
  * Automated testing
  * Easy, highly-specified set up and reproduction of a development environment for an app

!SLIDE bullets
# Open Source: a Practice and an Ethos
* Did you notice that there was nothing you had to buy to get your development environment set up?  Ruby and Rails are open source
* Open Source has a technical meaning based on the license on the source code.  Open source code can be freely shared and used (though there are sometimes restrictions on how it can be used)
* Open Source is also an ethos.  A practice of sharing code within the community which strengthens the whole community.  And it's not just altruism.  
  * Companies hiring will look at your Github repositories to evaluate your work, they'll notice if you have a lot of points for answering questions on Stackoverflow.
  * Your code may benefit from improvements from others who use it
  * The wealth of freely available ruby gems (think libraries of code that perform specific functions) makes it faster and easier for everyone to develop new applications
* The ethos extends farther, to community events and sharing like this event. 

!SLIDE bullets
# Let's Get Started
* Please seat yourselves in groups of 3-4.  There should be about 2 groups per table.  
* Roughly divide up so that people who feel they have less experience are at the window side of the room and those who feel they have more experience are near the door side of the room.  
* A teaching assistant will come and join each group and move you around as needed.  
* This will be your group and your seat for the day, so bring your stuff to your new location.  

