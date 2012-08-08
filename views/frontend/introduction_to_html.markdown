#Goals


*Create a blank HTML file


*See how that file is interpreted by a web browser

#Steps


>[]()#Step 1:


>You'll need to fire up your text editor (like Komodo Edit or Text Wrangler) for these steps. We're going to make an html document!

Make a new file and call it 
hello.html. (In some editors, you may need to set the file type to 'HTML'; but usually, just using the .html extension will be enough.)

![](img/hello_html.png)

When you see a blank page called 'hello.html', you're all set.

[]()#Step 2:


>As always, we'll get started with a simple Hello World.

Add some text to the document so you have something to look at. Type this:

Hello World!

Save the file some place you'll be able to find easily, like your Desktop.

[]()#Step 3:


>Now, open Chrome, find the file on your Desktop (or wherever you put it) and drag it into a new Chrome window.

![](img/hello_world.png)

Even though you haven't coded any HTML tags, browsers are 
 at showing text on screen, so your browser will just show you your text.

[]()#Step 4:


>Kind of boring, right? To make it look a little less plain, let's drop in an HTML tag. Update the contents of your hello.html file to look like this:

Hello 
<em>World
</em>!

The 
em HTML tag tells your browser to add 
emphasis to that string of text. Refresh your browser and you'll see the effect:

![](img/hello_world_jazzy.png)

#Explanation


>##What is HTML?



HTML stands for 
**H**
yper-
**t**
ext 
**M**
arkup 
**L**
anguage.


Now that you've used some HTML, let's go through each of those words in reverse order and explain them...


***L**
anguange - People use different languages for different types of communication.
We use languages such as English or Mandarin for human communication or languages such as
Ruby or Java to give instructions to computers.  HTML is a special language for describing documents.


***M**
arkup - Being a 
markup language means that HTML is mixed in with plain content text.
Think of a time when you turned in an essay to your teacher.  Your teacher reads your essay
and 
marks it 
up with comments or suggestions, adding extra information on top of the plain text
content.


***H**
yper-
**t**
ext - This term comes from the fact that early computers could only work with plain text
files.  Computer users as early as the 1960s wanted to enrich this text and make it easier to work with.
Thus, hypertext was born.  It is text because the file is stored as plain text, yet hyper because the text
has a special meaning beyond the plain text when interpreted by a special program.  For HTML, that special
program is your web browser.##That First Example



As always, we started with a simple hello world. We were able to get a message to


render in the browser with 
just plain text:


****
Hello World!


****
But that did't show us how 
hypertext works.


##HTML is Tags



In order to add special meaning to text, we need give the browser clues about how the


text should look but we have to do so in a way that makes it easy for both browsers


and people to tell the difference between content and hypertext.  HTML does this


with "tags".  An HTML tag is encased within 
<, 
>, called "angle brackets".  An


example tag is 
<html>.  Every tag has an accompanying closing tag.  Closing tags are


also encased in angle brackets but begin with a forward slash. So the closing tag that


matches our example would be 
</html>. A tag and its content create an HTML 
element.


You just coded your own matched pair of an opening and closing html tag:

Hello 
<em>World
</em>!

Remember that 
em was short for 
emphasis.  It's a tag that means we want the text to stand out in front of the user. The browser's standard way of displaying emphasis is to italicize the text, like so:


****
Hello 
World!


****
Of course, with CSS, we can tell the browser to change the way it displays emphasis. We'll come back to this later.

#Next Step:


Go on to 
[Html Tags](HTML_tags?back=introduction_to_html%23step4)