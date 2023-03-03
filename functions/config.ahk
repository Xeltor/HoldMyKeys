#Include json.ahk

LoadConfig() {
    if !FileExist("config.ini")
        CreateConfig()

    try {
        strjson := IniRead("config.ini", "keyConfig", "keys")
        return Jxon_Load(&strjson)
    } catch Error as e {
        MsgBox(Format("Could not load config: {1}", e.Message))
        ExitApp()
    }
}

CreateConfig() {
    FileAppend("; Config`n;`n; Key examples:`n; a - z, 0 - 9, Numpad0 - Numpad9, F1 - F24`n; Insert, Home, Del, End", "config.ini")
    keyArray := ['1', '2', '3']
    IniWrite(Jxon_Dump(keyArray), "config.ini", "keyConfig", "keys")

    MsgBox("New config created, edit config.ini and press Control + Tilde(``) to reload, or restart the application.")
}