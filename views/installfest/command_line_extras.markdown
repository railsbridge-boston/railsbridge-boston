# Command Line Extra Credit

If you've read the [Command Line Intro](/workshop/command_line) slides
and are looking for more information, here are some additional topics.

### Spaces in File and Folder Names

It's ok to include a space in a file or folder name, but it's a little tricky
on the command line.  The command line expects a space means the end of a name,
and you have to do extra work to show you mean a space.

Suppose you want to go to a folder called "My Files".

If you typed 

```text
cd My Files
```

You would get an error message that looks like this:

```text
bash: cd: My: No such file or directory
```

You need to a backslash before the space inside "My Files". This is called "escaping".
Space, backslash, and single and double quotes in filenames are all special and
need to be escaped. So the correct way to spell the command is this:

```text
cd My\ Files
```

### Command History

The command line also maintains a command history. You can use the up arrow
to cycle through old commands. Press ENTER to execute an old command you want to run again. 
Press CTRL-u to erase the current line.


### Using Web Services

Let's generate some ASCII art from the command line.

Install the `curl` program first with this command:

```text
sudo apt-get install -y curl 
```

Now you can generate some ASCII art. Try this command:

```text
curl 'http://artii.herokuapp.com/make?text=I+love+ruby'
```

You should see output like this:

```text

vagrant@precise32:~/workspace$ curl 'http://artii.herokuapp.com/make?text=I+love+ruby'
  _____   _                             _           
 |_   _| | |                           | |          
   | |   | | _____   _____   _ __ _   _| |__  _   _ 
   | |   | |/ _ \ \ / / _ \ | '__| | | | '_ \| | | |
  _| |_  | | (_) \ V /  __/ | |  | |_| | |_) | |_| |
 |_____| |_|\___/ \_/ \___| |_|   \__,_|_.__/ \__, |
                                               __/ |
                                              |___/ vagrant@precise32:~/workspace$ 
```

Change the end of the command string to generate your own message.

### Installing Commands (RailsBridge Virtual Machine and Ubuntu only)

Wouldn't it be nerdy to be able to check local weather conditions from the command line? 

You can by installing a program called weather-util. Type this command to install it

```text
sudo apt-get install -y weather-util
```

Now you can check the weather with this command:

```text
weather BOS
```

Example output:

```text
vagrant@precise32:~/workspace$ weather BOS
Current conditions at Boston Logan International, MA (KBOS)
Last updated Oct 04, 2013 - 09:54 AM EDT / 2013.10.04 1354 UTC
Temperature: 66.0 F (18.9 C)
Relative Humidity: 56%
Wind: from the NNE (020 degrees) at 3 MPH (3 KT)
Sky conditions: overcast
```

[«Back](/installfest)
