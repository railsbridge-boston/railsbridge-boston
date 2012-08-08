An SSH key uniquely identifies you (and your computer) when your computer is communicating with other computers. Think of an SSH key as a fancy password.

You'll need one of these to create your Heroku and Github accounts.

[]()#Option 1:Did you use RailsInstaller on Windows?


>Congratulations, you already have an ssh key!


[]()#Option 2:otherwise


>![](/img/warning.png)Use the same email address for heroku, git, github, and ssh.

![](/img/warning.png)**REPLACE**
 
student@example.com with your 
**actual email address**
 below.

Type this in the terminal:ssh-keygen -C student@example.com -t rsa

[]()#Step 1:Choose keyphrase


>>[]()#Option 1:Hit enter to accept blank passphrase, then hit enter again


[]()#Option 2:If your computer is shared with other people, as in a work laptop, you should choose and enter a real passphrase. Twice.

Expected result:Generating public/private rsa key pair.
Enter file in which to save the key (/Users/student/.ssh/id_rsa): 
Created directory '/Users/student/.ssh'.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in /Users/student/.ssh/id_rsa.
Your public key has been saved in /Users/student/.ssh/id_rsa.pub.
The key fingerprint is:
88:54:ab:77:fe:5c:c3:7s:14:37:28:8c:1d:ef:2a:8d student@example.com

#Verify


>Your brand-new public key is now stored at 
~/.ssh/id_rsa.pub

[TODO: what is a home directory? what is tilde?]

![](/img/info.png)Public vs. Private Keys

If you look inside 
~/.ssh/, you will notice two files with the same name: 
id_rsa and 
id_rsa.pub.

id_rsa.pub is your 
**public key**
 and can be shared freely.

id_rsa is your 
**private key**
 and must be kept secret.

If someone else gets your private key and your passphrase, then they can pretend to be you and log on to your Heroku or Github accounts and cause mischief!