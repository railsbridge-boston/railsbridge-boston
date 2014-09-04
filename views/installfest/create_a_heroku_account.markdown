# Create a Heroku Account
## 1. Visit the Heroku web site

[http://heroku.com](http://heroku.com)

## 2. Create an account
click the big **Sign Up** button (it's about halfway down the page)

Enter your email address.

![](/images/warning.png)Use the same email address for heroku, git, github, and ssh.

## 3. Activate your account
Heroku will send you an activation email. Open it and click on the activation link. It will take you to the Heroku site. Enter and confirm your password. Hit Save.

## 4. Install the Heroku Toolbelt

You can skip this step if you installed the RailsBridge Virtual Machine.
Otherwise, go to the [Heroku Toolbelt Site](https://toolbelt.heroku.com/) and follow the instructions for your operating system.

## 5. Create an ssh key

Type this in the terminal:

```text
ssh-keygen -t rsa
```

You will be prompted to enter a location for the ssh key. Press 'enter' to accept the default.

```text
Generating public/private rsa key pair.
# Enter file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
```

You will be asked for a passphrase. Leave it blank and press enter for no passphrase.

```text
Enter passphrase (empty for no passphrase): [Type a passphrase]
# Enter same passphrase again: [Type passphrase again]
```

## 6. Then add your public key to your Heroku account

```text
heroku keys:add
```

## Success!
You are now ready to deploy web applications with Heroku!

[«Back](/installfest)
