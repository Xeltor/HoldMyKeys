; TODO: Fix ahk_class references with actual real world classes
gameList := Map(
    "Path of Exile", "ahk_class TODO_poe_game",
    "Diablo III", "ahk_class TODO_d3_game",
    "Diablo IV", "ahk_class TODO_d4_game",
    "Last Epoch", "ahk_class TODO_le_game"
)

DetectGame() {
    for gameName, gameClass in gameList {
        if (WinExist(gameClass)) {
            return { 
                Name: gameName,
                Class: gameClass
            }
        }
    }

    return false
}