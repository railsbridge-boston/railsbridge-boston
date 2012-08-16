# Redirect to the Topics List After Creating a New Topic
## Goals
When a user creates a new topic they are currently shown a page with
just that topic. For our voting app it makes more sense that they
would be taken back to the topic list.

* In this step we'll change the flow of our app so that the user is taken back to the topics list after they add a new topic.

## Steps
### Step 1: Change the topics controller
Open `app/controllers/topics_controller.rb` and look at the create method.

Find the line:

```ruby
format.html { redirect_to @topic, :notice => 'Topic was successfully created.' }
```

and change `@topic` to `topics_path` like this:

```ruby
format.html { redirect_to topics_path, :notice => 'Topic was successfully created.' }
```

so that the file looks like this:

```ruby
def create
  @topic = Topic.new(params[:topic])
  respond_to do |format|
    if @topic.save
      format.html { redirect_to topics_path, :notice => 'Topic was successfully created.' }
      format.json { render :json => @topic, :status => :created, :location => @topic }
    else
      format.html { render :action => "new" }
      format.json { render :json => @topic.errors, :status => :unprocessable_entity }
    end
  end
end
```

### Step 2: Add the flash message to your application view
Open `app/views/layouts/application.html.erb`.  
Find the `<body>` HTML tag and immediately after add the following code:

```erb
<% flash.each do |name, msg| %>
  <div><%=msg %></div>
<% end %>
```

### Step 3: Confirm your changes
Look at [http://localhost:3000](http://localhost:3000).

## Explanation
`format.html { redirect_to topics_path, :notice => 'Topic was successfully created.' }`:

* `format.html` means that the server should send html back to the browser
* `redirect_to topics_path` means show the **topics list page** when we're done creating a topic
* `:notice => 'Topic was successfully created.'` puts the message into the flash so it will be displayed on the topics list

## Next Step
Go on to [Make the Topic Title a Link](make_the_topic_title_a_link)
