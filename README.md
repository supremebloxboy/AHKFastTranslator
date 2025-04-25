## About
This is an AutoHotkey translation script based on [AHKFastTranslator](https://github.com/balawi28/AHKFastTranslator) that uses google translate api.
I mainly created this script so i can read and communicate with other non-english speaking people in game. Thats why it uses the clipboard and tooltips.
I simplifed the script and removed the gui, this script works off of ctrl + c, ctrl + v and alt + c.
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

## Supported Languages
When in send mode, type one of these languanges to translate into that language.

Afrikaans
Albanian
Amharic
Arabic
Armenian
Assamese
Aymara
Azerbaijani
Bambara
Basque
Belarusian
Bengali
Bhojpuri
Bosnian
Bulgarian
Catalan
Cebuano
Chinese (Chinese by itself is simplified)
SChinese (or to be specific type SChinese for simplified)
TChinese (TChinese for Traditional)
Corsican
Croatian
Czech
Danish
Dhivehi
Dogri
Dutch
English
Esperanto
Estonian
Ewe
Filipino
Tagalog
Finnish
French
Frisian
Galician
Georgian
German
Greek
Guarani
Gujarati
Haitian (use Haitian or Creole)
Creole
Hausa
Hawaiian
Hebrew
Hindi
Hmong
Hungarian
Icelandic
Igbo
Ilocano
Indonesian
Irish
Italian
Japanese
Javanese
Kannada
Kazakh
Khmer
Kinyarwanda
Konkani
Korean
Krio
Kurdish (use Kurdish or Sorani)
Sorani
Kyrgyz
Lao
Latin
Latvian
Lingala
Lithuanian
Luganda
Luxembourgish
Macedonian
Maithili
Malagasy
Malay
Malayalam
Maltese
Maori
Marathi
Meiteilon (use Meiteilon or Manipuri)
Manipuri
Mizo
Mongolian
Myanmar (use Myanmar or Burmese)
Burmese
Nepali
Norwegian
Nyanja (use Nyanja or Chichewa)
Chichewa
Odia (use Odia or Oriya)
Oriya
Oromo
Pashto
Persian
Polish
Portuguese
Punjabi
Quechua
Romanian
Russian
Samoan
Sanskrit
Gaelic (use Gaelic or Scots)
Scots
Sepedi
Serbian
Sesotho
Shona
Sindhi
Sinhala (use Sinhala or Sinhalese)
Sinhalese
Slovak
Slovenian
Somali
Spanish
Sundanese
Swahili
Swedish
Tajik
Tamil
Tatar
Telugu
Thai
Tigrinya
Tsonga
Turkish
Turkmen
Twi
Akan
Ukrainian
Urdu
Uyghur
Uzbek
Vietnamese
Welsh
Xhosa
Yiddish
Yoruba
Zulu

## How To Install
1. Install AutoHotKey (https://www.autohotkey.com).
1. Download the `AHKFastTranslator.ahk` file from this GitHub repository or the latest release.
3. Double-click the `AHKFastTranslator.ahk` file to run the script.
Or optionally if you don't want to install autohotkey i've included the compiled exe in the latest release.
Note: Remember to stop and close the script when you're not using it as it uses and overrides the clipboard.

## Requirements
AutoHotkey (version 1.1.33.02 or later)

## Troubleshooting
If the script doesn't work as expected, make sure you have the correct version of AutoHotkey installed.

## Notes
- For suggestions and bug reporting, please refer to the issues section of this page.
