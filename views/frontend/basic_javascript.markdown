#Goals


*Add a JavaScript tag to the document


*Write a simple script to interact with

#Steps


>[]()#Step 1:


>CSS lets you make your pages look good, but it's 
**JavaScript**
 that makes most web pages interactive. Add a script tag to your page so you can get started writing some JavaScript. At the very bottom of your document, under your paragraphs, add this:

<script 
type=
"text/javascript">


</script>

Save and refresh the page in the browser. It should look unchanged.

[]()#Step 2:


>Type in this short script. Javascript is case-specific and picky about syntax, so if your script doesn't run, check carefully for typos.

<script 
type=
"text/javascript">

function 
replaceName() {
    
var myNewName = window.prompt(
'Pick a new name!');
    document.getElementById(
'user-name').innerHTML = myNewName;
  }

  document.onclick = replaceName;

</script>

Refresh the page, and click on one of your paragraphs. You should see a browser prompt like this:

![](img/prompt.png)

Once you answer the prompt, you should see the bold text that was your name change to whatever you entered.

![](img/hello_omg.png)

![](/img/warning.png)It takes years to become a Javascript expert. Don't worry if you found the last step confusing or had trouble getting your script to run. The most important thing to note is that you can put Javascript 
**directly**
 into your document if you want to, by wrapping it in a 
script tag, and use this script to add interactivity to the page.

#Explanation


>##Wherefore JavaScript?



Javascript allows you to make your pages interactive. You can use it to build


anything from a simple animation to a giant web application like Twitter


or Github. It gives you total control to add, remove, or modify content you've


made with HTML. You can also use it to change styles and add or remove


classes.


Writing JavaScript in a web page can be tricky, because you don't start with a


blank slate. All of the contents of the web browser, including built-in browser


objects and your own HTML elements, are there too. You just have to figure out


how to get to them with JavaScript so you can manipulate them.


##What Did That Script Do?



We'll go through it line by line:


The first line declares a 'function', a bit a of reusable code you can refer


to later by calling its name:

function 
replaceName() {

The next two lines are the steps the function will do. The first one creates


a variable called 'myNewName' and sets it equal to a value. The browser window


will try to get this value using its 
prompt method, a built-in function it


knows how to do that involves popping up a text box for you to fill in.

var myNewName = window.prompt(
'Pick a new name!');

In the next line, it goes into your HTML document, and, using a built-in


function the document knows that can find an element by its ID, it locates


your 'user-name' span. It then sets the span's HTML contents to the value of


the variable 'myNewName'

document.getElementById(
'user-name').innerHTML = myNewName;

The 
} closes the function you started defining in the first line.


The final line tells the browser, 'When I click the document, run that function I defined called replaceName'

document.onclick = replaceName;

![](/img/info.png)Some elements of this script, like 'document.onclick' or the '.innerHTML' property, are a little out of date. They're great ways to start playing with Javascript, but when you write your own pro Javascript, you may want to use more contemporary techniques or a library like jQuery that will do these things for you in a less clunky way.

#Next Step:


Go on to 
[Git Your Project](git_your_project?back=basic_javascript%23step2)