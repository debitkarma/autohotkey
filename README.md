# AutoHotKey Scripts

All scripts are targeting AHK 2.0. In some cases, I've ported 1.x to 2.0. I do not plan on supporting 1.x.

## alt_drag.ahk

### Functionality

![Alt Leftclick Smaller3](https://github.com/user-attachments/assets/e9a479d7-aee6-4334-805a-4b2660adf9e2)

This script mimics XFCE, KDE, and other Linux Desktop Environments. It allows you to hold `ALT` and `Left Click` and drag the mouse anywhere inside of a window to move it. This way, you don't have to be so precise and hit the toolbars.

![Alt Rightclick Smaller](https://github.com/user-attachments/assets/d04285f5-b8eb-464c-bf50-66964b51835d)

This script *also* makes it easy to resize windows! You can hold `ALT` and `Right Click` and drag to resize a window. It will essentially mimic clicking on which corner you're closest to and you can resize that way, instead of having to be precise and capture the edges/corners.

You can, instead, `Double Tap ALT` and then `Left Click` and drag to resize as well. This - at least, in my experience - makes it significantly easier and smoother to use on trackpads and on laptops in general.

### Where It Came From
I found a script on [The AHK Forum](https://www.autohotkey.com/boards/viewtopic.php?t=126656) by Cebolla (they adapted it from a v1 script by 'Jonny') and edited it for my purposes.
* I removed the Default Double-Alt shortcuts present.
* I added Doublt-Alt + Left Button to copy Alt+Rightclick behavior (Drag to resize).

## opacity.ahk

### Functionality

![Alt Scroll Smaller](https://github.com/user-attachments/assets/5d0c6bc0-6199-41ca-9188-10e27aa07e7e)

This script lets you hold `ALT` and then `Scroll the Mousewheel Up or Down` in order to provide arbitrary levels of transparency of a window. It lets you fine grain that control anywhere between a value of 35 and 255. At 255, or full opacity, it turns transparency off. This should make it a bit more performant, and it's the neat and tidy way to manage a window's settings, rather than leaving it on but at 255.

I also remapped `CapsLock` to toggle between turning the active window to ~65% opacity and full opacity. The value is 160 out of 255. You can change that to suit your needs.

### Where It Came From
I looked at a wide variety of v1 sources in order to write this v2 source - but I wrote it from scratch, so any issues are because of me. Notably, I used `opacity` instead of `transparency`, but whatever. It works. I'll edit it if I make changes in the future.

## alt_drag_numpad.ahk

This is a work in progress, but I saved it for later. **I do not currently use this.**

You can use your numpad to quickly resize windows to fit regions in your screen. This is helpful because you can use this *alongside* Windows' PowerToys' FancyZones, effectively getting two layers.

## To Do

- Add animated gifs showing functionality
