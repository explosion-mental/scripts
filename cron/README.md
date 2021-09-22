# Important Note

These cronjobs have components that require information about your current display to display notifications correctly.

When you add them as cronjobs, I recommend you precede the command with commands as those below:

```
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u $USER)/bus; export DISPLAY=:0; . $HOME/.zprofile;  then_command_goes_here
```

This ensures that notifications will display, xdotool commands will function and environmental variables will work as well.



In case this doesn't works, what I use is `printenv`. You can narrow down the list but esdo
```
printenv | xclip -sel c
```
This will copy all enviromental variables into your main clipboard. After that command do `crontab -e` (or fcrontab) and just paste all the content that's on your clipboard.
