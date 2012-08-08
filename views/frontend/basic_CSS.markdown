#Goals


*Learn basic CSS syntax


*Write some basic CSS styles

#Steps


>[]()#Step 1:


>With just HTML, you could put a lot of content on the web, but HTML by itself usually looks plain. CSS styles allow us to control the display of HTML. Add a style tag below the 
<title> tag in the head. A standard style tag might look like this:

<style 
type=
"text/css" 
media=
"screen">


</style>

Now refresh your browser. Everything should look the same.

[]()#Step 2:


>Write some styles that will apply to your 
h1 and 
p tags.

<style 
type=
"text/css" 
media=
"screen">
h1 { 
  font-size: 20px;
  border-bottom: 1px solid #cccccc;
}

p { 
  padding: 10px; 
  background-color: papayaWhip;
}

</style>

When you save and refresh your browser, you should see the styles you added:

![](img/hello_style.png)

#Explanation


>##What is CSS?



CSS stands for 
**C**
ascading 
**S**
tyle
**s**
heets. It's a language for creating 
**rules**
 that


can 
**select**
 various elements on the page and change their 
**visual properties**
.


***C**
ascading - The 'cascade' is one of the trickier elements of CSS to master, but it
basically means you can define a bunch of styling rules of different strengths, and CSS
will apply them all, resolving any conflicting rules by allowing stronger rules overwrite
(or 
cascade over) weaker rules.


***S**
tyle
**s**
sheets - CSS files are called 'stylesheets' because they allow you to put your
styling rules into a separate document (a 'sheet') of file type .css, and then choose to
include one or more in a given HTML page. This is a powerful feature for sites with many pages,
since it means you can write your rules once and then include them everywhere on your site with
a single link on each page.##CSS Rules Are Made of a Selector and Attributes



*The 
**Selector**
 tells the browser what elements to add that style to.


*The 
**Attributes**
 (or 
**Properties**
) tell the browser how to style the elements you selected.![](img/css.png)


Don't try to memorize all the CSS properties! You can always look them up on sites like:


*[Mozilla Developer Network](https://developer.mozilla.org/en/CSS)


*[Dochub](http://dochub.io/#css/)##You Can Get Crazy with CSS



Most of the fancy effects you'll see on the web are done with CSS. For example, here's two


pictures of the same HTML page, but on the right side, I've turned off all the CSS that was


applied to it. Almost all of the color and formatting disappear. The code snippets and buttons


that were obvious with CSS styles now just look like text.


![](img/css_bundler.png)


For some great examples of the power of CSS, check out the 
[CSS Zen Garden](http://www.csszengarden.com/). It takes


the same HTML, but shows it with stylesheets from a bunch of different designers applied to


it. Here are two different designers' interpretations of the same HTML:


![](img/css_zen.png)

#Next Step:


Go on to 
[Html Attributes](HTML_attributes?back=basic_CSS%23step2)