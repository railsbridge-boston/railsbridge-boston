[]()#Step 1:Visit the Heroku web site


>[http://heroku.com](http://heroku.com)

[]()#Step 2:Create an account


>click the big 
**Sign Up**
 button (it's about halfway down the page)

Enter your email address.

![](/img/warning.png)Use the same email address for heroku, git, github, and ssh.

[]()#Step 3:Activate your account


>Heroku will send you an activation email. Open it and click on the activation link. It will take you to the Heroku site. Enter and confirm your password. Hit Save.

[]()#Step 4:Install the heroku gem


>[]()#Option 1:if you are using rvm


>Type this in the terminal:rvm @global gem install heroku


[]()#Option 2:otherwise


>Type this in the terminal:gem install heroku


#Verify


>Type this in the terminal:heroku -v

Expected result:2.26.7

[]()#Step 5:Add your SSH key to your Heroku account


>Go on to 
[Create an Ssh Key](create_an_ssh_key?back=create_a_heroku_account%23step5)

Type this in the terminal:heroku keys:add

![](/img/info.png)If you have further Heroku issues

try following 
[these directions](http://support.heroku.com/forums/43117/entries/32505) to install (or re-install) the 
heroku client.

#Next Step


Go on to 
[Create and Deploy a Rails App](create_and_deploy_a_rails_app?back=create_a_heroku_account%23step5)
