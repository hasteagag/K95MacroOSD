global lastHwndMacro:=0x0
#z::
	osdMacroBoard()
return

osdMacroBoard()
{
	lastHwndMacro:=WinExist("A") ;update straight away only runs once
	; lastiCUEProfile:=profile	; MsgBox %lastiCUEProfile%
	Gui, Add, Picture, x0 y0 w233 h562, C:\tmp\MacroBlock.bmp
	Gui, -caption
	Gui, Show, x0 y0 w233 h562
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x30 y95 w61 h60, G1
	; you can use an empty text control with the backgroundtrans option and a g-label
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x93 y95 w61 h60, G2
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x154 y95 w61 h60, G3
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x30 y160 w61 h60, G4
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x93 y160 w61 h60, G5
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x154 y160 w61 h60, G6
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x30 y225 w61 h60, G7
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x93 y225 w61 h60, G8
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x154 y225 w61 h60, G9
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x30 y290 w61 h60, G10
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x93 y290 w61 h60, G11
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x154 y290 w61 h60, G12
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x30 y374 w61 h60, G13
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x93 y374 w61 h60, G14
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x154 y374 w61 h60, G15
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x30 y439 w61 h60, G16
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x93 y439 w61 h60, G17
	Gui, Add, Text, +BackgroundTrans gGMKeyFunc x154 y439 w61 h60, G18
	Return
}
GMKeyFunc()
{
	; lastiCUEProfile:=getCurProfile()	; lastiCUEProfileIgnoreBool:=!lastiCUEProfileIgnoreBool
	WinActivate, ahk_id %lastHwndMacro%
	fKey(A_GuiControl)
	Gui, Destroy
	return
}

fKey(a:="a")
{
	R := {G1:"SC0C1",G2:"SC0C2",G3:"SC0C3",G4:"SC0C4",G5:"SC0C5",G6:"SC0C6",G7:"SC0C7",G8:"SC0C8",G9:"SC0C9",G10:"SC0CA",G11:"SC0CB",G12:"SC0CC",G13:"SC0CD",G14:"SC0CE",G15:"SC0CF",G16:"SC0D0",G17:"SC0D1",G18:"SC0D2",M1:"SC0D3",M2:"SC0D4",M3:"SC0D5",M4:"SC0D6",M5:"SC0D7",M6:"SC0D8",M7:"SC0D9",M8:"SC0DA",M9:"SC0E9",M10:"SC0EA",M11:"SC0EB",M12:"SC0EC","Ctrl":"^","Alt":"{!}","Shift":"{+}","Win":"{#}"}
	for each, item in R
	{
		; MsgBox Each is %each% and item is %item%
		if a = %each%
		{
			; MsgBox here and item is %item%
			; grabbing existing physical modifiers
			ctrlState:=GetKeyState("Ctrl",P)
			altState:=GetKeyState("Alt",P)
			shiftState:=GetKeyState("Shift",P)
			
			; winState:=GetKeyState("#",P) ;not implemented yet
			
			if ctrlState && altState && shiftState
			{ ;ctrl and alt and shift
				e:= "!+^{" . item . "}"
			}
			else if ctrlState && altState && !shiftState
			{ ;ctrl and alt
				e:= "^!{" . item . "}"
			}
			else if ctrlState && !altState && !shiftState
			{ ;ctrl
				e:= "^{" . item . "}"
			}
			else if !ctrlState && altState && shiftState
			{ ;alt and shift
				e:= "!+{" . item . "}"
			}
			else if !ctrlState && altState && !shiftState
			{ ;alt
				e:= "!{" . item . "}"
			}
			else {
				;no modifiers
				e:= "{" . item . "}"
			}
			SendLevel 1
			Send %e%
		}
	}
}