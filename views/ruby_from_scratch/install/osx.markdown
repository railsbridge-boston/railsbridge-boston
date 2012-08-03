# Installing on Mac OS X

GCC is required to compile Ruby (among other things) from source.  
Once you install GCC, the [Rails Ready][rails-ready] installation script will install Ruby, Imagemagick, Rails, and Git 
automatically.

[rails-ready]:https://github.com/joshfng/railsready

### 1. Install XCode/GCC
First, you need to install XCode/GCC to be installed.  Install XCode
using [these
instructions](http://installfest.railsbridge.org/installfest/install_xcode).

Note that installing the Command Line Tools is much faster and less bandwidth-intensive than the other methods.

### 2. Run the Rails Ready Script
Then you can run the Rails Ready installation script from the Terminal with this command:

```text
wget --no-check-certificate \
https://raw.github.com/joshfng/railsready/master/railsready.sh && \
bash railsready.sh 
```

[«Back](/ruby_from_scratch)
