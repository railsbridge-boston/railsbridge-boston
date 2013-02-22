# Create a Heroku Account
## 1. Visit the Heroku web site

[http://heroku.com](http://heroku.com)

**Warning: Don't install the Heroku Toolbelt**

They will ask you to install Toolbelt on the Heroku website, but don't do it. It will mess up
your ruby install.

## 2. Create an account
click the big **Sign Up** button (it's about halfway down the page)

Enter your email address.

![](/images/warning.png)Use the same email address for heroku, git, github, and ssh.

## 3. Activate your account
Heroku will send you an activation email. Open it and click on the activation link. It will take you to the Heroku site. Enter and confirm your password. Hit Save.

## 4. Install the Heroku gem

```text
gem install heroku
```

If you see: 

```text
!    The `heroku` gem has been deprecated and replaced with the Heroku Toolbelt"
```
Don't worry about it, that's expected.

## 6. Create an ssh key

**Windows**  
You're all set, a key was created when you installed RailsInstaller.

**OS X/Linux**  
Type this in the terminal:

```text
ssh-keygen -t rsa
```

You will be prompted to enter a location for the ssh key. Press 'enter' to accept the default.

```shell
Generating public/private rsa key pair.
# Enter file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
```

You will be asked for a passphrase. Leave it blank and press enter for no passphrase.

```shell
Enter passphrase (empty for no passphrase): [Type a passphrase]
# Enter same passphrase again: [Type passphrase again]
```

## 7. Then add your public key to your Heroku account

```text
heroku keys:add
```

## Success!
You are now ready to deploy web applications with Heroku!

[«Back](/installfest)
