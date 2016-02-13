evernote-backup
===============

An AppleScript to backup Evernote data to a compressed .enex file.

Please note: For this script to work properly, you must use the version of Evernote [downloaded from the Evernote website](https://evernote.com/download/). The version of Evernote from the app store will not work correctly with this script because of the way the app is sandboxed.

This script is storing the compressed .enex file in the location you are running the script from. You can change this location by updating the "save_path" variable.

Run this script by opening the terminal, navigating to the folder the script is stored in and then execute:
```osascript EvernoteBackup.scpt```
