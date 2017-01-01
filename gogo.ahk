
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

g_iter = 0
Loop,
{	
	if g_iter = 7
	{
		break
	}
	Loop,
	{
		Sleep, 2000
		WinFocus()
		ImageSearch, FoundX, FoundY, 1200,650, 1270, 700, *50 start.png
		if ErrorLevel = 0
		{
			WinFocus()
			MClick(1200,650)
			MClick(1200,650)
			break
		}
	}
	; when need to skip
	;Sleep, 2000
	;MClick(1200,50)
	Loop,
	{
		WinFocus()
		ImageSearch, FoundX, FoundY, 500, 0, 900, 200, *50 last.png
		if ErrorLevel = 0
		{	
			Loop,
			{
				Sleep, 1000
				WinFocus()
				ImageSearch, FoundX, FoundY, 700, 630, 900, 700, *50 end.png
				if ErrorLevel = 0
				{
					Sleep, 2000
					WinFocus()
					MClick(800,680)
					MClick(800,680)
					break
				}
				WinFocus()
				MClick(600,600)
			}
			g_iter := g_iter + 1
			break
		}
		Sleep, 2000
		MClick(725,670)
	}
}
