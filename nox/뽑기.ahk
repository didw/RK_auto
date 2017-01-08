
SetTitleMatchMode, 2
WinFocus()
{		
    WinActivate, BlueStacks App Player
    WinWaitActive, BlueStacks App Player
}

MClick(x,y)
{
	MouseMove, x, y
	Sleep, 200
	MouseClick, left, x, y
	Sleep, 500
}

Loop, 30
{	
	WinFocus()
	MClick(500,660)
	Sleep, 500
	MClick(760,500)
	Sleep, 500
	Send, {ESC}
	Sleep, 500	
}
