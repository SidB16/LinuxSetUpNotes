# A Collection of Useful articles on studying OS X

# About the OS
Catalina requires 4 GB of memory, an increase over the 2 GB required by Lion through Mojave.
Source:https://en.wikipedia.org/wiki/MacOS_Catalina#Changes

## High ram usage when idle? 
Googled: "macos using 4gb of ram idle" \
https://superuser.com/questions/885586/mac-os-x-using-over-4-gb-of-memory-with-nothing-running \
Unused RAM is wasted RAM! \
Monitor Memory pressure in Activity Monitor to observe availibity of memory resources. \
It's almost impossible to measure "used memory" accurately on a modern operating system. There's just too much compression / caching / eviction / ... going on. \
“Activity Monitor” and htop simply use a different estimate. This isn’t worrying, and the amount of used memory in your case—5GB—is pretty normal considering you have 8GB of memory installed.

## Homebrew Package manager 

## Making bash default shell + updating $PATH to run apps from CLI

## Window manipulator of WindowServer
https://www.spectacleapp.com/

## "if your Mac is being strange, just give it the full on kick in the pants, don’t go half way"
https://thenextweb.com/lifehacks/2017/06/14/how-when-why-to-reset-the-pram-smc-on-your-mac/

## Add Vscode 'code' as shell command to PATH
F1 --> 'Shell Command: Install code command in PATH'

## Latex on MacOS
* Requires TexLive engine, available through MacTex- 7gb file. The engine is embedded within.
* Use VS code latex workshop extension for compile and build.


## Article on setting up MacOS after using Linux
https://hookrace.net/blog/macos-setup/
