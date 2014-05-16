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
<td><%= link_to 'Delete', topic, confirm: 'Are you sure?', method: :delete %></td>
```

### Step 3: Confirm your changes
Now save your file and try reloading in your browser to see the changes.

## Explanation
* The two links we removed were show and edit. 
We did this because the title now links to the show page and from the show page you can reach the edit page.
* The second change we made was to make the link text 'Delete' instead of destroy.

## Extra Credit

Give your new website a personal touch by styling it and adding an image.

Your Rails application loads a CSS stylesheet from the file `public/stylesheets/application.css`. 
Open this file in your text editor.

If you have web design skills already, you can go to town. If not, let's make a simple font change.

Add this style rule:

```css
body {
  font-family: "Comic Sans MS";
}
```

Reload your browser to see your web pages styled in a different font.

Let's add an image to the layout. Open `app/views/layouts/application.html.erb` in your text editor.

Right after the opening `<body>` tag, lets add an image:

```html
<img src="http://www.bordobello.com/wp-content/uploads/2013/05/beer-cat-15.jpg"/>
```

Reload your browser. You should see an image!

You can choose another image from the web and change the `src` attribute value. If the image is too big, you 
can resize it like this

```html
<img src="http://www.bordobello.com/wp-content/uploads/2013/05/beer-cat-15.jpg" height=100 />
```

`height=100` ensures that the image is 100 pixels tall, and no more.

## Explanation
Nothing new here... Except... **you're done!!!**
Congratulations, you just "finished" your first rails app!

(They're never really ever finished... have fun tweaking it!)

## Next Step
Go on to [Next Steps](next_steps)

[<<< Table of Contents](/curriculum/curriculum_toc)