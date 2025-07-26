# In-game Automatic Translation tool

The **In-game Automatic Translation Tool** uses the Google Translate API to automatically translate all in-game chat. 
It supports translation to and from all languages supported by Google Translate (utilizing the API's language detection).

Change `local target_language = "en"` to change your target language (ru, zh, ...)

The command window has to remain open to maintain translations.

Contributions are welcome!

![Translation example](https://i.imgur.com/0ao0UTs.png)

## Linux

To use on Linux, install Linux native version of Powershell and run

`pwsh -NoProfile -ExecutionPolicy Bypass -File "translatetofilep2.ps1" -lang en`

Note that this will not auto-restart, but I believe the race condition file exclusion issue that requires the restart is not an issue on Linux to begin with.

(thank you Ath for testing this)
