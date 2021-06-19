# scripts
Some usefull scripts or forks of (and of course Luke's scripts).

There are 3 directories:
- Divine; experiments, ideas, fun..
- dmenu, scripts that **can** use dmenu or **hardcoded** to dmenu
- statusbar, specially for dwmblocks see voidrice from lukesmith



The important ones are:

## termyt
My 'simple' take on watching youtube. Use ytfzf if you are looking for more functionality.
- -t flag for thumbnails

**Use** `termyt -h`

## dmenurl
I got this from Luke's scripts but I can't find it anymore, I made some changes
and this is some kind of handler.

## redyt
Bugswriter script, really cool!
Few changes
- Best options on sxiv (imo)
- Reddit colors🤓👍
- Now it displays gifs as well
- You can see "posts" _(titles,headers)_

**Use** `redyt -h`

## dmenu_browser
I forgot where I got this, but I use it to search firefox (since my url bar is
hidden) and surf.  Even bookmarks, youtube, wikipedia, etc... (you implement
what you want)

## clipmenu
Forked to work with **xclip** Apparently there are more scripts than clipmenu
and clipmenud(daemon). You decide what you want (I recommend to put clipmenu,
clipmenud and clipdel on one of your directories appended to the PATH
variable), also is initended to be install with the makefile so i change it a
bit to make it better. Pretty clean code I really like that👍

## clipmagick
Another Bugswritter idea but i added some cool stuff

Basically use what you have stored on you clipboard (if you use `xsel` change
**'xclip'** with **'xsel'** with the log file on '/tmp').

## qndl
script with a little handler to handle all kinds of urls. Youtube is
problematic since I can't tell if I'm going to download a video or audio
(song), so the second argument of the script, right now only with this
arguments, takes 'audio'.

_qndl "https://www.youtube.com/embed/xQ4KJF-6Agc" 'audio'_

_NOTE:_ The `'audio'` flag its the only one, Why don't directly write the youtube-dl line?

## mpdonti
Notification when used, I need help on improving time ( 0.6-0.9 secs ).

## vifmimg
If you use vifm consider taking a look at this.

Remember from time to time you should use `vifmimg clean`.

- You can see \*.doc,\*.docx and doc files now
- You can see \*.ppt,\*.pptx and prob all ms office files.


**You need libreoffice**



**Have fun!**
