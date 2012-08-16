## Step 1: Visit the Heroku web site
[http://heroku.com](http://heroku.com)

## Step 2: Create an account
click the big **Sign Up** button (it's about halfway down the page)
Enter your email address.

![](/images/warning.png) Use the same email address for heroku, git, github, and ssh.

## Step 3: Activate your account
Heroku will send you an activation email. Open it and click on the activation link. It will take you to the Heroku site. Enter and confirm your password. Hit Save.

## Step 4: Install the heroku gem
Type this in the terminal:

```text
gem install heroku
```

### Verify
Type this in the terminal:

```text
heroku -v
```
Expected result:

```text
2.26.7
```

## Step 5: Add your SSH key to your Heroku account
Go on to [Create An Ssh Key](create_an_ssh_key)

Type this in the terminal:heroku keys:add

![](/images/info.png) If you have further Heroku issues try following 
[these directions](http://support.heroku.com/forums/43117/entries/32505) to install (or re-install) the heroku client.

## Next Step
[« Back to Installfest](/ruby_from_scratch)
