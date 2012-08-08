Installing XCode is straightforward with one caveat. When it asks you about the components to install you need to make sure "Unix Tools" is selected. Other than that just click Continue/Okay/Yes/etc.

**Special note for folks who upgraded from Leopard to Snow Leopard:**
 The SQLite gem does not compile with an older version of XCode installed. If you upgraded your machine from an older version of OS X, and you have an older XCode, you still need to reinstall it from your 
**Snow Leopard**
 DVD. The steps below should work fine to upgrade it.

[]()#Step 1:Choose installing from a drive or from the App Store


>>[]()#Option 1:install XCode from a thumb drive or DVD


>Go on to 
[Install Xcode From Dvd](install_xcode_from_dvd?back=install_xcode%23step1-0-1)


[]()#Option 2:Install XCode from the Apple App Store


>Go on to 
[Install Xcode From App Store](install_xcode_from_app_store?back=install_xcode%23step1-0-2)


[]()#Option 3:Install Command Line Tools for XCode


>Visit the 
[Apple Developer Downloads Page](https://developer.apple.com/downloads)

Download and install the latest 
**Command Line Tools for Xcode**
 package

#Verify your compiler was installed


>Type this in the terminal:gcc --version

Expected result:i686-apple-darwin11-llvm-gcc-4.2 (GCC) 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2335.15.00)