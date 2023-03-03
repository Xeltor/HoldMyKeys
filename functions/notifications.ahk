; Function	                            Dec	    Hex	    String
; Info icon	                            1	    0x1	    Iconi
; Warning icon	                        2	    0x2	    Icon!
; Error icon	                        3	    0x3	    Iconx
; Tray icon	                            4	    0x4	    N/A
; Do not play the notification sound.	16	    0x10	Mute
; Use the large version of the icon.	32	    0x20	N/A

TrayInfo(text) {
    TrayTip(text,, 17)
}

TrayWarn(text) {
    TrayTip(text,, 18)
}

TrayError(text) {
    TrayTip(text,, 19)
}