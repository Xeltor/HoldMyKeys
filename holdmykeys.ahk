#Include functions/config.ahk
#include functions/game.ahk
#Include functions/string.ahk
#Include functions/keys.ahk
#Include functions/notifications.ahk

global active := false
global keyArray := LoadConfig()

`::{
    global game := DetectGame()
    if !IsObject(game) {
        TrayError("Could not find any compatible games running.")
        return
    }

    global active := !active
    SetTimer(ManageKeys, (active) ? 200 : 0)

    ; Release keys on manual disable
    if (!active) {
        KeysUp()
        TrayInfo(Format("Released keys for {1}.", game.Name))
    } else {
        TrayInfo(Format("Holding keys for {1}.", game.Name))
    }
}

Ctrl & `::{
    global keyArray := LoadConfig()
    TrayInfo("Config reloaded.")
}
