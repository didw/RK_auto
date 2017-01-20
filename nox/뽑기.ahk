
SetTitleMatchMode, 2
WinFocus()
{		
    WinActivate, RedKnights
    WinWaitActive, RedKnights
}

MClick(x,y)
{
	MouseMove, x, y
	Sleep, 100
	MouseClick, left, x, y
	Sleep, 300
}

StopApp()
{
	if GetKeyState("x")
	{
		ExitApp
	}
} 

Loop, 300
{	
	WinFocus()
	MClick(230,360)
	Sleep, 100
	MClick(380,280)
	Sleep, 300
	Send, {ESC}
	Sleep, 200
	StopApp()
}
