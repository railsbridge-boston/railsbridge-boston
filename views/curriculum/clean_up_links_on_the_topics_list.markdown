# Clean Up Links on the Topics List
## Goals
Our app is nearly done! The main topics listing page is pretty busy. There are a lot of links that aren't necessary.

Let's clean up the topics list page by doing the following:

* Remove the 'show' link
* Remove the 'edit' link
* Change 'destroy' to 'delete'

## Steps
### Step 1: Remove the 'show' and 'edit' links
Open `app/views/topics/index.html.erb` and remove these two lines:

```erb
<td><%= link_to 'Show', topic %></td>
<td><%= link_to 'Edit', edit_topic_path(topic) %></td>
```

### Step 2: Change 'destroy' to 'delete'
Change the line with the word 'Destroy' to this:

```erb
<td><%= link_to 'Delete', topic, :confirm => 'Are you sure?', :method => :delete %></td>
```

### Step 3: Confirm your changes
Now save your file and try reloading in your browser to see the changes.

## Explanation
* The two links we removed were show and edit. 
We did this because the title now links to the show page and from the show page you can reach the edit page.
* The second change we made was to make the link text 'Delete' instead of destroy.

## Next Step
Go on to [Commit And Push To Heroku, Yet Again](commit_and_push_to_heroku_yet_again)
