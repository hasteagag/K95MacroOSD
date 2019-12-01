StringCaseSense, Off
global lastHwndMacro:=0x0
global doWrap:=true
global ctrlStateOSK:=false,altStateOSK:=false,shiftStateOSK:=false,winStateOSK:=false
#y::
	lastHwndMacro:=WinExist("A")
	doWrap:=true
	osdMacroBoard()
return
;change the above to whatever you want, just want something out of the way enough to not bother you, but be easy enough to hit in a remote session

osdMacroBoard()
{
global
	If !WinExist("ahk_class AutoHotkeyGUI","Clear all OSK Modifier States") { ;can this look for the Gui Name?
		Gui, k95andScimitar:New
		Gui, k95andScimitar:Add, Picture, x0 y0 w1745 h747 +BackgroundTrans +Redraw, %A_ScriptDir%\transtest.png
		Gui, k95andScimitar:-caption
		Gui, k95andScimitar:Color, FFFFFF
		Gui +LastFound 
		winset,transcolor,FFFFFF
		gui,-caption +alwaysontop
		;;;;;;;;;;;;;;;
		Gui, k95andScimitar:Add, Text, x270 y520 w80 h65 vM12 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x270 y590 w80 h65 vM11 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x270 y664 w80 h71 vM10 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x184 y521 w69 h65 vM9 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x188 y592 w69 h65 vM8 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x189 y657 w69 h76 vM7 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x101 y521 w69 h65 vM6 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x105 y586 w69 h65 vM5 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x105 y652 w69 h69 vM4 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x25 y521 w69 h65 vM3 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x29 y586 w69 h65 vM2 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x29 y652 w69 h69 vM1 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x448 y19 w45 h44 vkM3 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x382 y19 w45 h44 vkM2 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x316 y19 w45 h44 vkM1 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x250 y19 w45 h44 vMR +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1266 y25 w33 h32 vBrightness +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1331 y25 w33 h32 vLockText +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1535 y22 w64 h42 vMute +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1626 y22 w73 h21 vVolumeUp +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1626 y42 w73 h22 vVolumeDown +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1661 y97 w63 h42 vMedia_Next +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1597 y97 w63 h42 vMedia_Play_Pause +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1534 y97 w63 h42 vMedia_Prev +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1468 y97 w63 h42 vStop +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1665 y363 w61 h127 vNumPadEnter +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1665 y233 w61 h127 vNumpadAdd +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1666 y169 w61 h61 vNumPadSub +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1601 y169 w61 h61 vNumPadMult +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1534 y169 w61 h61 vNumPadDiv +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1468 y169 w61 h61 vNumLock +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1601 y233 w61 h61 vnp9 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1534 y233 w61 h61 vnp8 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1468 y233 w61 h61 vnp7 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1601 y296 w61 h61 vnp6 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1534 y296 w61 h61 vnp5 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1468 y296 w61 h61 vnp4 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1601 y363 w61 h61 vnp3 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1534 y363 w61 h61 vnp2 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1468 y363 w61 h61 vnp1 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1468 y427 w127 h61 vNumPadIns +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1601 y427 w61 h61 vNumPadDot +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1384 y427 w61 h61 vRight +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1318 y427 w61 h61 vDown +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1251 y427 w61 h61 vLeft +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1318 y363 w61 h61 vUp +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1384 y231 w61 h61 vDelete +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1318 y231 w61 h61 vEnd +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1251 y231 w61 h61 vPgDn +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1384 y169 w61 h61 vPgUp +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1318 y169 w61 h61 vHome +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1251 y169 w61 h61 vInsert +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1384 y99 w61 h61 vPauseBreak +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1318 y99 w61 h61 vScrollLock +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1251 y99 w61 h61 vPrintScreen +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1167 y99 w61 h61 vF12 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1101 y99 w61 h61 vF11 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1034 y99 w61 h61 vF10 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x968 y99 w61 h61 vF9 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x858 y99 w61 h61 vF8 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x792 y99 w61 h61 vF7 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x725 y99 w61 h61 vF6 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x659 y99 w61 h61 vF5 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x549 y99 w61 h61 vF4 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x483 y99 w61 h61 vF3 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x416 y99 w61 h61 vF2 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x350 y99 w61 h61 vF1 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x240 y99 w61 h61 vEsc +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1136 y425 w93 h61 vRControl +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1070 y425 w62 h61 vAppsKey +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1004 y425 w62 h61 vRWin +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x918 y425 w82 h61 vRAlt +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x490 y425 w424 h61 vSpace +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x401 y425 w83 h61 vLAltt +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x338 y425 w62 h61 vLWin +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x244 y425 w91 h61 vLControl +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1050 y361 w180 h61 vRShift +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x984 y361 w62 h61 vQuestionFWDSlash +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x918 y361 w62 h61 vGTPeriod +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x852 y361 w62 h61 vLTComma +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x786 y361 w62 h61 vm +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x720 y361 w62 h61 vn +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x654 y361 w62 h61 vb +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x588 y361 w62 h61 vxV +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x522 y361 w62 h61 vc +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x456 y361 w62 h61 vx +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x390 y361 w62 h61 vz +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x243 y361 w142 h61 vLShift +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1085 y297 w142 h61 vEnter +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1019 y297 w62 h61 vquote +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x953 y297 w62 h61 vsemicolon +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x887 y297 w62 h61 vl +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x821 y297 w62 h61 vk +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x755 y297 w62 h61 vj +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x689 y297 w62 h61 vh +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x623 y297 w62 h61 vg +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x557 y297 w62 h61 vf +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x491 y297 w62 h61 vd +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x425 y297 w62 h61 vs +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x358 y297 w62 h61 va +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x242 y297 w111 h61 vCapsLock +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1135 y233 w94 h61 vbackslash +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1070 y233 w62 h61 vCloseBracket +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1002 y233 w62 h61 vOpenBracket +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x936 y233 w62 h61 vp +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x870 y233 w62 h61 vo +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x804 y233 w62 h61 vi +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x738 y233 w62 h61 vu +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x672 y233 w62 h61 vy +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x606 y233 w62 h61 vt +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x540 y233 w62 h61 vr +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x474 y233 w62 h61 ve +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x408 y233 w62 h61 vw +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x342 y233 w62 h61 vq +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x244 y233 w93 h61 vTab +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1099 y169 w131 h61 vBackspace +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x1033 y169 w62 h61 vBackTick +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x967 y169 w62 h61 vHyphenUnderscore +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x901 y169 w62 h61 vn0 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x835 y169 w62 h61 vn9 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x769 y169 w62 h61 vn8 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x703 y169 w62 h61 vn7 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x637 y169 w62 h61 vn6 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x571 y169 w62 h61 vn5 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x505 y169 w62 h61 vn4 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x439 y169 w62 h61 vn3 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x373 y169 w62 h61 vn2 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x306 y169 w62 h61 vn1 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x240 y169 w61 h61 vBackTickTilde +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x152 y431 w61 h61 vG18 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x89 y431 w61 h61 vG17 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x27 y431 w61 h61 vG16 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x152 y369 w61 h61 vG15 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x89 y369 w61 h61 vG14 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x27 y369 w61 h61 vG13 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x152 y294 w61 h61 vG12 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x89 y294 w61 h61 vG11 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x27 y294 w61 h61 vG10 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x152 y232 w61 h61 vG9 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x89 y232 w61 h61 vG8 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x27 y232 w61 h61 vG7 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x152 y157 w61 h61 vG6 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x89 y157 w61 h61 vG5 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x27 y157 w61 h61 vG4 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x152 y95 w61 h61 vG3 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x89 y95 w61 h61 vG2 +BackgroundTrans gGMKeyFunc 
		Gui, k95andScimitar:Add, Text, x27 y95 w61 h61 vG1 +BackgroundTrans gGMKeyFunc 
		;;;;;;;;;;;;;
			
		Gui, k95andScimitar:Add, Button, x600 y700 w100 h100 vResetModifiers gclearAllOSKStates, Clear all OSK Modifier States ;, %A_ScriptDir%\k95\g1.png
		Gui, k95andScimitar:Show, x0 y0 w1745 h960
	}
	else {
		Gui, k95andScimitar:Show, x0 y0 w1745 h960
	}
}
GMKeyFunc()
{
	WinActivate, ahk_id %lastHwndMacro%
	if ResetModifiers
	{
		clearAllOSKStates()
	}
	outPut(A_GuiControl)
	; Gui, k95andScimitar:Destroy 	
	Gui, k95andScimitar:Hide
	; Gui, k95andScimitar:Minimize
	return
}
outPut(a:="a")
{
	; Gui, k95andScimitar:Destroy
	; msgbox %a%
	; clipboard:=a
			 ; LControl
	;you cannot do a string comparison or equivalency evaluation for some reason like a = "LControl" does not work
	if InStr(a,"LControl") || InStr(a,"RControl")
	{
		ctrlStateOSK:=TRUE
	}
	if InStr(a,"LAlt") || InStr(a,"RAlt")
	{
		altStateOSK:=TRUE
	}
	if InStr(a,"LShift") || InStr(a,"RShift")
	{
		shiftStateOSK:=TRUE
	}
	if InStr(a,"LWin") || InStr(a,"RWin")
	{
		winStateOSK:=TRUE
	}
	;wrap the above in a matchlist or is that stupid?

	R := {G1:"SC0C1",G2:"SC0C2",G3:"SC0C3",G4:"SC0C4",G5:"SC0C5",G6:"SC0C6",G7:"SC0C7",G8:"SC0C8",G9:"SC0C9",G10:"SC0CA",G11:"SC0CB",G12:"SC0CC",G13:"SC0CD",G14:"SC0CE",G15:"SC0CF",G16:"SC0D0",G17:"SC0D1",G18:"SC0D2",M1:"SC0D3",M2:"SC0D4",M3:"SC0D5",M4:"SC0D6",M5:"SC0D7",M6:"SC0D8",M7:"SC0D9",M8:"SC0DA",M9:"SC0E9",M10:"SC0EA",M11:"SC0EB",M12:"SC0EC",kMR:"F19",kM1:"F20",kM2:"F21",kM3:"F22"}
	
	cH:={F1:"F1",F2:"F2",F3:"F3",F4:"F4",F5:"F5",F6:"F6",F7:"F7",F8:"F8",F9:"F9",F10:"F10",F11:"F11",F12:"F12",Enter:"Enter",Escape:"Escape",Space:"Space",Tab:"Tab",Backspace:"Backspace",Delete:"Delete",Insert:"Insert",Up:"Up",Down:"Down",Left:"Left",Right:"Right",Home:"Home",End:"End",PgUp:"PgUp",PgDn:"PgDn",NumpadDot:"NumpadDot",NumPadEnter:"NumPadEnter",NumpadMult:"NumpadMult",NumpadDiv:"NumpadDiv",NumpadAdd:"NumpadAdd",NumpadSub:"NumpadSub",NumpadDel:"NumpadDel",NumPadIns:"NumPadIns",Volume_Mute:"Volume_Mute",Volume_Up:"Volume_Up",Volume_Down:"Volume_Down",Media_Next:"Media_Next",Media_Play_Pause:"Media_Play_Pause",Media_Prev:"Media_Prev",Media_Stop:"Media_Stop",PrintScreen:"PrintScreen",PauseBreak:"Pause",BackTickTilde:"``"}
	
	modifierKeys:={LControl:"LControl",RControl:"RControl",Lalt:"Lalt",RAlt:"RAlt",LShift:"LShift",RShift:"RShift",RWin:"RWin",AppsKey:"AppsKey"}
	
	lockStates:={CapsLock:"CapsLock",ScrollLock:"ScrollLock",NumLock:"NumLock"}
	; figure out what to do so that lwin lalt lctrl lshift for example set toggle states irrespective of the physical state
	lettersOnly:={m:"m",n:"n",b:"b",xV:"v",c:"c",x:"x",z:"z",l:"l",k:"k",j:"j",h:"h",g:"g",f:"f",d:"d",s:"s",a:"a",p:"p",o:"o",i:"i",u:"u",y:"y",t:"t",r:"r",e:"e",w:"w",q:"q"}
	
	numbersOnly:={n0:"0",n9:"9",n8:"8",n7:"7",n6:"6",n5:"5",n4:"4",n3:"3",n2:"2",n1:"1",np0:"0",np9:"9",np8:"8",np7:"7",np6:"6",np5:"5",np4:"4",np3:"3",np2:"2",np1:"1"}
	
	otherSpecial:={QuestionFWDSlash:"/",GTPeriod:".",LTComma:",",quote:"""",semicolon:";",backslash:"\",CloseBracket:"]",OpenBracket:"["}

	if lettersOnly.HasKey(a) || numbersOnly.HasKey(a)
	{
		doWrap:=!doWrap
	}
	for key, value in cH {
		R[key]:=value  ; looped addition per max limit in expression
	}
	for k, v in modifierKeys {
		R[k]:=v  ; looped addition
	}	
	for k, v in lockStates {
		R[k]:=v  ; looped addition
	}
	for k, v in otherSpecial {
		R[k]:=v  ; looped addition
	}
	for k, v in lettersOnly {
		R[k]:=v  ; looped addition
	}	
	for k, v in numbersOnly {
		R[k]:=v  ; looped addition
	}
	for each, item in R
	{
		if a = %each%
		{
			; grab physical modifiers
			ctrlState:=GetKeyState("Ctrl",P)
			altState:=GetKeyState("Alt",P)
			shiftState:=GetKeyState("Shift",P)
			winState:=GetKeyState("LWin",P)

			if doWrap
			{
				e:="{" . item . "}"
			}
			else {
				e:=item
			}
			if ctrlState || ctrlStateOSK
			{
				e:= "^" . e
			}
			if altState || altStateOSK
			{
				e:= "!" . e
			}
			if shiftState || shiftStateOSK
			{
				e:="+" . e
			}
			if winState || winStateOSK
			{
				e:="#" . e
			}
			SendLevel 1
			Send %e%
		}
	}
}

^r::reload
;comment the above out if you do not want to book that hotkey everywhere.

clearAllOSKStates()
{
	Gui, k95andScimitar:Destroy
	ctrlStateOSK:=false,altStateOSK:=false,shiftStateOSK:=false,winStateOSK:=false
}
; TO DO List
; fix as many direct mappings as possible
; test all keys in the log there may be some missing keys still
; figure out why = "" doesnt work but instr does...what end of lines etc are you not seeing and is there a better way to prevent that in the future
; set timeout after ten seconds for any of the OSK modifier states.
