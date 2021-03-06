blackberrycmake
===============

CMake scripts for Blackberry 10 NDK

This repository should contain almost everything you need to start using CMake for you Blackberry 10 NDK projects.
Take a look into the blackberry.toolchain.cmake file on how to invoke cmake.

**I did not write all of this!** And worse yet, I don't know who wrote what. I was just kindly pointed to [this repository](https://github.com/Bjoe/QMetaWatchProtocol) by Bjoe as a starting point on how to use CMake for BB10 projects. All I did is change it a little and add a generic find-package command for all BB 10 NDK libs. I didn't even read all of the cmake files ... So if you discover that some of this code is yours, please contact me I will of course mention that! I hope I don't get bad juju by using this without knowing who wrote what.

### How do I invoke cmake?
Try this `cmake .. -DCMAKE_TOOLCHAIN_FILE="../cmake/blackberry.toolchain.cmake" -DBLACKBERRY_ARCHITECTURE=arm -DCMAKE_VERBOSE_MAKEFILE=TRUE -G "Eclipse CDT4 - Unix Makefiles"`. You should really remove/add flags as you see fit.

### Your CMake is awful
I know, and I'm sorry. :(   
I have little experience with CMake. I usually set it up once and then just use it. Or more often I hope somebody else already did it for me. (Also, as mentioned before: most of this was not written by me, so maybe it's someone else's CMake that you find lacking, HA!)

If you can improve on it, please do so! Just **fork it & send me a pull request**. There's probably a lot one can clean up and I will try to do some cleaning myself. For now, however, I'm just glad that it works. :)

### It doesn't work!
It did on my machine, in my project, that's all I'm claiming.

### The BBLibraryInfo.cmake is wrong for my System!
Then generate a new one. Just execute `./lib_extractor.rb Path/To/My/blackberry-sdk-descriptor.xml`. (You need Ruby (duh!) and the nokogiri gem for that.) Or extract that info some other way.

### find_package(BB REQUIRED bbsystem ...) doesn't find anything, what now?
Most likely you haven't run the bbndk.sh Skript (does that even exist for Windows users?), i.e. you QNX_TARGET environment variable isn't set. If that's not the root of your troubles, check whether the BBLibraryInfo.cmake file is wrong and if so, generate a new one.

#### Common Pitfalls
**You:** When I invoke cmake, I get this output:
```
  -- The C compiler identification is unknown
  -- The CXX compiler identification is unknown
  -- Could not determine Eclipse version, assuming at least 3.6 (Helios). Adjust CMAKE_ECLIPSE_VERSION if this is wrong.
  -- Check for working C compiler: /usr/bin/qcc
  CMake Error: your C compiler: "/usr/bin/qcc" was not found.   Please set CMAKE_C_COMPILER to a valid compiler path or name.
  CMake Error: Internal CMake error, TryCompile configure of cmake failed
  -- Check for working C compiler: /usr/bin/qcc -- broken
  CMake Error at /usr/local/Cellar/cmake/2.8.12.1/share/cmake/Modules/CMakeTestCCompiler.cmake:61 (message):
    The C compiler "/usr/bin/qcc" is not able to compile a simple test program.
```
**You:** What went wrong?

**Answer:** Notice how cmake is looking for qcc in `/usr/bin`? You didn't set `QNX_TARGET`, the script tells cmake that qcc is in `${QNX_TARGET}/usr/bin`. I recommend using the `bbndk-env_xx_x_x_xxxx.sh` script to properly set your environment variables.
