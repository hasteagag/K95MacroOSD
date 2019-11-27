global lastHwndMacro:=0x0
global dontWrap:=false
#y::
	lastHwndMacro:=WinExist("A") ;update straight away only runs once
	Gui, New
	osdMacroBoard()
return
osdMacroBoard()
{
global
	Gui, Add, Picture, x0 y0 w1745 h747 +BackgroundTrans +Redraw, %A_ScriptDir%\transtest.png
	Gui, -caption
	Gui, Color, FFFFFF
	Gui +LastFound 
	winset,transcolor,FFFFFF
	gui,-caption +alwaysontop
;SEE WHAT HAPPENS WITH A PCTURE REPLACE"
Gui, Add, Picture, x270 y520 w80 h65 +BackgroundTrans +Redraw vM12 gGMKeyFunc, %A_ScriptDir%\k95\M12.png
Gui, Add, Picture, x270 y590 w80 h65 +BackgroundTrans +Redraw vM11 gGMKeyFunc, %A_ScriptDir%\k95\M11.png
Gui, Add, Picture, x270 y664 w80 h71 +BackgroundTrans +Redraw vM10 gGMKeyFunc, %A_ScriptDir%\k95\M10.png
Gui, Add, Picture, x184 y521 w69 h65 +BackgroundTrans +Redraw vM9 gGMKeyFunc, %A_ScriptDir%\k95\M9.png
Gui, Add, Picture, x188 y592 w69 h65 +BackgroundTrans +Redraw vM8 gGMKeyFunc, %A_ScriptDir%\k95\M8.png
Gui, Add, Picture, x189 y657 w69 h76 +BackgroundTrans +Redraw vM7 gGMKeyFunc, %A_ScriptDir%\k95\M7.png
Gui, Add, Picture, x101 y521 w69 h65 +BackgroundTrans +Redraw vM6 gGMKeyFunc, %A_ScriptDir%\k95\M6.png
Gui, Add, Picture, x105 y586 w69 h65 +BackgroundTrans +Redraw vM5 gGMKeyFunc, %A_ScriptDir%\k95\M5.png
Gui, Add, Picture, x105 y652 w69 h69 +BackgroundTrans +Redraw vM4 gGMKeyFunc, %A_ScriptDir%\k95\M4.png
Gui, Add, Picture, x25 y521 w69 h65 +BackgroundTrans +Redraw vM3 gGMKeyFunc, %A_ScriptDir%\k95\M3.png
Gui, Add, Picture, x29 y586 w69 h65 +BackgroundTrans +Redraw vM2 gGMKeyFunc, %A_ScriptDir%\k95\M2.png
Gui, Add, Picture, x29 y652 w69 h69 +BackgroundTrans +Redraw vM1 gGMKeyFunc, %A_ScriptDir%\k95\M1.png


Gui, Add, Picture, x448 y19 w45 h44 +BackgroundTrans +Redraw vkM3 gGMKeyFunc, %A_ScriptDir%\k95\kM3.png
Gui, Add, Picture, x382 y19 w45 h44 +BackgroundTrans +Redraw vkM2 gGMKeyFunc, %A_ScriptDir%\k95\kM2.png
Gui, Add, Picture, x316 y19 w45 h44 +BackgroundTrans +Redraw vkM1 gGMKeyFunc, %A_ScriptDir%\k95\kM1.png
Gui, Add, Picture, x250 y19 w45 h44 +BackgroundTrans +Redraw vMR gGMKeyFunc, %A_ScriptDir%\k95\MR.png
Gui, Add, Picture, x1266 y25 w33 h32 +BackgroundTrans +Redraw vBrightness gGMKeyFunc, %A_ScriptDir%\k95\Brightness.png
Gui, Add, Picture, x1331 y25 w33 h32 +BackgroundTrans +Redraw vLockButton gGMKeyFunc, %A_ScriptDir%\k95\LockButton.png
Gui, Add, Picture, x1535 y22 w64 h42 +BackgroundTrans +Redraw vMute gGMKeyFunc, %A_ScriptDir%\k95\Mute.png
Gui, Add, Picture, x1626 y22 w73 h21 +BackgroundTrans +Redraw vVolumeUp gGMKeyFunc, %A_ScriptDir%\k95\VolumeUp.png
Gui, Add, Picture, x1626 y42 w73 h22 +BackgroundTrans +Redraw vVolumeDown gGMKeyFunc, %A_ScriptDir%\k95\VolumeDown.png
Gui, Add, Picture, x1661 y97 w63 h42 +BackgroundTrans +Redraw vNextTrack gGMKeyFunc, %A_ScriptDir%\k95\NextTrack.png
Gui, Add, Picture, x1597 y97 w63 h42 +BackgroundTrans +Redraw vPlayPause gGMKeyFunc, %A_ScriptDir%\k95\PlayPause.png
Gui, Add, Picture, x1534 y97 w63 h42 +BackgroundTrans +Redraw vLastTrack gGMKeyFunc, %A_ScriptDir%\k95\LastTrack.png
Gui, Add, Picture, x1468 y97 w63 h42 +BackgroundTrans +Redraw vStop gGMKeyFunc, %A_ScriptDir%\k95\Stop.png

Gui, Add, Picture, x1665 y363 w61 h127 +BackgroundTrans +Redraw vNumPadEnter gGMKeyFunc, %A_ScriptDir%\k95\NumPadEnter.png
Gui, Add, Picture, x1665 y233 w61 h127 +BackgroundTrans +Redraw vNumPadPlus gGMKeyFunc, %A_ScriptDir%\k95\NumPadPlus.png
Gui, Add, Picture, x1666 y169 w61 h61 +BackgroundTrans +Redraw vNumPadMinus gGMKeyFunc, %A_ScriptDir%\k95\NumPadMinus.png
Gui, Add, Picture, x1601 y169 w61 h61 +BackgroundTrans +Redraw vNumPadMul gGMKeyFunc, %A_ScriptDir%\k95\NumPadMul.png
Gui, Add, Picture, x1534 y169 w61 h61 +BackgroundTrans +Redraw vNumPadDiv gGMKeyFunc, %A_ScriptDir%\k95\NumPadDiv.png
Gui, Add, Picture, x1468 y169 w61 h61 +BackgroundTrans +Redraw vNumLock gGMKeyFunc, %A_ScriptDir%\k95\NumLock.png
Gui, Add, Picture, x1601 y233 w61 h61 +BackgroundTrans +Redraw vnp9 gGMKeyFunc, %A_ScriptDir%\k95\9.png
Gui, Add, Picture, x1534 y233 w61 h61 +BackgroundTrans +Redraw vnp8 gGMKeyFunc, %A_ScriptDir%\k95\8.png
Gui, Add, Picture, x1468 y233 w61 h61 +BackgroundTrans +Redraw vnp7 gGMKeyFunc, %A_ScriptDir%\k95\7.png
Gui, Add, Picture, x1601 y296 w61 h61 +BackgroundTrans +Redraw vnp6 gGMKeyFunc, %A_ScriptDir%\k95\6.png
Gui, Add, Picture, x1534 y296 w61 h61 +BackgroundTrans +Redraw vnp5 gGMKeyFunc, %A_ScriptDir%\k95\5.png
Gui, Add, Picture, x1468 y296 w61 h61 +BackgroundTrans +Redraw vnp4 gGMKeyFunc, %A_ScriptDir%\k95\4.png
Gui, Add, Picture, x1601 y363 w61 h61 +BackgroundTrans +Redraw vnp3 gGMKeyFunc, %A_ScriptDir%\k95\3.png
Gui, Add, Picture, x1534 y363 w61 h61 +BackgroundTrans +Redraw vnp2 gGMKeyFunc, %A_ScriptDir%\k95\2.png
Gui, Add, Picture, x1468 y363 w61 h61 +BackgroundTrans +Redraw vnp1 gGMKeyFunc, %A_ScriptDir%\k95\1.png
Gui, Add, Picture, x1468 y427 w127 h61 +BackgroundTrans +Redraw vNumPadIns gGMKeyFunc, %A_ScriptDir%\k95\NumPadIns.png
Gui, Add, Picture, x1601 y427 w61 h61 +BackgroundTrans +Redraw vNumPadDot gGMKeyFunc, %A_ScriptDir%\k95\NumPadDot.png
Gui, Add, Picture, x1384 y427 w61 h61 +BackgroundTrans +Redraw vRight gGMKeyFunc, %A_ScriptDir%\k95\Right.png
Gui, Add, Picture, x1318 y427 w61 h61 +BackgroundTrans +Redraw vDown gGMKeyFunc, %A_ScriptDir%\k95\Down.png
Gui, Add, Picture, x1251 y427 w61 h61 +BackgroundTrans +Redraw vLeft gGMKeyFunc, %A_ScriptDir%\k95\Left.png
Gui, Add, Picture, x1318 y363 w61 h61 +BackgroundTrans +Redraw vUp gGMKeyFunc, %A_ScriptDir%\k95\Up.png
Gui, Add, Picture, x1384 y231 w61 h61 +BackgroundTrans +Redraw vDelete gGMKeyFunc, %A_ScriptDir%\k95\Delete.png
Gui, Add, Picture, x1318 y231 w61 h61 +BackgroundTrans +Redraw vEnd gGMKeyFunc, %A_ScriptDir%\k95\End.png
Gui, Add, Picture, x1251 y231 w61 h61 +BackgroundTrans +Redraw vPgDown gGMKeyFunc, %A_ScriptDir%\k95\PgDown.png
Gui, Add, Picture, x1384 y169 w61 h61 +BackgroundTrans +Redraw vPageUp gGMKeyFunc, %A_ScriptDir%\k95\PageUp.png
Gui, Add, Picture, x1318 y169 w61 h61 +BackgroundTrans +Redraw vHome gGMKeyFunc, %A_ScriptDir%\k95\Home.png
Gui, Add, Picture, x1251 y169 w61 h61 +BackgroundTrans +Redraw vInsert gGMKeyFunc, %A_ScriptDir%\k95\Insert.png
Gui, Add, Picture, x1384 y99 w61 h61 +BackgroundTrans +Redraw vPauseBreak gGMKeyFunc, %A_ScriptDir%\k95\PauseBreak.png
Gui, Add, Picture, x1318 y99 w61 h61 +BackgroundTrans +Redraw vScrollLock gGMKeyFunc, %A_ScriptDir%\k95\ScrollLock.png
Gui, Add, Picture, x1251 y99 w61 h61 +BackgroundTrans +Redraw vPrintScreen gGMKeyFunc, %A_ScriptDir%\k95\PrintScreen.png
Gui, Add, Picture, x1167 y99 w61 h61 +BackgroundTrans +Redraw vF12 gGMKeyFunc, %A_ScriptDir%\k95\F12.png
Gui, Add, Picture, x1101 y99 w61 h61 +BackgroundTrans +Redraw vF11 gGMKeyFunc, %A_ScriptDir%\k95\F11.png
Gui, Add, Picture, x1034 y99 w61 h61 +BackgroundTrans +Redraw vF10 gGMKeyFunc, %A_ScriptDir%\k95\F10.png
Gui, Add, Picture, x968 y99 w61 h61 +BackgroundTrans +Redraw vF9 gGMKeyFunc, %A_ScriptDir%\k95\F9.png
Gui, Add, Picture, x858 y99 w61 h61 +BackgroundTrans +Redraw vF8 gGMKeyFunc, %A_ScriptDir%\k95\F8.png
Gui, Add, Picture, x792 y99 w61 h61 +BackgroundTrans +Redraw vF7 gGMKeyFunc, %A_ScriptDir%\k95\F7.png
Gui, Add, Picture, x725 y99 w61 h61 +BackgroundTrans +Redraw vF6 gGMKeyFunc, %A_ScriptDir%\k95\F6.png
Gui, Add, Picture, x659 y99 w61 h61 +BackgroundTrans +Redraw vF5 gGMKeyFunc, %A_ScriptDir%\k95\F5.png
Gui, Add, Picture, x549 y99 w61 h61 +BackgroundTrans +Redraw vF4 gGMKeyFunc, %A_ScriptDir%\k95\F4.png
Gui, Add, Picture, x483 y99 w61 h61 +BackgroundTrans +Redraw vF3 gGMKeyFunc, %A_ScriptDir%\k95\F3.png
Gui, Add, Picture, x416 y99 w61 h61 +BackgroundTrans +Redraw vF2 gGMKeyFunc, %A_ScriptDir%\k95\F2.png
Gui, Add, Picture, x350 y99 w61 h61 +BackgroundTrans +Redraw vF1 gGMKeyFunc, %A_ScriptDir%\k95\F1.png
Gui, Add, Picture, x240 y99 w61 h61 +BackgroundTrans +Redraw vEsc gGMKeyFunc, %A_ScriptDir%\k95\Esc.png
Gui, Add, Picture, x1136 y425 w93 h61 +BackgroundTrans +Redraw vRCtrl gGMKeyFunc, %A_ScriptDir%\k95\RCtrl.png
Gui, Add, Picture, x1070 y425 w62 h61 +BackgroundTrans +Redraw vAppsKey gGMKeyFunc, %A_ScriptDir%\k95\AppsKey.png
Gui, Add, Picture, x1004 y425 w62 h61 +BackgroundTrans +Redraw vRWin gGMKeyFunc, %A_ScriptDir%\k95\RWin.png
Gui, Add, Picture, x490 y425 w424 h61 +BackgroundTrans +Redraw vRAlt gGMKeyFunc, %A_ScriptDir%\k95\RAlt.png
Gui, Add, Picture, x918 y425 w82 h61 +BackgroundTrans +Redraw vSpace gGMKeyFunc, %A_ScriptDir%\k95\Space.png
Gui, Add, Picture, x401 y425 w83 h61 +BackgroundTrans +Redraw vLalt gGMKeyFunc, %A_ScriptDir%\k95\LAlt.png
Gui, Add, Picture, x338 y425 w62 h61 +BackgroundTrans +Redraw vLWin gGMKeyFunc, %A_ScriptDir%\k95\LWin.png
Gui, Add, Picture, x244 y425 w91 h61 +BackgroundTrans +Redraw vLCtrl gGMKeyFunc, %A_ScriptDir%\k95\LCtrl.png
Gui, Add, Picture, x1050 y361 w180 h61 +BackgroundTrans +Redraw vRShift gGMKeyFunc, %A_ScriptDir%\k95\RShift.png
Gui, Add, Picture, x984 y361 w62 h61 +BackgroundTrans +Redraw vQuestionFWDSlash gGMKeyFunc, %A_ScriptDir%\k95\question.png
Gui, Add, Picture, x918 y361 w62 h61 +BackgroundTrans +Redraw vGTPeriod gGMKeyFunc, %A_ScriptDir%\k95\GT.png
Gui, Add, Picture, x852 y361 w62 h61 +BackgroundTrans +Redraw vLTComma gGMKeyFunc, %A_ScriptDir%\k95\LT.png
Gui, Add, Picture, x786 y361 w62 h61 +BackgroundTrans +Redraw vm gGMKeyFunc, %A_ScriptDir%\k95\m.png
Gui, Add, Picture, x720 y361 w62 h61 +BackgroundTrans +Redraw vn gGMKeyFunc, %A_ScriptDir%\k95\n.png
Gui, Add, Picture, x654 y361 w62 h61 +BackgroundTrans +Redraw vb gGMKeyFunc, %A_ScriptDir%\k95\b.png
Gui, Add, Picture, x588 y361 w62 h61 +BackgroundTrans +Redraw vxV gGMKeyFunc, %A_ScriptDir%\k95\v.png
Gui, Add, Picture, x522 y361 w62 h61 +BackgroundTrans +Redraw vc gGMKeyFunc, %A_ScriptDir%\k95\c.png
Gui, Add, Picture, x456 y361 w62 h61 +BackgroundTrans +Redraw vx gGMKeyFunc, %A_ScriptDir%\k95\x.png
Gui, Add, Picture, x390 y361 w62 h61 +BackgroundTrans +Redraw vz gGMKeyFunc, %A_ScriptDir%\k95\z.png
Gui, Add, Picture, x243 y361 w142 h61 +BackgroundTrans +Redraw vLShift gGMKeyFunc, %A_ScriptDir%\k95\LShift.png
Gui, Add, Picture, x1085 y297 w142 h61 +BackgroundTrans +Redraw vEnter gGMKeyFunc, %A_ScriptDir%\k95\Enter.png

Gui, Add, Picture, x1019 y297 w62 h61 +BackgroundTrans +Redraw vquote gGMKeyFunc, %A_ScriptDir%\k95\quote.png
Gui, Add, Picture, x953 y297 w62 h61 +BackgroundTrans +Redraw vsemicolon gGMKeyFunc, %A_ScriptDir%\k95\semicolon.png

Gui, Add, Picture, x887 y297 w62 h61 +BackgroundTrans +Redraw vl gGMKeyFunc, %A_ScriptDir%\k95\l.png
Gui, Add, Picture, x821 y297 w62 h61 +BackgroundTrans +Redraw vk gGMKeyFunc, %A_ScriptDir%\k95\k.png
Gui, Add, Picture, x755 y297 w62 h61 +BackgroundTrans +Redraw vj gGMKeyFunc, %A_ScriptDir%\k95\j.png
Gui, Add, Picture, x689 y297 w62 h61 +BackgroundTrans +Redraw vh gGMKeyFunc, %A_ScriptDir%\k95\h.png
Gui, Add, Picture, x623 y297 w62 h61 +BackgroundTrans +Redraw vg gGMKeyFunc, %A_ScriptDir%\k95\g.png
Gui, Add, Picture, x557 y297 w62 h61 +BackgroundTrans +Redraw vf gGMKeyFunc, %A_ScriptDir%\k95\f.png
Gui, Add, Picture, x491 y297 w62 h61 +BackgroundTrans +Redraw vd gGMKeyFunc, %A_ScriptDir%\k95\d.png
Gui, Add, Picture, x425 y297 w62 h61 +BackgroundTrans +Redraw vs gGMKeyFunc, %A_ScriptDir%\k95\s.png
Gui, Add, Picture, x358 y297 w62 h61 +BackgroundTrans +Redraw va gGMKeyFunc, %A_ScriptDir%\k95\a.png
Gui, Add, Picture, x242 y297 w111 h61 +BackgroundTrans +Redraw vCapsLock gGMKeyFunc, %A_ScriptDir%\k95\CapsLock.png

Gui, Add, Picture, x1135 y233 w94 h61 +BackgroundTrans +Redraw vbackslash gGMKeyFunc, %A_ScriptDir%\k95\pipe.png
Gui, Add, Picture, x1070 y233 w62 h61 +BackgroundTrans +Redraw vCloseBracket gGMKeyFunc, %A_ScriptDir%\k95\]}.png
Gui, Add, Picture, x1002 y233 w62 h61 +BackgroundTrans +Redraw vOpenBracket gGMKeyFunc, %A_ScriptDir%\k95\[{.png

Gui, Add, Picture, x936 y233 w62 h61 +BackgroundTrans +Redraw vp gGMKeyFunc, %A_ScriptDir%\k95\p.png
Gui, Add, Picture, x870 y233 w62 h61 +BackgroundTrans +Redraw vo gGMKeyFunc, %A_ScriptDir%\k95\o.png
Gui, Add, Picture, x804 y233 w62 h61 +BackgroundTrans +Redraw vi gGMKeyFunc, %A_ScriptDir%\k95\i.png
Gui, Add, Picture, x738 y233 w62 h61 +BackgroundTrans +Redraw vu gGMKeyFunc, %A_ScriptDir%\k95\u.png
Gui, Add, Picture, x672 y233 w62 h61 +BackgroundTrans +Redraw vy gGMKeyFunc, %A_ScriptDir%\k95\y.png
Gui, Add, Picture, x606 y233 w62 h61 +BackgroundTrans +Redraw vt gGMKeyFunc, %A_ScriptDir%\k95\t.png
Gui, Add, Picture, x540 y233 w62 h61 +BackgroundTrans +Redraw vr gGMKeyFunc, %A_ScriptDir%\k95\r.png
Gui, Add, Picture, x474 y233 w62 h61 +BackgroundTrans +Redraw ve gGMKeyFunc, %A_ScriptDir%\k95\e.png
Gui, Add, Picture, x408 y233 w62 h61 +BackgroundTrans +Redraw vw gGMKeyFunc, %A_ScriptDir%\k95\w.png
Gui, Add, Picture, x342 y233 w62 h61 +BackgroundTrans +Redraw vq gGMKeyFunc, %A_ScriptDir%\k95\q.png
Gui, Add, Picture, x244 y233 w93 h61 +BackgroundTrans +Redraw vTab gGMKeyFunc, %A_ScriptDir%\k95\Tab.png
Gui, Add, Picture, x1099 y169 w131 h61 +BackgroundTrans +Redraw vBackspace gGMKeyFunc, %A_ScriptDir%\k95\Backspace.png
Gui, Add, Picture, x1033 y169 w62 h61 +BackgroundTrans +Redraw vBackTick gGMKeyFunc, %A_ScriptDir%\k95\EqPlus.png
Gui, Add, Picture, x967 y169 w62 h61 +BackgroundTrans +Redraw vHyphenUnderscore gGMKeyFunc, %A_ScriptDir%\k95\-dash.png
Gui, Add, Picture, x901 y169 w62 h61 +BackgroundTrans +Redraw vn0 gGMKeyFunc, %A_ScriptDir%\k95\0).png
Gui, Add, Picture, x835 y169 w62 h61 +BackgroundTrans +Redraw vn9 gGMKeyFunc, %A_ScriptDir%\k95\9(.png
Gui, Add, Picture, x769 y169 w62 h61 +BackgroundTrans +Redraw vn8 gGMKeyFunc, %A_ScriptDir%\k95\8_.png
Gui, Add, Picture, x703 y169 w62 h61 +BackgroundTrans +Redraw vn7 gGMKeyFunc, %A_ScriptDir%\k95\7&.png
Gui, Add, Picture, x637 y169 w62 h61 +BackgroundTrans +Redraw vn6 gGMKeyFunc, %A_ScriptDir%\k95\6^.png
Gui, Add, Picture, x571 y169 w62 h61 +BackgroundTrans +Redraw vn5 gGMKeyFunc, %A_ScriptDir%\k95\5`%.png
Gui, Add, Picture, x505 y169 w62 h61 +BackgroundTrans +Redraw vn4 gGMKeyFunc, %A_ScriptDir%\k95\4$.png
Gui, Add, Picture, x439 y169 w62 h61 +BackgroundTrans +Redraw vn3 gGMKeyFunc, %A_ScriptDir%\k95\3#.png
Gui, Add, Picture, x373 y169 w62 h61 +BackgroundTrans +Redraw vn2 gGMKeyFunc, %A_ScriptDir%\k95\2@.png
Gui, Add, Picture, x306 y169 w62 h61 +BackgroundTrans +Redraw vn1 gGMKeyFunc, %A_ScriptDir%\k95\1!.png
Gui, Add, Picture, x240 y169 w61 h61 +BackgroundTrans +Redraw vBackTickTilde gGMKeyFunc, %A_ScriptDir%\k95\BackTickTilde.png
Gui, Add, Picture, x152 y431 w61 h61 +BackgroundTrans +Redraw vG18 gGMKeyFunc, %A_ScriptDir%\k95\G18.png
Gui, Add, Picture, x89 y431 w61 h61 +BackgroundTrans +Redraw vG17 gGMKeyFunc, %A_ScriptDir%\k95\G17.png
Gui, Add, Picture, x27 y431 w61 h61 +BackgroundTrans +Redraw vG16 gGMKeyFunc, %A_ScriptDir%\k95\G16.png
Gui, Add, Picture, x152 y369 w61 h61 +BackgroundTrans +Redraw vG15 gGMKeyFunc, %A_ScriptDir%\k95\G15.png
Gui, Add, Picture, x89 y369 w61 h61 +BackgroundTrans +Redraw vG14 gGMKeyFunc, %A_ScriptDir%\k95\G14.png
Gui, Add, Picture, x27 y369 w61 h61 +BackgroundTrans +Redraw vG13 gGMKeyFunc, %A_ScriptDir%\k95\G13.png
Gui, Add, Picture, x152 y294 w61 h61 +BackgroundTrans +Redraw vG12 gGMKeyFunc, %A_ScriptDir%\k95\G12.png
Gui, Add, Picture, x89 y294 w61 h61 +BackgroundTrans +Redraw vG11 gGMKeyFunc, %A_ScriptDir%\k95\G11.png
Gui, Add, Picture, x27 y294 w61 h61 +BackgroundTrans +Redraw vG10 gGMKeyFunc, %A_ScriptDir%\k95\G10.png
Gui, Add, Picture, x152 y232 w61 h61 +BackgroundTrans +Redraw vG9 gGMKeyFunc, %A_ScriptDir%\k95\G9.png
Gui, Add, Picture, x89 y232 w61 h61 +BackgroundTrans +Redraw vG8 gGMKeyFunc, %A_ScriptDir%\k95\G8.png
Gui, Add, Picture, x27 y232 w61 h61 +BackgroundTrans +Redraw vG7 gGMKeyFunc, %A_ScriptDir%\k95\G7.png
Gui, Add, Picture, x152 y157 w61 h61 +BackgroundTrans +Redraw vG6 gGMKeyFunc, %A_ScriptDir%\k95\G6.png
Gui, Add, Picture, x89 y157 w61 h61 +BackgroundTrans +Redraw vG5 gGMKeyFunc, %A_ScriptDir%\k95\G5.png
Gui, Add, Picture, x27 y157 w61 h61 +BackgroundTrans +Redraw vG4 gGMKeyFunc, %A_ScriptDir%\k95\G4.png
Gui, Add, Picture, x152 y95 w61 h61 +BackgroundTrans +Redraw vG3 gGMKeyFunc, %A_ScriptDir%\k95\G3.png
Gui, Add, Picture, x89 y95 w61 h61 +BackgroundTrans +Redraw vG2 gGMKeyFunc, %A_ScriptDir%\k95\G2.png
Gui, Add, Picture, x27 y95 w61 h61 +BackgroundTrans +Redraw vG1 gGMKeyFunc, %A_ScriptDir%\k95\G1.png
sleep 60
	Gui, Show, x0 y0 w1745 h960
}
GMKeyFunc()
{
	WinActivate, ahk_id %lastHwndMacro%
	;TODO:: Clock a bucky matrix with GetKeyState save those steps later?
	
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
	
	R := {G1:"SC0C1",G2:"SC0C2",G3:"SC0C3",G4:"SC0C4",G5:"SC0C5",G6:"SC0C6",G7:"SC0C7",G8:"SC0C8",G9:"SC0C9",G10:"SC0CA",G11:"SC0CB",G12:"SC0CC",G13:"SC0CD",G14:"SC0CE",G15:"SC0CF",G16:"SC0D0",G17:"SC0D1",G18:"SC0D2",M1:"SC0D3",M2:"SC0D4",M3:"SC0D5",M4:"SC0D6",M5:"SC0D7",M6:"SC0D8",M7:"SC0D9",M8:"SC0DA",M9:"SC0E9",M10:"SC0EA",M11:"SC0EB",M12:"SC0EC","Ctrl":"^","Alt":"{!}","Shift":"{+}","Win":"{#}",kMR:"F19",kM1:"F20",kM2:"F21",kM3:"F22",Esc:"Esc",NumLock:"NumLock",NumPadDiv:"NumPadDiv",NumPadMult:"NumPadMult",NumPadSub:"NumPadSub",np7:"NumPad7",np8:"NumPad8",np9:"NumPad9",NumPadAdd:"NumPadAdd",np4:"NumPad4",np5:"NumPad5",np6:"NumPad6",np1:"NumPad1",np2:"NumPad2",NumPad3:"NumPad3",NumPadEnter:"NumpadEnter",np0:"NumPad0",NumpadDot:"NumpadDot",NumPad0:"NumPad0"}
	
	
	oldH:={Brightness:"Brightness",LockButton:"LockButton",Mute:"Volume_Mute",VolumeUp:"Volume_Up",VolumeDown:"Volume_Down",NextTrack:"Media_Next",PlayPause:"Media_Play_Pause",LastTrack:"Media_Previous",Stop:"Media_Stop",NumPadEnter:"NumPadEnter",NumPadPlus:"NumPadPlus",NumPadMinus:"NumPadMinus",NumPadMul:"NumPadMul",NumPadIns:"NumPadIns",NumPadDot:"NumPadDot",Right:"Right",Down:"Down",Left:"Left",Up:"Up",Delete:"Delete",End:"End",PgDown:"PgDown",PageUp:"PageUp",Home:"Home",Insert:"Insert",PauseBreak:"Pause_Break",ScrollLock:"ScrollLock",PrintScreen:"PrintScreen",F12:"F12",F11:"F11",F10:"F10",F9:"F9",F8:"F8",F7:"F7",F6:"F6",F5:"F5",F4:"F4",F3:"F3",F2:"F2",F1:"F1",Esc:"Esc",RCtrl:"RCtrl",AppsKey:"AppsKey",RWin:"RWiny",RAlt:"RAlt",Space:"Space",Lalt:"Lalt",LWin:"LWin",LCtrl:"LCtrl",RShift:"RShift",QuestionFWDSlash:"QuestionFWDSlash",GTPeriod:"GTPeriod",LTComma:"LTComma",m:"m",n:"n",b:"b",xV:"v",c:"c",x:"x",z:"z",LShift:"LShift",Enter:"Enter",quote:"quote",semicolon:"semicolon",l:"l",k:"k",j:"j",h:"h",g:"g",f:"f",d:"d",s:"s",a:"a",CapsLock:"CapsLock",backslash:"backslash",CloseBracket:"CloseBracket",OpenBracket:"OpenBracket",p:"p",o:"o",i:"i",u:"u",y:"y",t:"t",r:"r",e:"e",w:"w",q:"q",Tab:"Tab",Backspace:"Backspace",BackTick:"BackTick",HyphenUnderscore:"HyphenUnderscore",n0:"0",n9:"9",n8:"8",n7:"7",n6:"6",n5:"5",n4:"4",n3:"3",n2:"2",n1:"1"} ;,BackTickTilde:"BackTickTilde",:"BackTick"}
	
	H:={Brightness:"Brightness",LockButton:"LockButton",Mute:"Volume_Mute",VolumeUp:"Volume_Up",VolumeDown:"Volume_Down",NextTrack:"Media_Next",PlayPause:"Media_Play_Pause",LastTrack:"Media_Previous",Stop:"Media_Stop",NumPadEnter:"NumPadEnter",NumPadPlus:"NumPadPlus",NumPadMinus:"NumPadMinus",NumPadMul:"NumPadMul",NumPadIns:"NumPadIns",NumPadDot:"NumPadDot",Right:"Right",Down:"Down",Left:"Left",Up:"Up",Delete:"Delete",End:"End",PgDown:"PgDown",PageUp:"PageUp",Home:"Home",Insert:"Insert",PauseBreak:"Pause_Break",ScrollLock:"ScrollLock",PrintScreen:"PrintScreen",F12:"F12",F11:"F11",F10:"F10",F9:"F9",F8:"F8",F7:"F7",F6:"F6",F5:"F5",F4:"F4",F3:"F3",F2:"F2",F1:"F1",Esc:"Esc",RCtrl:"RCtrl",AppsKey:"AppsKey",RWin:"RWiny",RAlt:"RAlt",Space:"Space",Lalt:"Lalt",LWin:"LWin",LCtrl:"LCtrl",RShift:"RShift",QuestionFWDSlash:"QuestionFWDSlash",GTPeriod:"GTPeriod",LTComma:"LTComma",LShift:"LShift",Enter:"Enter",quote:"quote",semicolon:"semicolon",CapsLock:"CapsLock",backslash:"backslash",CloseBracket:"CloseBracket",OpenBracket:"OpenBracket",Tab:"Tab",Backspace:"Backspace",BackTick:"BackTick",HyphenUnderscore:"HyphenUnderscore"} ;,BackTickTilde:"BackTickTilde",:"BackTick"}
	
	cH:={F1:"F1",F2:"F2",F3:"F3",F4:"F4",F5:"F5",F6:"F6",F7:"F7",F8:"F8",F9:"F9",F10:"F10",F11:"F11",F12:"F12",Enter:"Enter",Escape:"Escape",Space:"Space",Tab:"Tab",Backspace:"Backspace",Delete:"Delete",Insert:"Insert",Up:"Up",Down:"Down",Left:"Left",Right:"Right",Home:"Home",End:"End",PgUp:"PgUp",PgDn:"PgDn",CapsLock:"CapsLock",ScrollLock:"ScrollLock",NumLock:"NumLock",LControl:"LControl",RControl:"RControl",Lalt:"Lalt",RAlt:"RAlt",LShift:"LShift",RShift:"RShift",RWin:"RWin",AppsKey:"AppsKey",NumpadDot:"NumpadDot",NumPadEnter:"NumPadEnter",NumpadMult:"NumpadMult",NumpadDiv:"NumpadDiv",NumpadAdd:"NumpadAdd",NumpadSub:"NumpadSub",NumpadDel:"NumpadDel",NumPadIns:"NumPadIns",Volume_Mute:"Volume_Mute",Volume_Up:"Volume_Up",Volume_Down:"Volume_Down",Media_Next:"Media_Next",Media_Play_Pause:"Media_Play_Pause",Media_Prev:"Media_Prev",Media_Stop:"Media_Stop",PrintScreen:"PrintScreen",Pause:"Pause"}
	
	lettersOnly:={m:"m",n:"n",b:"b",xV:"v",c:"c",x:"x",z:"z",l:"l",k:"k",j:"j",h:"h",g:"g",f:"f",d:"d",s:"s",a:"a",p:"p",o:"o",i:"i",u:"u",y:"y",t:"t",r:"r",e:"e",w:"w",q:"q"}
	numbersOnly:={n0:"0",n9:"9",n8:"8",n7:"7",n6:"6",n5:"5",n4:"4",n3:"3",n2:"2",n1:"1"}

	
	for k, v in cH {
		; MsgBox %k% %v%
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
		if a != %each%
		{
			; if a is alpha ;not so much
			if lettersOnly.HasKey(a)
			{
				; Send %a%
				dontWrap:=!dontWrap
				; return
			}
			;very inefficient
		}
		else if a = %each%
		{
			; big issue is grabbing existing physical modifiers
			ctrlState:=GetKeyState("Ctrl",P)
			altState:=GetKeyState("Alt",P)
			shiftState:=GetKeyState("Shift",P)
			winState:=GetKeyState("#",P)
			
			if ctrlState && altState && shiftState && winState
			{ ;ctrl and alt and shift and win
				e:= "!+^#{" . item . "}"
			}
			else if !ctrlState && !altState && shiftState && winState
			{ ;win shift
				e:= "+#{" . item . "}"
			}
			else if !ctrlState && altState && !shiftState && winState
			{ ;win alt
				e:= "!#{" . item . "}"
			}
			else if ctrlState && !altState && !shiftState && winState
			{ ;win ctrl
				e:= "^#{" . item . "}"
			}
			else if !ctrlState && altState && shiftState && winState
			{ ;win shift alt
				e:= "!+#{" . item . "}"
			}
			else if ctrlState && !altState && shiftState && winState
			{ ;win shift ctrl
				e:= "+^#{" . item . "}"
			}
			else if ctrlState && !altState && shiftState && winState
			{ ;win alt ctrl
				e:= "!^#{" . item . "}"
			}
			else if !ctrlState && !altState && !shiftState && winState
			{ ;win only
				e:= "#{" . item . "}"
			}
			;sans win below
			else if ctrlState && altState && shiftState && !winState
			{ ;ctrl and alt and shift
				e:= "!+^{" . item . "}"
			}
			else if ctrlState && altState && !shiftState && !winState
			{ ;ctrl and alt
				e:= "^!{" . item . "}"
			}
			else if ctrlState && !altState && !shiftState && !winState
			{ ;ctrl
				e:= "^{" . item . "}"
			}
			else if !ctrlState && altState && shiftState && !winState
			{ ;alt and shift
				e:= "!+{" . item . "}"
			}
			else if !ctrlState && altState && !shiftState && !winState
			{ ;alt
				e:= "!{" . item . "}"
			}
			else {
				;no modifiers
				e:= "{" . item . "}"
			}
			;there are better ways...
			 ; MsgBox %e%
			if dontWrap
			{
				 MsgBox %e% 1
				e:=RegExReplace(e,"\{|\}","")
				 MsgBox %e% 2
			}
			SendLevel 1
			Send %e%
		}
	}
}
^r::reload
