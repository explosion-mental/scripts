# scripts
Useful scripts (made by hand or forked from) and some of Luke's scripts.

There are 4 directories:
- **Divine** - experiments, ideas, fun..
- **cron** - for cronjobs (non interactive)
- **dmenu** - scripts that _can_ use dmenu or _hardcoded_ to dmenu
- **statusbar** - no flags, self descriptive and they print a new line at the
  end so it's compatible with most bars (e.g. polybar)


The important ones are:

## [termyt](https://github.com/explosion-mental/scripts/blob/main/dmenu/termyt)
My 'simple' take on watching youtube. Use ytfzf if you are looking for more functionality.
- -t flag for thumbnails

**Use** `termyt -h`

## dmenurl
display what you want to do with the current argument (either a file, url or whatever).

_kinda deprecated since I only find it useful on termyt_

## [redyt](https://github.com/explosion-mental/scripts/blob/main/dmenu/redyt)
Bugswriter script, really cool!
Few changes
- Best options on sxiv (imo)
- Reddit colors🤓👍
- Now it displays gifs as well
- You can see "posts" _(titles,headers)_

**Use** `redyt -h`

## [dmenu_browser](https://github.com/explosion-mental/scripts/blob/main/dmenu/dmenu_browser)
I forgot where I got this, but I use it to search firefox (since my url bar is
hidden) and surf.  Even bookmarks, youtube, wikipedia, etc... You implement
what you want!

## [clipmenu](https://github.com/explosion-mental/scripts/tree/main/dmenu/clipmenu)
Forked to work with **xclip** Apparently there are more scripts than clipmenu
and clipmenud(daemon). You decide what you want (I recommend to put clipmenu,
clipmenud and clipdel on one of your directories appended to the PATH
variable), also is initended to be install with the makefile so i change it a
bit to make it better. Pretty clean code I really like that👍

## [clipmagick](https://github.com/explosion-mental/scripts/blob/main/dmenu/clipmagick)
Another Bugswritter idea but i added some cool stuff

Basically use what you have stored on you clipboard (if you use `xsel` change
**'xclip'** with **'xsel'** with the log file on '/tmp').

## [qndl](https://github.com/explosion-mental/scripts/blob/main/qndl)
script with a little handler to handle all kinds of urls. Youtube is
problematic since I can't tell if I'm going to download a video or audio
(song), so the second argument of the script, right now only with this
arguments, takes 'audio'.

_qndl "https://www.youtube.com/embed/xQ4KJF-6Agc" 'audio'_

_NOTE:_ The `'audio'` flag its the only one, Why don't directly write the youtube-dl line?

## [mpdonti](https://github.com/explosion-mental/scripts/blob/main/statusbar/mpdnoti)
Notification when used, I need help on making it POSIX.

## samedir
samedir collection, which uses the current active window path.
- [samedir](https://github.com/explosion-mental/scripts/blob/main/samedir),
  terminal instance
- [samedirvifm](https://github.com/explosion-mental/scripts/blob/main/samedirvifm),
  vifm instance
- [samedirmenu](https://github.com/explosion-mental/scripts/blob/main/dmenu/samedirmenu),
  lists files with dmenu and uses xdg-open to open them.


## Vifm image previews
- [vifmimg](https://github.com/explosion-mental/scripts/blob/main/vifmimg)
- [vifmrun](https://github.com/explosion-mental/scripts/blob/main/vifmrun)
If you use vifm consider taking a look at this.

Remember from time to time you should use `vifmimg remove` (which removes the
cache).
- You can see \*.doc,\*.docx, \*.ppt,\*.pptx and prob all 'ms' like office
  files (You need **libreoffice**, it can be done with pandoc but I havent
  implemented yet. _Manually_ uncomment the line of pandoc and comment the
  soffice one).
- Cleaner code
- Prevented all word splitting issues
- Added 'pid' option, which removes the vifm-ipc and vifm-ueberzug files (on
  /tmp) which are named pipes; when closing the terminal with a 'binding' other
  than _ZZ_ or _:q_ those files would not be removed.
- Two configurable variables on vifmimg.
- It uses cksum to see whether the file was modified.
### todo
- display a message while the preview is loading (for everything but images)



**Have fun!**
