# A Collection of Useful articles on studying OS X

## High ram usage when idle? 
Googled: "macos using 4gb of ram idle" \
https://superuser.com/questions/885586/mac-os-x-using-over-4-gb-of-memory-with-nothing-running \
Unused RAM is wasted RAM! \
Monitor Memory pressure in Activity Monitor to observe availibity of memory resources. \
It's almost impossible to measure "used memory" accurately on a modern operating system. There's just too much compression / caching / eviction / ... going on. \
“Activity Monitor” and htop simply use a different estimate. This isn’t worrying, and the amount of used memory in your case—5GB—is pretty normal considering you have 8GB of memory installed.

## Homebrew Package manager 

## Window manipulator of WindowServer
https://www.spectacleapp.com/

## "if your Mac is being strange, just give it the full on kick in the pants, don’t go half way"
https://thenextweb.com/lifehacks/2017/06/14/how-when-why-to-reset-the-pram-smc-on-your-mac/
