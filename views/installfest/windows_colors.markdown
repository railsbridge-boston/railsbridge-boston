The Rails server logging and test results are much easier to read with colored output but the Console with Ruby and Rails defaults to white on black.  Add colors by following these steps.

[]()#Step 1:Download ANSICON


>In the browser, visit 
[https://github.com/adoxa/ansicon/downloads](https://github.com/adoxa/ansicon/downloads)

Click the 
ansi153.zip link to download the file (or whatever the most recent version is)

Double-click the file to unzip it

[]()#Step 2:Determine if you have a 32 or 64 bit Operating System


>*In Windows 7 or Vista, from the Start menu, type system in the Start Search box, and then click system in the Programs list.  System Type under System will say whether it's a 32 or 64 bit Operating System


*In WIndows XP, right click on the "My Computer" icon, choose Properties, then General


*if System says Windows XP Professional x64 Edition Version 
then yours is 64 bit


*if it says Windows XP Professional Version  
then it's 32 bit

[]()#Option 3:if your OS is 32 bit


>copy all the files from the subdirectory 'x86' of the downloaded files to C:\Windows\system32


[]()#Option 4:if your OS is 64 bit


>copy all the files from the subdirectory 'x64' of the downloaded files to C:\Windows\system32


[]()#Step 5:Set up colors


>open Console with Ruby and Rails

Type this in the terminal:ansicon

now, when you use git and rspec, the output will not be all white-on-black