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

You're ready to start your machine!

```text
vagrant box add railsbridgebos ~/Downloads/railsbridgevm-3.2.box
vagrant init railsbridgebos
vagrant up
vagrant ssh
```

Now you should see a welcome message and prompt. You're inside the Railsbridge
Virtual Machine.

Now continue with the Installfest and workshop. 



[« Back to Installfest](/installfest)
