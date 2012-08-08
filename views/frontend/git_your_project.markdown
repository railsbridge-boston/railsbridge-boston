#Goals


*Create a new git repository


*Push your repository to github

#Steps


>![](/img/warning.png)If you have 
any problems with these steps, grab a TA and have them help you out.

![](/img/info.png)If you have a 'railsbridge' folder on your computer or some other place you like to keep project files, 
cd to that directory and then follow the steps below.

[]()#Step 1:


>To get started on the project, you'll need to open up your command line. If you have a Mac, open up the Terminal app. If you're on a PC, look for a program called Command Prompt. You'll also need to know your Github user name and password, so go ahead and double-check it if you don't remember. Wherever you see 
[your-github-user-name], you'll replace that with your user name (and delete the braces).

Type this in the terminal:mkdir [your-github-user-name].github.com

mkdir stands for 'make directory.' You just made a new directory that you'll put your project files in.

[]()#Step 2:


>Type this in the terminal:cd [your-github-user-name].github.com

You just changed directories and moved into the folder you just created.

Type this in the terminal:git init

You just initialized an empty repository, i.e. told git, 'I want to start a new project here.'

[]()#Step 3:


>Type this in the terminal:touch index.html
git add index.html

This creates a blank, new file called 'index.html'. The next line tells git you want to stage the file.

Type this in the terminal:git commit -m 'first commit'

You just made an initial commit. (Think of it as a snapshot of your project that you can come back to later.)

[]()#Step 4:


>You really do have to type your user name three times in the next command. Get ready for it.

Type this in the terminal:git remote add origin https://[your-github-user-name]@github.com/[your-github-user-name]/[your-github-user-name].github.com.git

You just set up a 'remote' — a git repository somewhere else (in this case, on github) that also holds your project files.

[]()#Step 5:


>Now, push the new file you just commited to github.

Type this in the terminal:git push -u origin master

You'll probably be prompted to type your github password at this point. After you do, you'll have just pushed your project to github's servers!

[]()#Step 6:


>Woohoo!!! Take a breath and wait 15 minutes.

Because you gave your github repository a special name (in the format [your-github-user-name].github.com), github will automatically take the contents of this one repository and make them your personal web page on github. But there's a small lag between the first push and being able to see your content on the web.

In 15 minutes, when you visit [your-github-user-name].github.com in a browser, you should see a blank white page. This is great! You're looking at the index.html file you just created, now live on the web!

#Explanation


>##What is Git?



Git is an open-source tool for tracking and managing changes to source code. If you've


used tools like SVN or CVS, you can use Git to do the same things.


Git is not required for front end development at all — some people use other source


control tools like SVN, and there are wild and crazy coders who don't use source control


at all.


###But here are some good reasons to use a source control system:



*You can commit different/earlier versions of a project, and get them back
later if you change your mind.


*It's easy to also copy these versions to another server or computer, so you
have a backup if your laptop is stolen or your hard drive gets damaged.


*Other coders can more easily work on a project with you. Source control
systems have an automated way to 'merge' or combine changed files together.###And there are some neat things about Git specifically:



*Git is distributed. Each person or computer working on the project has a full
copy of it. There isn't a remote server you have to connect to that has the
'official' copy somewhere.


*Git makes it easy to 'branch' or work separately for a while on an alternate
version of the project, and then 'merge' those changes back in if you want to.


*Git is ultra-powerful, and even many experienced developers are mystified
by its wily ways.##What is Github?



Github is a web application that will store copies of your git repositories for you.


It's a convenient place to keep a backup of your projects, and it has a nice-looking


web interface that makes it easy to see your files and changes.


Projects that you make public (i.e. open source) can be stored on Github for free.

#Next Step:


Go on to 
[Add Starter Files](add_starter_files?back=git_your_project%23step6)