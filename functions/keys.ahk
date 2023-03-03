ManageKeys() {
    ; Game active, keep keys down
    if WinActive(game.Class) {
        KeysDown()
    
    ; Game not active, release keys and wait for it to return
    } else {
        KeysUp()
        WinWaitActive(game.Class)
    }

    return
}

KeysDown() {
    for key in keyArray {
        ; Validate the key is currently up
        if !GetKeyState(key) {
            ; Press it down
            Send(FormatKey(key, "Down"))
        }
    }

    return
}

KeysUp() {
    for key in keyArray {
        ; Validate key is currently down
        if GetKeyState(key) {
            ; Release the key
            Send(FormatKey(key, "Up"))
        }
    }

    return
}