## About
This is an AutoHotkey translation script based on [AHKFastTranslator](https://github.com/balawi28/AHKFastTranslator).
The script includes two modes: Receive and Send.
Receive Mode: Translates selected text into English.
Send Mode: Translates English text into a specified language.

## Usage Instructions
After running the script, Receive Mode is enabled by default. To toggle between Receive Mode and Send Mode, press Alt + C. A tooltip will appear indicating the current mode.

Receive Mode: Select any text and press Ctrl + C.
The script will:
Automatically translate the copied text to English.
Display the translation in a tooltip.
Replace the clipboard contents with the translated text.
Paste the translated result using Ctrl + V.

Send Mode: Type the target language followed by the text to be translated.
Example: spanish how are you
Select the full input and press Ctrl + C.
The script will:
Detect the target language.
Translate the input text accordingly.
Show the translation in a tooltip.
Overwrite the clipboard with the translated text.
Paste the translated result using Ctrl + V.

## How To Install
1. Install AutoHotKey (https://www.autohotkey.com).
1. Download the `AHKFastTranslator.ahk` file from this GitHub repository.
3. Double-click the `AHKFastTranslator.ahk` file to run the script.

## Requirements
AutoHotkey (version 1.1.33.02 or later)

## Troubleshooting
If the script doesn't work as expected, make sure you have the correct version of AutoHotkey installed.

## Notes
- For suggestions and bug reporting, please refer to the issues section of this page.
