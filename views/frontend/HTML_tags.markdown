#Goals


*Add some tags to your HTML file


*Learn more about available tags

#Steps


>[]()#Step 1:


>Add some more lines of content to your HTML file. Introduce yourself.

Hello 
<em>World
</em>!

My name is Rachel.

Now save the file and refresh your browser.

![](img/hello_world_2line.png)

[]()#Step 2:


>Even though we put in some blank lines, the browser ignored them. So we'll have to use tags to break up our content.

Update your HTML with an 
h1 tag and a 
p tag:

<h1>Hello 
<em>World
</em>!
</h1>


<p>My name is Rachel.
</p>

Now save the file and refresh your browser.

![](img/hello_world_2line2.png)

#Explanation


>##Use Tags to Separate Blocks of Content



You'll notice that even if you put in extra lines and spaces, HTML will treat any number of


new line or space characters like there's just one space there. When you're getting started


with HTML, this can seem like a pain, because you have to type

<p>first sentence
</p>

<p>second sentence
</p>

when all you want is a blank line between two sentences. But as you get more advanced, this


aspect of HTML will feel more useful, because it means you can format your code however is


most readable for 
**you**
, without worrying about what the browser will think of your blank


lines and spaces.


###Nested Tags



It's common for an HTML tag to be nested inside another tag. In the example above, you saw:

<h1><em></em></h1>

![](/img/warning.png)Just make sure that the tags are correctly 
nested. For example, you can't do:

<h1><em>Hello World!
</h1> I like you!
</em>

The inner tag, 
em, needs to close before the outer tag closes.

##Tags for Every Occasion



The meteoric rise in popularity of the world-wide-web and the recent proliferation of web


applications has made HTML hugely popular.  While originally used only for simple documents,


HTML now has tags for embedded video and music playback, embedding images, filling out


web forms, and all kinds of other useful tags.


You just used two well-known tags, 
h1 for a headline and 
p for a paragraph. But there


are a ton of other tags you might use:

Tag

Purposea

A link (the 'a' stands for Anchor)ul

Start a bulleted list (an 'unordered list')ol

Start a numbered list (an 'ordered list')li

Add a list item to a bulleted or numbered listaudio

Link to an audio file (allows users to play the file in the page)table, tr, td

Data tables with table rows and data cellsform

A form that can collect data from user inputinput

A text input, a button, or a checkbox in a formDon't try to memorize all the tags! You can always look them up on sites like:


*[Mozilla Developer Network](https://developer.mozilla.org/en/HTML/Element)


*[Dochub](http://dochub.io/#html/)

#Next Step:


Go on to 
[Html Structure](HTML_structure?back=HTML_tags%23step2)