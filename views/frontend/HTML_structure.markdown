#Goals


*Add standard HTML head and body tags


*Add a page title


*Understand the use of non-visible tags like head

#Steps


>[]()#Step 1:


>We started simple, but most HTML pages have some other tags we left out. Those tags are 
doctype, 
html, 
head, and 
body. Try adding them to your HTML file now, matching this order:

![](img/hello_structure.png)

Now refresh your browser. Everything should look mostly the same.

[]()#Step 2:


>The 
head tag doesn't even show up on the page — it's meant to contain extra info 
about your file. Let's add a title to it. Put this line inside the 
head tag:

<title>My Sample HTML page
</title>

When you refresh your browser, you should see the title at the top of the window:

![](img/hello_title.png)

#Explanation


>##The HTML tag and Doctype Clarify the Obvious



The 
<!DOCTYPE html> tells the browser which flavor of HTML you're using. You may see


older doctypes out there that are longer and a lot more complicated, from when people


used various HTML and XHTML versions, but if you create a new page, you can usually just


use this short version. It tells your browser you're using the latest version of HTML,


HTML 5, and it's easy to type.


The 
<html> tag tells your browser something it could probably guess, that your page is


HTML, but it's polite to add it anyway. It wraps all the content of the page (except the

doctype) and states unequivocally, "Here is my HTML!!!"


##Pages, Like People, Have a Head and a Body

<!DOCTYPE html>

<html>
  
<head></head>
  
<body>Content...
</body>

</html>

###The Head



The Head doesn't contain information that you want to see printed on the page. It contains


info 
about the document, including what language or character set you're using, what


the page title should be, and what CSS and JavaScript files to include when the page is


loaded. It might even contain metadata tags that can tell a search engine or another


program more about the file, like who wrote it or what keywords are relevant.


###The Body



The Body contains the actual content of your file, the things you'll want your users


to be able to see, read, or interact with at some point.

#Next Step:


Go on to 
[Basic Css](basic_CSS?back=HTML_structure%23step2)