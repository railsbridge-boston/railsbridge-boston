#Goals


*Check out your starter files in the browser


*Compare strategies for CSS and JavaScript inclusion (inline vs. link)

#Steps


>[]()#Step 1:


>Check out your page on the web (at [your-github-user-name].github.com). You should see content there, now that you've pushed to github.

![](img/page.png)

[]()#Step 2:


>Now, drag the 'index.html' page from your project into a web browser, 
**and**
 open it up in a text editor. The web browser should look the same as above. The text editor should look like this:

![](img/page_html.png)

While it's great that you can push files to github quickly, you'll usually want to have an even more immediate way to see your changes. Opening the same file in a browser and in a text editor lets you see the effects of each code change right after you make it.

[]()#Step 3:


>You'll remember when we were working on our hello.html file, we put JavaScript and CSS directly into the HTML document. But you can also include js and css in external files, with a link.

This file, 'index.html', includes a link to a JavaScript file and a CSS file, but they're commented out (i.e. wrapped in an HTML tag that tells the browser, 'ignore this!').

HTML comment tags begin with 
<!-- and end with 
-->. Here's an example:

<!-- this is a comment. the browser ignores it -->

Look through index.html and find the links to the CSS and JavaScript files. Delete the comment tags from around them, so the browser will read them.

#Explanation


>##Inline vs. Linked



Javascript and CSS can both be put directly into the HTML page, but on bigger projects,


you'll usually want to place your js and CSS in separate files and include those files


in your HTML with a link.


Linking files will help you keep your code organized and easier to maintain. It means,


for example, that if you change the style of buttons on your website, you'll be able to


change it in just one place, instead of having to update every page.


###Javascript



*A JavaScript tag looks like this when it's wrapping code written right into the HTML page:

<script 
type=
"text/javascript">

// Your code goes here!

</script>

*A JavaScript tag looks like this when it's a link:

<script 
src=
"resources/javascript.js" 
type=
"text/javascript"></script>

###CSS



*A CSS stylesheet looks like this when it's written right into the HTML page:

<style 
type=
"text/css" 
media=
"all">
  /* Your styles go here! */ 

</style>

*A CSS tag looks like this when it's a link:

<link 
rel=
"stylesheet" 
href=
"resources/layout.css" 
type=
"text/css">

#Next Step:


Go on to 
[Add More Elements](add_more_elements?back=make_a_web_page%23step3)