#Goals


*Code some common HTML attributes


*Use class and id attributes as hooks for CSS styles

#Steps


>[]()#Step 1:


>To get a bit fancier with our CSS, we might want to add some classes and ids to our HTML. Start by adding one or two more paragraphs of text to the bottom of your HTML document. The last lines might look like this:

<h1>Hello 
<em>World
</em>!
</h1>
  
<p>My name is Rachel.
</p>

  
<p>In my free time, I enjoy math, Railsbridge, soccer,
   and shopping for fancy hats.
</p>

</body>

</html>

[]()#Step 2:


>Add the class 'important' to your first paragraph. It'll look something like this:

<h1>Hello 
<em>World
</em>!
</h1>
  
<p 
class=
"important">My name is Rachel.
</p>

  
<p>In my free time, I enjoy math, Railsbridge, soccer,
   and shopping for fancy hats.
</p>

</body>

</html>

Refresh the page in the browser. You should see any new paragraphs you added, but no styling changes. Many HTML attributes, like classes and ids, don't directly convey visual information. Your paragraph will look the same until we use the class to add CSS styling.

[]()#Step 3:


>To add a style rule that will apply to a class, use the syntax 
.class-name for your selector. Try giving the 'important' class a green border. Add this rule inside of your 
style tag:

.important { 
  
border: 
1px 
solid 
green;
}

Refresh the page in the browser. You'll see something like this:

![](img/css_class.png)

[]()#Step 4:


>Let's wrap your name in a 
span tag and give that an ID of 'user-name'. It'll look something like this:

<h1>Hello 
<em>World
</em>!
</h1>
  
<p 
class=
"important">My name is
   
<span 
id=
"user-name">Rachel
</span>.
</p>

  
<p>In my free time, I enjoy math, Railsbridge, soccer,
   and shopping for fancy hats.
</p>

</body>

</html>

Save and refresh the page in the browser. You shouldn't see any difference.

[]()#Step 5:


>To add a style rule that will apply to an id, use the syntax 
#id-name for your selector. Try making the 'user-name' id look bold. Add this rule inside of your 
style tag:

#user-name { 
  
font-weight: 
bold; 
}

(Note: The span is just an element that lets you apply a class, id, or other attribute to a string of text. Browsers won't give it any styling by default.) But once you add your style rule and refresh the page in the browser, you'll see something like this:

![](img/css_id.png)

#Explanation


>##Why Attributes?



HTML tags don't just wrap content. They can also convey information about that element, with attributes. For example, on the last page you coded a 
style tag with a 
media attribute that you set equal to 
screen, which told the browser, 'Use these styles when you're displaying content on screen, but not when you're printing it on the laser printer:'

<style 
type=
"text/css" 
media=
"screen">

Sometimes, attributes will have an obvious visual effect. For example, if you're coding


form inputs, you'll use attributes to tell the browser what type of input they are,


and the results will be easy to tell apart. This input:

<input 
type=
'radio' 
name=
'rando-radio'>

looks like a radio button: 
, but

<input 
type=
'password' 
name=
'fake-password' 
value=
'ick'>

looks like a password text input: 
 even though they use the same tag.


##Classes vs. IDs



*A 
**class**
 attribute should be used to group elements that 
could exist
more than once on a given page. For example, you might give certain
paragraphs a class of "important" and use that class to highlight them.
Even if you only have one paragraph that's important now, you might
want to add more later.


*An 
**id**
 is a unique label. Use it to identify things you'd only have one
of. For example, if you ran a news website, you would only have one element
on a page that would serve as a masthead, and you could give it an id
like 
id="handsome-header"

#Next Step:


Go on to 
[Basic Javascript](basic_javascript?back=HTML_attributes%23step5)