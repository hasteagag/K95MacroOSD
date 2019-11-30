global lastHwndMacro:=0x0
global dontWrap:=false
#y::
	lastHwndMacro:=WinExist("A") ;update straight away only runs once
	Gui, New
	dontWrap:=false
	osdMacroBoard()
return
; \.(.*)\h{\R\h*background-image\:\h*url\("(.*.png)"\);\R\h*\w*:\h*\w*;\R\h*left:\h*(\d*)\h*px;\R\h*\w*:\h*(\d*)\h*px;\R\h*\w*:\h*(\d*)\h*px;\R\h*\w*:\h*(\d*)\h*px;\R\h*[\w|-]*:\h*(\d)*;\R*}

; Gui, Add, Picture, x$3 y$4 w$5 h$6 +BackgroundTrans +Redraw v$1 gGMKeyFunc, %A_ScriptDir%\\k95\\$2

; still some cleanup due to bad file names and escaping, but a lot of legwork performed here
osdMacroBoard()
{
global
	Gui, Add, Picture, x0 y0 w1745 h747 +BackgroundTrans +Redraw, %A_ScriptDir%\transtest.png
	Gui, -caption
	Gui, Color, FFFFFF
	Gui +LastFound 
	winset,transcolor,FFFFFF
	gui,-caption +alwaysontop

Gui, Add, Text, x270 y520 w80 h65 vM12 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M12.png
Gui, Add, Text, x270 y590 w80 h65 vM11 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M11.png
Gui, Add, Text, x270 y664 w80 h71 vM10 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M10.png
Gui, Add, Text, x184 y521 w69 h65 vM9 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M9.png
Gui, Add, Text, x188 y592 w69 h65 vM8 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M8.png
Gui, Add, Text, x189 y657 w69 h76 vM7 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M7.png
Gui, Add, Text, x101 y521 w69 h65 vM6 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M6.png
Gui, Add, Text, x105 y586 w69 h65 vM5 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M5.png
Gui, Add, Text, x105 y652 w69 h69 vM4 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M4.png
Gui, Add, Text, x25 y521 w69 h65 vM3 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M3.png
Gui, Add, Text, x29 y586 w69 h65 vM2 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M2.png
Gui, Add, Text, x29 y652 w69 h69 vM1 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\M1.png

Gui, Add, Text, x448 y19 w45 h44 vkM3 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\kM3.png
Gui, Add, Text, x382 y19 w45 h44 vkM2 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\kM2.png
Gui, Add, Text, x316 y19 w45 h44 vkM1 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\kM1.png
Gui, Add, Text, x250 y19 w45 h44 vMR +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\MR.png
Gui, Add, Text, x1266 y25 w33 h32 vBrightness +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Brightness.png
Gui, Add, Text, x1331 y25 w33 h32 vLockText +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\LockText.png
Gui, Add, Text, x1535 y22 w64 h42 vMute +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Mute.png
Gui, Add, Text, x1626 y22 w73 h21 vVolumeUp +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\VolumeUp.png
Gui, Add, Text, x1626 y42 w73 h22 vVolumeDown +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\VolumeDown.png
Gui, Add, Text, x1661 y97 w63 h42 vMedia_Next +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\NextTrack.png
Gui, Add, Text, x1597 y97 w63 h42 vMedia_Play_Pause +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\PlayPause.png
Gui, Add, Text, x1534 y97 w63 h42 vMedia_Prev +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\LastTrack.png
Gui, Add, Text, x1468 y97 w63 h42 vStop +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Stop.png

Gui, Add, Text, x1665 y363 w61 h127 vNumPadEnter +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\NumPadEnter.png
Gui, Add, Text, x1665 y233 w61 h127 vNumpadAdd +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\NumPadPlus.png
Gui, Add, Text, x1666 y169 w61 h61 vNumPadSub +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\NumPadSub.png
Gui, Add, Text, x1601 y169 w61 h61 vNumPadMult +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\NumPadMult.png
Gui, Add, Text, x1534 y169 w61 h61 vNumPadDiv +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\NumPadDiv.png
Gui, Add, Text, x1468 y169 w61 h61 vNumLock +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\NumLock.png
Gui, Add, Text, x1601 y233 w61 h61 vnp9 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\9.png
Gui, Add, Text, x1534 y233 w61 h61 vnp8 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\8.png
Gui, Add, Text, x1468 y233 w61 h61 vnp7 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\7.png
Gui, Add, Text, x1601 y296 w61 h61 vnp6 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\6.png
Gui, Add, Text, x1534 y296 w61 h61 vnp5 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\5.png
Gui, Add, Text, x1468 y296 w61 h61 vnp4 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\4.png
Gui, Add, Text, x1601 y363 w61 h61 vnp3 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\3.png
Gui, Add, Text, x1534 y363 w61 h61 vnp2 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\2.png
Gui, Add, Text, x1468 y363 w61 h61 vnp1 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\1.png
Gui, Add, Text, x1468 y427 w127 h61 vNumPadIns +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\NumPadIns.png
Gui, Add, Text, x1601 y427 w61 h61 vNumPadDot +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\NumPadDot.png

Gui, Add, Text, x1384 y427 w61 h61 vRight +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Right.png
Gui, Add, Text, x1318 y427 w61 h61 vDown +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Down.png
Gui, Add, Text, x1251 y427 w61 h61 vLeft +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Left.png
Gui, Add, Text, x1318 y363 w61 h61 vUp +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Up.png
Gui, Add, Text, x1384 y231 w61 h61 vDelete +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Delete.png
Gui, Add, Text, x1318 y231 w61 h61 vEnd +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\End.png
Gui, Add, Text, x1251 y231 w61 h61 vPgDown +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\PgDown.png
Gui, Add, Text, x1384 y169 w61 h61 vPageUp +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\PageUp.png
Gui, Add, Text, x1318 y169 w61 h61 vHome +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Home.png
Gui, Add, Text, x1251 y169 w61 h61 vInsert +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Insert.png
Gui, Add, Text, x1384 y99 w61 h61 vPauseBreak +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\PauseBreak.png
Gui, Add, Text, x1318 y99 w61 h61 vScrollLock +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\ScrollLock.png
Gui, Add, Text, x1251 y99 w61 h61 vPrintScreen +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\PrintScreen.png
Gui, Add, Text, x1167 y99 w61 h61 vF12 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F12.png
Gui, Add, Text, x1101 y99 w61 h61 vF11 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F11.png
Gui, Add, Text, x1034 y99 w61 h61 vF10 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F10.png
Gui, Add, Text, x968 y99 w61 h61 vF9 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F9.png
Gui, Add, Text, x858 y99 w61 h61 vF8 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F8.png
Gui, Add, Text, x792 y99 w61 h61 vF7 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F7.png
Gui, Add, Text, x725 y99 w61 h61 vF6 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F6.png
Gui, Add, Text, x659 y99 w61 h61 vF5 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F5.png
Gui, Add, Text, x549 y99 w61 h61 vF4 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F4.png
Gui, Add, Text, x483 y99 w61 h61 vF3 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F3.png
Gui, Add, Text, x416 y99 w61 h61 vF2 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F2.png
Gui, Add, Text, x350 y99 w61 h61 vF1 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\F1.png
Gui, Add, Text, x240 y99 w61 h61 vEsc +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Esc.png
Gui, Add, Text, x1136 y425 w93 h61 vRCtrl +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\RCtrl.png
Gui, Add, Text, x1070 y425 w62 h61 vAppsKey +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\AppsKey.png
Gui, Add, Text, x1004 y425 w62 h61 vRWin +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\RWin.png
Gui, Add, Text, x490 y425 w424 h61 vRAlt +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\RAlt.png
Gui, Add, Text, x918 y425 w82 h61 vSpace +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Space.png
Gui, Add, Text, x401 y425 w83 h61 vLalt +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\LAlt.png
Gui, Add, Text, x338 y425 w62 h61 vLWin +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\LWin.png
Gui, Add, Text, x244 y425 w91 h61 vLCtrl +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\LCtrl.png
Gui, Add, Text, x1050 y361 w180 h61 vRShift +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\RShift.png
Gui, Add, Text, x984 y361 w62 h61 vQuestionFWDSlash +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\question.png
Gui, Add, Text, x918 y361 w62 h61 vGTPeriod +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\GT.png
Gui, Add, Text, x852 y361 w62 h61 vLTComma +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\LT.png
Gui, Add, Text, x786 y361 w62 h61 vm +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\m.png
Gui, Add, Text, x720 y361 w62 h61 vn +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\n.png
Gui, Add, Text, x654 y361 w62 h61 vb +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\b.png
Gui, Add, Text, x588 y361 w62 h61 vxV +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\v.png
Gui, Add, Text, x522 y361 w62 h61 vc +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\c.png
Gui, Add, Text, x456 y361 w62 h61 vx +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\x.png
Gui, Add, Text, x390 y361 w62 h61 vz +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\z.png
Gui, Add, Text, x243 y361 w142 h61 vLShift +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\LShift.png
Gui, Add, Text, x1085 y297 w142 h61 vEnter +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Enter.png

Gui, Add, Text, x1019 y297 w62 h61 vquote +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\quote.png
Gui, Add, Text, x953 y297 w62 h61 vsemicolon +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\semicolon.png

Gui, Add, Text, x887 y297 w62 h61 vl +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\l.png
Gui, Add, Text, x821 y297 w62 h61 vk +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\k.png
Gui, Add, Text, x755 y297 w62 h61 vj +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\j.png
Gui, Add, Text, x689 y297 w62 h61 vh +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\h.png
Gui, Add, Text, x623 y297 w62 h61 vg +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\g.png
Gui, Add, Text, x557 y297 w62 h61 vf +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\f.png
Gui, Add, Text, x491 y297 w62 h61 vd +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\d.png
Gui, Add, Text, x425 y297 w62 h61 vs +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\s.png
Gui, Add, Text, x358 y297 w62 h61 va +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\a.png
Gui, Add, Text, x242 y297 w111 h61 vCapsLock +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\CapsLock.png

Gui, Add, Text, x1135 y233 w94 h61 vbackslash +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\pipe.png
Gui, Add, Text, x1070 y233 w62 h61 vCloseBracket +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\]}.png
Gui, Add, Text, x1002 y233 w62 h61 vOpenBracket +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\[{.png

Gui, Add, Text, x936 y233 w62 h61 vp +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\p.png
Gui, Add, Text, x870 y233 w62 h61 vo +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\o.png
Gui, Add, Text, x804 y233 w62 h61 vi +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\i.png
Gui, Add, Text, x738 y233 w62 h61 vu +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\u.png
Gui, Add, Text, x672 y233 w62 h61 vy +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\y.png
Gui, Add, Text, x606 y233 w62 h61 vt +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\t.png
Gui, Add, Text, x540 y233 w62 h61 vr +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\r.png
Gui, Add, Text, x474 y233 w62 h61 ve +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\e.png
Gui, Add, Text, x408 y233 w62 h61 vw +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\w.png
Gui, Add, Text, x342 y233 w62 h61 vq +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\q.png
Gui, Add, Text, x244 y233 w93 h61 vTab +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Tab.png
Gui, Add, Text, x1099 y169 w131 h61 vBackspace +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\Backspace.png
Gui, Add, Text, x1033 y169 w62 h61 vBackTick +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\EqPlus.png
Gui, Add, Text, x967 y169 w62 h61 vHyphenUnderscore +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\-dash.png
Gui, Add, Text, x901 y169 w62 h61 vn0 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\0).png
Gui, Add, Text, x835 y169 w62 h61 vn9 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\9(.png
Gui, Add, Text, x769 y169 w62 h61 vn8 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\8_.png
Gui, Add, Text, x703 y169 w62 h61 vn7 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\7&.png
Gui, Add, Text, x637 y169 w62 h61 vn6 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\6^.png
Gui, Add, Text, x571 y169 w62 h61 vn5 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\5`%.png
Gui, Add, Text, x505 y169 w62 h61 vn4 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\4$.png
Gui, Add, Text, x439 y169 w62 h61 vn3 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\3#.png
Gui, Add, Text, x373 y169 w62 h61 vn2 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\2@.png
Gui, Add, Text, x306 y169 w62 h61 vn1 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\1!.png
Gui, Add, Text, x240 y169 w61 h61 vBackTickTilde +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\BackTickTilde.png
Gui, Add, Text, x152 y431 w61 h61 vG18 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G18.png
Gui, Add, Text, x89 y431 w61 h61 vG17 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G17.png
Gui, Add, Text, x27 y431 w61 h61 vG16 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G16.png
Gui, Add, Text, x152 y369 w61 h61 vG15 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G15.png
Gui, Add, Text, x89 y369 w61 h61 vG14 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G14.png
Gui, Add, Text, x27 y369 w61 h61 vG13 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G13.png
Gui, Add, Text, x152 y294 w61 h61 vG12 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G12.png
Gui, Add, Text, x89 y294 w61 h61 vG11 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G11.png
Gui, Add, Text, x27 y294 w61 h61 vG10 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G10.png
Gui, Add, Text, x152 y232 w61 h61 vG9 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G9.png
Gui, Add, Text, x89 y232 w61 h61 vG8 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G8.png
Gui, Add, Text, x27 y232 w61 h61 vG7 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G7.png
Gui, Add, Text, x152 y157 w61 h61 vG6 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G6.png
Gui, Add, Text, x89 y157 w61 h61 vG5 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G5.png
Gui, Add, Text, x27 y157 w61 h61 vG4 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G4.png
Gui, Add, Text, x152 y95 w61 h61 vG3 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G3.png
Gui, Add, Text, x89 y95 w61 h61 vG2 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G2.png
Gui, Add, Text, x27 y95 w61 h61 vG1 +BackgroundTrans gGMKeyFunc ;, %A_ScriptDir%\k95\G1.png
; sleep 60
	Gui, Show, x0 y0 w1745 h960

; below is the ridiculous css regex translation:	
; \.(.*)\h{\R\h*background-image\:\h*url\("(.*.png)"\);\R\h*\w*:\h*\w*;\R\h*left:\h*(\d*)\h*px;\R\h*\w*:\h*(\d*)\h*px;\R\h*\w*:\h*(\d*)\h*px;\R\h*\w*:\h*(\d*)\h*px;\R\h*[\w|-]*:\h*(\d)*;\R*}

; Gui, Add, Picture, x$3 y$4 w$5 h$6 +BackgroundTrans +Redraw v$1 gGMKeyFunc, %A_ScriptDir%\\k95\\$2

; still some cleanup due to bad file names and escaping, but a lot of legwork performed here
}
GMKeyFunc()
{
	WinActivate, ahk_id %lastHwndMacro%
	;TODO:: Clock a bucky matrix with GetKeyState save those steps later or get to a permutational method
	
	; ; WinActivate, ahk_id %lastHwndMacro%
	; lastiCUEProfile:=getCurProfile()
	; lastiCUEProfileIgnoreBool:=!lastiCUEProfileIgnoreBool
	
	; saveOut:=A_GuiControl
	outPut(A_GuiControl)
	Gui, Destroy ; comment me out by preceeding this line with ; or deleting it entirely to maintain a see through keyboard keys only
	
	; MsgBox % RegExReplace(saveOut,"mi).*\\([\w|\W]{1,19}).png$","$1") ;adding vNames will fix this mess
	
	
	; Gui, Hide
	; Gui, Minimize
	;what fixes the redraw time investigate...
	return
}
outPut(a:="a")
{
	; MsgBox %a%
;Generation Regex:  
	; Pattern: Gui.*v(.*)\hgGMKeyFunc.*\R
	; Substitution: $1,
;Generation result:  
;gentle fixups applied M12,M11,M10,M9,M8,M7,M6,M5,M4,M3,M2,M1,kM3,kM2,kM1,MR,Brightness,LockButton,Mute,olumeUp,olumeDown,NextTrack,PlayPause,LastTrack,Stop,NumPadEnter,NumPadPlus,NumPadMinus,NumPadMul,,NumLock,9,8,7,6,5,4,3,2,1,NumPadIns,NumPadDot,Right,Down,Left,Up,Delete,End,PgDown,PageUp,Home,Insert,PauseBreak,ScrollLock,PrintScreen,F12,F11,F10,F9,F8,F7,F6,F5,F4,F3,F2,F1,Esc,RCtrl,AppsKey,RWin,RAlt,Spce,Lalt,LWin,LCtrl,RShift,QuestionFWDSlash,GTPeriod,LTComma,m,n,b,,c,x,z,LShift,Enter,quote,semicolon,l,k,j,h,g,f,d,s,a,CapsLock,backslash,CloseBracket,OpenBracket,p,o,i,u,y,t,r,e,w,q,Tab,Backspace,BackTick,HyphenUnderscore,n0,n9,n8,n7,n6,n5,n4,n3,n2,n1,BackTickTilde,G18,G17,G16,G15,G14,G13,G12,G11,G10,G9,G8,G7,G6,G5,G4,G3,G2,G1
;gentle fixups applied M12,M11,M10,M9,M8,M7,M6,M5,M4,M3,M2,M1,kM3,kM2,kM1,MR,Brightness,LockButton,Mute,olumeUp,olumeDown,NextTrack,PlayPause,LastTrack,Stop,NumPadEnter,NumPadPlus,NumPadMinus,NumPadMul,,NumLock,9,8,7,6,5,4,3,2,1,NumPadIns,NumPadot,Right,Down,Left,Up,Delete,End,PgDown,PageUp,Home,Insert,PauseBreak,ScrollLock,PrintScreen,F12,F11,F10,F9,F8,F7,F6,F5,F4,F3,F2,F1,Esc,RCtrl,AppsKey,RWin,RAlt,Spce,Lalt,LWin,LCtrl,RShift,QuestionFWDSlash,GTPeriod,LTComma,m,n,b,,c,x,z,LShift,Enter,quote,semicolon,l,k,j,h,g,f,d,s,a,CapsLock,backslash,CloseBracket,OpenBracket,p,o,i,u,y,t,r,e,w,q,Tab,Backspace,BackTick,HyphenUnderscore,n0,n9,n8,n7,n6,n5,n4,n3,n2,n1,BackTickTilde,G18,G17,G16,G15,G14,G13,G12,G11,G10,G9,G8,G7,G6,G5,G4,G3,G2,G1
; (.*)$ $1:"$1"
; \R ,
;volume

	;too far hits AHK maxtokens limit for definitions of associative arrays lexikos said it all needs to be parsed, tidbit gave work arounds and also this forum post suggests:  https://www.autohotkey.com/boards/viewtopic.php?t=65590 doing a looped add
	
	;TODO Heavy:  https://www.autohotkey.com/docs/KeyList.htm make sure H matches
	
	R := {G1:"SC0C1",G2:"SC0C2",G3:"SC0C3",G4:"SC0C4",G5:"SC0C5",G6:"SC0C6",G7:"SC0C7",G8:"SC0C8",G9:"SC0C9",G10:"SC0CA",G11:"SC0CB",G12:"SC0CC",G13:"SC0CD",G14:"SC0CE",G15:"SC0CF",G16:"SC0D0",G17:"SC0D1",G18:"SC0D2",M1:"SC0D3",M2:"SC0D4",M3:"SC0D5",M4:"SC0D6",M5:"SC0D7",M6:"SC0D8",M7:"SC0D9",M8:"SC0DA",M9:"SC0E9",M10:"SC0EA",M11:"SC0EB",M12:"SC0EC","Ctrl":"^","Alt":"{!}","Shift":"{+}","Win":"{#}",kMR:"F19",kM1:"F20",kM2:"F21",kM3:"F22"} ;,Esc:"Esc",NumLock:"NumLock",NumPadDiv:"NumPadDiv",NumPadMult:"NumPadMult",NumPadSub:"NumPadSub",np7:"NumPad7",np8:"NumPad8",np9:"NumPad9",NumPadAdd:"NumPadAdd",np4:"NumPad4",np5:"NumPad5",np6:"NumPad6",np1:"NumPad1",np2:"NumPad2",NumPad3:"NumPad3",NumPadEnter:"NumpadEnter",np0:"NumPad0",NumpadDot:"NumpadDot",NumPad0:"NumPad0"
	
	
	;oldH:={Brightness:"Brightness",LockButton:"LockButton",Mute:"Volume_Mute",VolumeUp:"Volume_Up",VolumeDown:"Volume_Down",NextTrack:"Media_Next",PlayPause:"Media_Play_Pause",LastTrack:"Media_Previous",Stop:"Media_Stop",NumPadEnter:"NumPadEnter",NumPadPlus:"NumPadPlus",NumPadMinus:"NumPadMinus",NumPadMul:"NumPadMul",NumPadIns:"NumPadIns",NumPadDot:"NumPadDot",Right:"Right",Down:"Down",Left:"Left",Up:"Up",Delete:"Delete",End:"End",PgDown:"PgDown",PageUp:"PageUp",Home:"Home",Insert:"Insert",PauseBreak:"Pause_Break",ScrollLock:"ScrollLock",PrintScreen:"PrintScreen",F12:"F12",F11:"F11",F10:"F10",F9:"F9",F8:"F8",F7:"F7",F6:"F6",F5:"F5",F4:"F4",F3:"F3",F2:"F2",F1:"F1",Esc:"Esc",RCtrl:"RCtrl",AppsKey:"AppsKey",RWin:"RWiny",RAlt:"RAlt",Space:"Space",Lalt:"Lalt",LWin:"LWin",LCtrl:"LCtrl",RShift:"RShift",QuestionFWDSlash:"QuestionFWDSlash",GTPeriod:"GTPeriod",LTComma:"LTComma",m:"m",n:"n",b:"b",xV:"v",c:"c",x:"x",z:"z",LShift:"LShift",Enter:"Enter",quote:"quote",semicolon:"semicolon",l:"l",k:"k",j:"j",h:"h",g:"g",f:"f",d:"d",s:"s",a:"a",CapsLock:"CapsLock",backslash:"backslash",CloseBracket:"CloseBracket",OpenBracket:"OpenBracket",p:"p",o:"o",i:"i",u:"u",y:"y",t:"t",r:"r",e:"e",w:"w",q:"q",Tab:"Tab",Backspace:"Backspace",BackTick:"BackTick",HyphenUnderscore:"HyphenUnderscore",n0:"0",n9:"9",n8:"8",n7:"7",n6:"6",n5:"5",n4:"4",n3:"3",n2:"2",n1:"1"} ;,BackTickTilde:"BackTickTilde",:"BackTick"}
	
	H:={Brightness:"Brightness",LockButton:"LockButton",Mute:"Volume_Mute",VolumeUp:"Volume_Up",VolumeDown:"Volume_Down",Media_Next:"Media_Next",Media_Play_Pause
:"Media_Play_Pause",Media_Prev:"Media_Prev",Stop:"Media_Stop",NumPadEnter:"NumPadEnter",NumpadAdd:"NumpadAdd",NumPadSub:"NumPadSub",NumPadMult:"NumPadMult",NumPadIns:"NumPadIns",NumPadDot:"NumPadDot",Right:"Right",Down:"Down",Left:"Left",Up:"Up",Delete:"Delete",End:"End",PgDown:"PgDown",PageUp:"PageUp",Home:"Home",Insert:"Insert",PauseBreak:"Pause_Break",ScrollLock:"ScrollLock",PrintScreen:"PrintScreen",F12:"F12",F11:"F11",F10:"F10",F9:"F9",F8:"F8",F7:"F7",F6:"F6",F5:"F5",F4:"F4",F3:"F3",F2:"F2",F1:"F1",Esc:"Esc",RCtrl:"RCtrl",AppsKey:"AppsKey",RWin:"RWiny",RAlt:"RAlt",Space:"Space",Lalt:"Lalt",LWin:"LWin",LCtrl:"LCtrl",RShift:"RShift",QuestionFWDSlash:"QuestionFWDSlash",GTPeriod:"GTPeriod",LTComma:"LTComma",LShift:"LShift",Enter:"Enter",quote:"quote",semicolon:"semicolon",CapsLock:"CapsLock",backslash:"backslash",CloseBracket:"CloseBracket",OpenBracket:"OpenBracket",Tab:"Tab",Backspace:"Backspace",BackTick:"BackTick",HyphenUnderscore:"HyphenUnderscore"} ;,BackTickTilde:"BackTickTilde"
	cH:={F1:"F1",F2:"F2",F3:"F3",F4:"F4",F5:"F5",F6:"F6",F7:"F7",F8:"F8",F9:"F9",F10:"F10",F11:"F11",F12:"F12",Enter:"Enter",Escape:"Escape",Space:"Space",Tab:"Tab",Backspace:"Backspace",Delete:"Delete",Insert:"Insert",Up:"Up",Down:"Down",Left:"Left",Right:"Right",Home:"Home",End:"End",PgUp:"PgUp",PgDn:"PgDn",CapsLock:"CapsLock",ScrollLock:"ScrollLock",NumLock:"NumLock",LControl:"LControl",RControl:"RControl",Lalt:"Lalt",RAlt:"RAlt",LShift:"LShift",RShift:"RShift",RWin:"RWin",AppsKey:"AppsKey",NumpadDot:"NumpadDot",NumPadEnter:"NumPadEnter",NumpadMult:"NumpadMult",NumpadDiv:"NumpadDiv",NumpadAdd:"NumpadAdd",NumpadSub:"NumpadSub",NumpadDel:"NumpadDel",NumPadIns:"NumPadIns",Volume_Mute:"Volume_Mute",Volume_Up:"Volume_Up",Volume_Down:"Volume_Down",Media_Next:"Media_Next",Media_Play_Pause:"Media_Play_Pause",Media_Prev:"Media_Prev",Media_Stop:"Media_Stop",PrintScreen:"PrintScreen",Pause:"Pause"}
	
	lettersOnly:={m:"m",n:"n",b:"b",xV:"v",c:"c",x:"x",z:"z",l:"l",k:"k",j:"j",h:"h",g:"g",f:"f",d:"d",s:"s",a:"a",p:"p",o:"o",i:"i",u:"u",y:"y",t:"t",r:"r",e:"e",w:"w",q:"q"}
	numbersOnly:={n0:"0",n9:"9",n8:"8",n7:"7",n6:"6",n5:"5",n4:"4",n3:"3",n2:"2",n1:"1",np0:"0",np9:"9",np8:"8",np7:"7",np6:"6",np5:"5",np4:"4",np3:"3",np2:"2",np1:"1"}
	
	; no accounting for "shift" states123456789/-

	; if a is alpha numeric but not keypad
	if lettersOnly.HasKey(a) || numbersOnly.HasKey(a)
	{
		dontWrap:=!dontWrap
	}
	for k, v in cH {
		R[k]:=v  ; looped addition per max limit in expression
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
			winState:=GetKeyState("LWin",P) ;heck
	
			;http://www.sdmath.com/math/discrete/boolean.html ;this explained why I didnt get that the typical factorial or combinatorics wasnt working to come up with the number of possibilities, the modifiers are boolean states and the exponent represents the quantity thereof...flip of a coin example
			;but clocking it first would mean you could avoid this test and results would be applied the same based on getkeystate results would require four? (I guess) tests rather than sixteen 

			if ctrlState
			{
				e:= e . "^" ;app
			}
			if altState
			{
				e:= e . "!"
			}
			if shiftState
			{
				e:= e . "+"
			}
			if winState
			{
				; MsgBox y
				e:= e . "#"
			}
			e:= e . "{" . item . "}"

			; if ctrlState && altState && shiftState && winState
			; { ;ctrl and alt and shift and win
				; e:= "!+^#{" . item . "}"
			; }
			; else if !ctrlState && !altState && shiftState && winState
			; { ;win shift
				; e:= "+#{" . item . "}"
			; }
			; else if !ctrlState && altState && !shiftState && winState
			; { ;win alt
				; e:= "!#{" . item . "}"
			; }
			; else if ctrlState && !altState && !shiftState && winState
			; { ;win ctrl
				; e:= "^#{" . item . "}"
			; }
			; else if !ctrlState && altState && shiftState && winState
			; { ;win shift alt
				; e:= "!+#{" . item . "}"
			; }
			; else if ctrlState && !altState && shiftState && winState
			; { ;win shift ctrl
				; e:= "+^#{" . item . "}"
			; }
			; else if ctrlState && altState && !shiftState && winState
			; { ;win alt ctrl
				; e:= "!^#{" . item . "}"
			; }
			; else if ctrlState && !altState && shiftState && !winState
			; { ;ctrl Shift
				; e:= "!^#{" . item . "}"
			; }
			; else if !ctrlState && !altState && !shiftState && winState
			; { ;win only
				; e:= "#{" . item . "}"
			; }
			; ;sans win below
			; else if ctrlState && altState && shiftState && !winState
			; { ;ctrl and alt and shift
				; e:= "!+^{" . item . "}"
			; }
			; else if ctrlState && altState && !shiftState && !winState
			; { ;ctrl and alt
				; e:= "^!{" . item . "}"
			; }
			; else if ctrlState && !altState && !shiftState && !winState
			; { ;ctrl
				; e:= "^{" . item . "}"
			; }
			; else if !ctrlState && altState && shiftState && !winState
			; { ;alt and shift
				; e:= "!+{" . item . "}"
			; }
			; else if !ctrlState && altState && !shiftState && !winState
			; { ;alt only
				; e:= "!{" . item . "}"
			; }
			; else if !ctrlState && !altState && shiftState && !winState
			; { ;shift only
				; e:= "+{" . item . "}"
			; }
			; else {
				; ;no modifiers
				; e:= "{" . item . "}"
			; } ;all sixteen cases non permutationally accounted for
			;there are better ways...
			if dontWrap
			{
				e:=RegExReplace(e,"\{|\}","")
			}
			SendLevel 1
			Send %e%
		}
	}
}
^r::reload
