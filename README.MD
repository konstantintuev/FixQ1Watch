# Project Title

I have bought a cheap watch - FINOW (like) Q1 from AliExpress a year ago and it's fine but then I realised that Apple Watch looks similar but the software is nothing alike.

## What?

I made the swipe up to open [Bubblelauncher (no Google Play - it's not my app, sorry)](https://www.apkmonk.com/app/source.nova.com.bubblelauncherfree).
Also I made complete Spotify control integration by injecting code in the provided BLE communication app.

### Installing

You need to install XPosed to the watch.
1. You need TWRP (available in XDA).
2. Install SuperSU not Magisk, Magisk breaks receiving notifications because of something with it's Launcher Icon.
3. Install XPosed.
4. Install the App on your watch and on your phone, enable it as an XPosed module ONLY on the watch.
5. Install the Modified Watch Helper apk on your phone (or compile with Apktool) - I modified it with smali because I am on Android 9 and there is still no XPosed for it.
6. Enable 'Device Broadcast Status' on your phone.
7. ??
8. Profit?

### How?

I modified the Phone 'Watch Helper' apk so that it's receiving info like 'toggle pause' or 'next song' from the watch and forwarding it to my App.
I detached completely the Music Widget on the Watch and it's updated using a Root command from the 'Watch Assistant' app.

This project is licensed under the MIT License (the best license ever) - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Many thanks to Apple for inspiring the great guys from China which made the watch and me so that I make the software experience better and more 'Apple Ecosystem'-like connected.