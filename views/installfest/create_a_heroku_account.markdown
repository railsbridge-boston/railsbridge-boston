# Create a Heroku Account
## 1. Visit the Heroku web site

[http://heroku.com](http://heroku.com)

## 2. Create an account
click the big **Sign Up** button (it's about halfway down the page)

Enter your email address.

![](/images/warning.png)Use the same email address for heroku, git, github, and ssh.

## 3. Activate your account
Heroku will send you an activation email. Open it and click on the activation link. It will take you to the Heroku site. Enter and confirm your password. Hit Save.

## 4. Install the Heroku toolbelt
[https://toolbelt.heroku.com](https://toolbelt.heroku.com)

Download the version for your OS, and run the installer.

## 6. Log into your Heroku account from the command line
Type this in the terminal:

```text
heroku login
```

You will be asked to enter your Heroku email and password. 
Once you do, you will be either be asked to generate a public key (if you don't yet have one), 
or to upload your existing public key. Either way, say yes.

Expected output:

```text
Enter your Heroku credentials.
Email: adam@example.com
Password:
Could not find an existing public key.
Would you like to generate one? [Yn]
Generating new SSH public key.
Uploading ssh public key /Users/adam/.ssh/id_rsa.pub
```

![](/images/info.png) If `heroku login` doesn't work, please ask for help from an instructor.

## Success!
You are now ready to deploy web applications with Heroku!

[«Back](/installfest)
