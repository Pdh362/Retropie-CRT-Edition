# Retropie CRT Edition

![img](https://github.com/krahsdevil/crt-for-retropie/blob/d398fe53a9e550c6aca72b926ea8c8a312aed028/logo.png?raw=true)

Adding support to Retropie 4.4 for custom 15khz resolutions and some cool utilities like USB Automount or easy TATE mode changing.

This software works with RGB-Pi and all standard (RGB) vga666 GPIO adapters (or based on like pi2scart).
Boot, configure controls on ES and go to 'Screen Utilies' under 'CRT Config' for choosing your adapter (RGB-Pi > VGA666 > PI2SCART)

Maybe some professional monitors like SONY PVM, BVM or DTV could face some resolution problems, most of TV or monitors seems to work great with super-resolutions.

You can find original RGB-Pi project for recalbox [here](https://github.com/mortaca/RGB-Pi/)
## Changelog

#### Beta 2.5.1:
```
- Fixed Atari 7800 Emulator Launcher
- Fixed BASE/FLAT/FOREST Themes for 'arcade'
- Fixed Music Background; Black Screen on Emulation Exit.
- Changed Music Background to Resume mode.
```
#### Beta 2.5:
```
- Changed 'Screent Utility' to 'Configuration Utility' (v2.1)
- Added Music Background support for ES (script by madmodder123)
    - https://github.com/madmodder123/retropie_music_overlay/
    - Enable/disable feature from 'Configuration Utility'
    - Place songs at ./configs/music/ folder
- Changed Video Player Font (font mod by -krahs-):
    - Better info/subtitles text visualization and better compatibility with other languages
- Fixed Colecovision/Lynx Emulator Launchers and themes
- Changed 'Genesis Plus GX' as default emulator for SEGA CD (compatible with CHD's)
- Added 'Video View' to classic themes BASE/FLAT/FOREST and BASE Vertical
- Other interna changes/optimizations
```
#### Beta 2.4:
```
- Internal code optimization and cleaned boot config file (By DSkywalk)
- Fix black screen and exit on DosBox & ScummVM launcher
- Solved some issues with themes
  - TATE theme added 'last played', 'all games', 'favourites'
  - BASE/FLAT/FOREST issues showing game info like 'last played'
  - BASE/FLAT/FOREST added custom-collections
- Added basic Video Player (omxplayer) - Place videos at '/roms/videos/' folder
- MSX Emulation, Libretro core lr-bluemsx pre-installed 
```
#### Beta 2.3 (First Public Release):
```
- Fix PSX TATE 'Launching images'
- Fix N64 allowed emulator process
- Fix Help Systems/Games images in SNES-MINI Theme (By DSkywalk)
- Added Spectrum Game 'Justin and The Lost Abbey' from Dantoine Studio (By DSkywalk)
- Updated retroarch core CAPRICE32 4.5 with CPR support (By DSkywalk)
```
#### Beta 2.2:
```
- CRT system over Retropie 4.4 updatable
- Support for RPi2B/3B/3B+
- Advmame 3.9, lr-puae and Amiberry pre-installed
- SNES-MINI Theme by ruckage modified for CRT
- Fixed BASE/FLAT/FOREST Themes from RGB-Pi Recalbox Project
- USB Automount Utility for ROMs (USB external storage):
  - Switch for turn-on/off
  - USB Hotplug and EJECT option
  - Auto-rename folders from recalboxUSB (from Recalbox RGB-Pi project)
- Screen Utility:
  - RGB Output MODE (RGB-Pi > VGA666 > PI2SCART)
  - 240p or 270p resolution for System/ES
  - Vertical Games Rotation (only games)
  - Switch between TATE and YOKO mode (Frontend and games rotation)
  - Frequency selector mode (Always 50/60hz, Manual or Auto)
  - Compatibility for some SONY TV (red color issues) through MODES (Trinitron FIX)
  - Dynamic Screen Centering Utility for Games and System/ES
  - Integrated 240p Test Suite (Artemio Urbina)
 ```
