# Install GCC (and XCode)
You have three options for installing the GCC compiler. Option 1, installing the Command Line Tools, 
is the fastest, and recommended method. Please install from a thumb drive provided by an instructor, to save time and
conserve bandwidth.

Installing XCode is straightforward with one caveat. When it asks you about the components to install you need to make 
sure "Unix Tools" is selected. Other than that just click Continue/Okay/Yes/etc.

**Special note for folks who upgraded from Leopard to Snow Leopard:** The SQLite gem does not compile with an older 
version of XCode installed. If you upgraded your machine from an older  version of OS X, and you have an older XCode, 
you still need to reinstall it from your **Snow Leopard** DVD. The steps below should work fine to upgrade it.


### Option 1: Install Command Line Tools for XCode
Visit the [Apple Developer Downloads Page](https://developer.apple.com/downloads)

Download and install the latest **Command Line Tools for Xcode** package


### Option 2: Install XCode from a thumb drive or DVD
Go on to [Install Xcode From DVD](install_xcode_from_dvd)


### Option 3: Install XCode from the Apple App Store
Go on to [Install Xcode From App Store](install_xcode_from_app_store)


### Verify your compiler was installed
Type this in the terminal:

```text
gcc --version
```

Expected result:

```text
i686-apple-darwin11-llvm-gcc-4.2 (GCC) 4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2335.15.00)
```

[«Back to Install Ruby](/ruby_from_scratch/install/osx)
