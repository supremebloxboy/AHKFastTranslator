#Requires AutoHotkey v1
#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force ; Ensures only one instance of the script is running.

; language to code associative array
dict := {}
dict["Auto"] := "auto"
dict["Afrikaans"] := "af"
dict["Albanian"] := "sq"
dict["Amharic"] := "am"
dict["Arabic"] := "ar"
dict["Armenian"] := "hy"
dict["Assamese"] := "as"
dict["Aymara"] := "ay"
dict["Azerbaijani"] := "az"
dict["Bambara"] := "bm"
dict["Basque"] := "eu"
dict["Belarusian"] := "be"
dict["Bengali"] := "bn"
dict["Bhojpuri"] := "bho"
dict["Bosnian"] := "bs"
dict["Bulgarian"] := "bg"
dict["Catalan"] := "ca"
dict["Cebuano"] := "ceb"
dict["Chinese"] := "zh-CN"
dict["SChinese"] := "zh-CN"
dict["TChinese"] := "zh-TW"
dict["Corsican"] := "co"
dict["Croatian"] := "hr"
dict["Czech"] := "cs"
dict["Danish"] := "da"
dict["Dhivehi"] := "dv"
dict["Dogri"] := "doi"
dict["Dutch"] := "nl"
dict["English"] := "en"
dict["Esperanto"] := "eo"
dict["Estonian"] := "et"
dict["Ewe"] := "ee"
dict["Filipino"] := "fil"
dict["Tagalog)"] := "tl"
dict["Finnish"] := "fi"
dict["French"] := "fr"
dict["Frisian"] := "fy"
dict["Galician"] := "gl"
dict["Georgian"] := "ka"
dict["German"] := "de"
dict["Greek"] := "el"
dict["Guarani"] := "gn"
dict["Gujarati"] := "gu"
dict["Haitian"] := "ht"
dict["Creole"] := "ht"
dict["Hausa"] := "ha"
dict["Hawaiian"] := "haw"
dict["Hebrew"] := "he"
dict["Hindi"] := "hi"
dict["Hmong"] := "hmn"
dict["Hungarian"] := "hu"
dict["Icelandic"] := "is"
dict["Igbo"] := "ig"
dict["Ilocano"] := "ilo"
dict["Indonesian"] := "id"
dict["Irish"] := "ga"
dict["Italian"] := "it"
dict["Japanese"] := "ja"
dict["Javanese"] := "jv"
dict["Kannada"] := "kn"
dict["Kazakh"] := "kk"
dict["Khmer"] := "km"
dict["Kinyarwanda"] := "rw"
dict["Konkani"] := "gom"
dict["Korean"] := "ko"
dict["Krio"] := "kri"
dict["Kurdish"] := "ku"
dict["Sorani"] := "ckb"
dict["Kyrgyz"] := "ky"
dict["Lao"] := "lo"
dict["Latin"] := "la"
dict["Latvian"] := "lv"
dict["Lingala"] := "ln"
dict["Lithuanian"] := "lt"
dict["Luganda"] := "lg"
dict["Luxembourgish"] := "lb"
dict["Macedonian"] := "mk"
dict["Maithili"] := "mai"
dict["Malagasy"] := "mg"
dict["Malay"] := "ms"
dict["Malayalam"] := "ml"
dict["Maltese"] := "mt"
dict["Maori"] := "mi"
dict["Marathi"] := "mr"
dict["Meiteilon"] := "mni-Mtei"
dict["Manipuri"] := "mni-Mtei"
dict["Mizo"] := "lus"
dict["Mongolian"] := "mn"
dict["Myanmar"] := "my"
dict["Burmese"] := "my"
dict["Nepali"] := "ne"
dict["Norwegian"] := "no"
dict["Nyanja"] := "ny"
dict["Chichewa"] := "ny"
dict["Odia"] := "or"
dict["Oriya"] := "or"
dict["Oromo"] := "om"
dict["Pashto"] := "ps"
dict["Persian"] := "fa"
dict["Polish"] := "pl"
dict["Portuguese"] := "pt"
dict["Punjabi"] := "pa"
dict["Quechua"] := "qu"
dict["Romanian"] := "ro"
dict["Russian"] := "ru"
dict["Samoan"] := "sm"
dict["Sanskrit"] := "sa"
dict["Gaelic"] := "gd"
dict["Scots"] := "gd"
dict["Sepedi"] := "nso"
dict["Serbian"] := "sr"
dict["Sesotho"] := "st"
dict["Shona"] := "sn"
dict["Sindhi"] := "sd"
dict["Sinhala"] := "si"
dict["Sinhalese"] := "si"
dict["Slovak"] := "sk"
dict["Slovenian"] := "sl"
dict["Somali"] := "so"
dict["Spanish"] := "es"
dict["Sundanese"] := "su"
dict["Swahili"] := "sw"
dict["Swedish"] := "sv"
dict["Tajik"] := "tg"
dict["Tamil"] := "ta"
dict["Tatar"] := "tt"
dict["Telugu"] := "te"
dict["Thai"] := "th"
dict["Tigrinya"] := "ti"
dict["Tsonga"] := "ts"
dict["Turkish"] := "tr"
dict["Turkmen"] := "tk"
dict["Twi"] := "ak"
dict["Akan"] := "ak"
dict["Ukrainian"] := "uk"
dict["Urdu"] := "ur"
dict["Uyghur"] := "ug"
dict["Uzbek"] := "uz"
dict["Vietnamese"] := "vi"
dict["Welsh"] := "cy"
dict["Xhosa"] := "xh"
dict["Yiddish"] := "yi"
dict["Yoruba"] := "yo"
dict["Zulu"] := "zu"

; alt c to toggle between send/receieve modes
mode := "receive" ; receive, send
~!c::
	mode := (mode = "send") ? "receive" : "send"
	ToolTip Mode is now %mode%
	Sleep, 1000
	ToolTip
Return

; if mode is receieve then copying something will translate what you copy, pop up a tooltip and write it to clipboard
; if mode is send then copying the formula spanish how are you, will translate what you copy, pop up a tooltip and write it to clipboard in the selected language
~^c::
	ClipWait, 1 ; for clipboard to populate
	if (mode = "receive") {
		url := TranslateURL("auto", "en", A_Clipboard)
        response := PostRequest(url)
    	RegExMatch(response, """([^""]+)""", match) ; cleanup string
        A_Clipboard := match1
        ToolTip % A_Clipboard
        Sleep, 3000
        ToolTip
	} else if (mode = "send") {
		; split string formula spanish how are you
        StringSplit, parts, A_Clipboard, %A_Space%
        firstPart := parts1
        secondPart := SubStr(A_Clipboard, StrLen(parts1) + 2)
        url := TranslateURL("en", dict[firstPart], secondPart)
        response := PostRequest(url)
        RegExMatch(response, """([^""]+)""", match)
        A_Clipboard := match1
		ToolTip % A_Clipboard
        Sleep, 3000
        ToolTip
	}
Return

PostRequest(url){
    response := ComObjCreate("WinHttp.WinHttpRequest.5.1")
    response.Open("POST", url, false)
    response.Send()
    Return response.ResponseText
}

TranslateURL(sourceLang, targetLang, textToTranslate)
{
    baseUrl := "http://translate.google.com/translate_a/t?"
    params := []
    params["sl"] := sourceLang
    params["tl"] := targetLang
    params["uptl"] := targetLang
    params["q"] := UriEncode(textToTranslate)
    params["client"] := "p"
    params["hl"] := "en"
    params["sc"] := "2"
    params["ie"] := "UTF-8"
    params["oe"] := "UTF-8"
    params["oc"] := "1"
    params["prev"] := "conf"
    params["psl"] := "auto"
    params["ptl"] := "en"
    params["otf"] := "1"
    params["it"] := "sel.8936"
    params["ssel"] := "0"
    params["tsel"] := "3"
    Return baseUrl . EncodeParams(params)
}

EncodeParams(params)
{
    encodedParams := ""
    for key, value in params
    {
        encodedKey := key
        encodedValue := value
        encodedParams .= (encodedParams = "") ? encodedKey . "=" . encodedValue : "&" . encodedKey . "=" . encodedValue
    }
    Return encodedParams
}

; UriEncode function is written by the-Automator
; https://www.the-automator.com/parse-url-parameters/
UriEncode(Uri, RE="[0-9A-Za-z]")
{
    VarSetCapacity(Var, StrPut(Uri, "UTF-8"), 0)
    StrPut(Uri, &Var, "UTF-8")
    While Code := NumGet(Var, A_Index-1, "UChar")
    {
        Res .= (Chr := Chr(Code)) ~= RE ? Chr : Format("%{:02X}", Code)
    }
    Return Res
}
