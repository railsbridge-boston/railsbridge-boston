# Make the Topic Title a Link
## Goals
Your friends recommended two changes for the site:

* Don't show the description on the list page
* Make the title a link and when its clicked show the description

## Steps
### Step 1: Remove the description
Let's start by removing the description. Open `app/views/topics/index.html.erb` and delete the line that looks like this:

```erb
<td><%= topic.description %></td>
```

Also delete the line that looks like this:

```html
<th>Description</th>
```

If you save and try to load it in the browser you should see that the description no longer appears.

### Step 2: Make the title a link
Now make the title a link by editing `app/views/topics/index.html.erb` (again) and replacing this line:

```erb
<td><%= topic.title %></td>
```

with this:

```erb
<td><%= link_to topic.title, topic %></td>
```

## Explanation

```erb
<td><%= topic.description %></td>
```

This line was getting the description using .description and just printing it out.

```html
<th>Description</th>
```

`<th>` stands for table header and everything between `<th>` and `</th>` was being printed as a table header (bold). 
We removed it since we removed the description and it would look funny to have the header and the wrong thing below it.

```erb
<td><%= link_to topic.title, topic %></td>
```

Here's another use of `link_to` to create a link on the page. This `link_to` creates a link using the text from the 
topic title and goes to the `topic#show` page.

## Next Step
Go on to [Clean Up Links On The Topics List](clean_up_links_on_the_topics_list)
