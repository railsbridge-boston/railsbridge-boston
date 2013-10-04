# Installing on Mac OS X

Make sure you have downloaded RailsInstaller or the Railsbridge Virtual machine
as instructed by the [pre-workshop steps](/pre_workshop).

## 1. Start the Installation

###  Option 1. RailsInstaller

If you downloaded RailsInstaller in the pre-workshop steps, find the file you
downloaded and double-click it. This will unarchive the installer.  Then double
click the installer. This will open an installation wizard. 

>   If you are told that the installer "can't be opened because it is from an
    unidentified developer," control-click (or right-click) on the RailsInstaller
    application in the Finder.  Choose "Open" from then menu, then click "Open" in
    the dialog that appears.*

* Select your language, then click "OK"
* Click "Next >"
* Enter your Full Name and Email. Use the same name and email for this, GitHub and Heroku. 
* Click "Next" and "Next" and let the installer run.
* Uncheck 'Open readme.pdf'—you don't need it
* Click "Finish" and you are done!

### Option 2. Railsbridge Virtual Machine

Open a Terminal. Ask a TA to show you how to do this if you're not sure.

You're ready to start the Railsbridge Virtual Machine.

In the Terminal type the following:

```text
cd ~/Desktop
mkdir railsbridge
cd railsbridge
```

Then type the following commands. Press ENTER after each command and wait for the operation to finish
before typing the next one.

```text
vagrant box add railsbridgebos http://s3.amazonaws.com/railsbridgeboston/railsbridgevm-3.2-c.box
vagrant init railsbridgebos
vagrant up
vagrant ssh
```

After typing the last command, you should see a welcome message and prompt
telling you that you're inside the Railsbridge Virtual Machine.

Leave this terminal window open on your computer.

Now continue with the Installfest and workshop. 

[« Back to Installfest](/installfest)
