# Extra Credit: Pagination

## Goals
Pagination is what splits a long list of things onto multiple pages. When you
have hundreds or even thousands of things to display, pagination can be a really
helpful way to make sure your website doesn't take too long to load, or get too
messy.

If you haven't done the [Rails console extra credit](04_console) yet, this would
be a good time to do that instead. If you finish that, you can always come back
here.

## Steps

### Step 1: Add the Kaminari Gem to Your Project

We're going to use a rubygem called *Kaminari* to do pagination for us. It
should make setting up very easy.

You will need to open up your `Gemfile` and add the following line to it:

```ruby
gem 'kaminari'
```

Any time you add something to your `Gemfile`, you should make sure it's
installed by typing `bundle install` (or just `bundle`) at the terminal.

```text
> bundle install
Using rake (0.9.2.2)
...
Using kaminari (0.13.0)
...
Using uglifier (1.2.7)
Your bundle is complete! Use `bundle show [gemname]` to see where a bundled gem
is installed.
```

### Step 2: Install the Kaminari Configuration Files

Kaminari, like many rubygems, requires that it be configured for your
application. Kaminari comes with a generator to help you build this
configuration, so you don't need to do it yourself. Type the following at the
terminal:

```text
rails generate kaminari:config
```

This will create a file called `kaminari_config.rb` inside the
`config/initializers` folder. You can open it to see what is in the file, but
let's just move on for now.

### Step 3: Enable Pagination for Topics

Next, we are going to change the `index` method in our TopicsController. Open up
`app/controllers/topics_controller.rb` and look for this section:

```ruby
def index
  @topics = Topic.all

  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @topics }
  end
end
```

See where it says `Topic.all`? We only want to show a *some* of the topics, not
all of them, so let's change that to say `Topic.page params[:page]`. When you're
done, the section from before should look like this:

```ruby
def index
  @topics = Topic.page params[:page]

  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @topics }
  end
end
```

Now when you visit [http://localhost:3000/topics], you shouldn't see all of
the topics unless you have less than 25.

If you want to see the second page, try adding `?page=2` to the end of the URL.

### Step 4: Add Pagination Links

Expecting your users to change the address bar to add `?page=2` just to see the
second page doesn't seem like a very good idea, so let's make sure they have
links to the different pages.

Open up your `app/views/topics/index.html.erb` file and add the following line
above the line that says `<br />`:

```ruby
<%= paginate @topics %>
```

Now, when you refresh the page, you should see a list of pages at the bottom,
along with *Prev* and *Next* links.

## Finished

You're all done! You can return to [the main curriculum](javascript:window.history.back(\)).
