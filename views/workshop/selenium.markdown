#Notes



In some instances, you may have to 
**specify**
 which browser should be used for testing.


In


test/selenium/selenium_test_case.rb



Add or edit the following line.


config.selenium_browser_key = "[SUPPORTED BROWSER]"



Actual error would look like the following.


1) Error:
test_happy_path(HappyPathTest):
Selenium::CommandError: Failed to start new browser session: Browser not supported: *google-chrome

Supported browsers include:
  *firefox
  *mock
  *firefoxproxy
  *pifirefox
  *chrome
  *iexploreproxy
  *iexplore
  *firefox3
  *safariproxy
  *googlechrome
  *konqueror
  *firefox2
  *safari
  *piiexplore
  *firefoxchrome
  *opera
  *iehta
  *custom



For windows users, there is a bind error with this error message:


WARN - Failed to start: SocketListener0@0.0.0.0:4444


To fix it, just add this line to config: (test/selenium/selenium_test_case.rb)


config.selenium_server_address = "127.0.0.1"


Also, we figured it out by looking at this blog:

[http://formatinternet.wordpress.com/2009/04/27/cucumber-selenium-webrat-and-windows/](http://formatinternet.wordpress.com/2009/04/27/cucumber-selenium-webrat-and-windows/)