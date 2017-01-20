
SetTitleMatchMode, 2
WinFocus()
{		
    WinActivate, RedKnights
    WinWaitActive, RedKnights
}

MClick(x,y)
{
	MouseMove, x, y
	Sleep, 200
	MouseClick, left, x, y
	Sleep, 500
}

Loop,
{
	Loop,
	{
		Sleep, 2000
		WinFocus()
		ImageSearch, FoundX, FoundY, 590, 335, 640, 385, *50 start.png
		if ErrorLevel = 0
		{
			WinFocus()
			MClick(626,371)
			MClick(626,371)
			break
		}
	}

	Loop,
	{
		WinFocus()
		ImageSearch, FoundX, FoundY, 200, 30, 400, 80, *50 last.png
		if ErrorLevel = 0
		{
			Loop,
			{
				Sleep, 1000
				WinFocus()
				ImageSearch, FoundX, FoundY, 370, 345, 420, 395, *70 end.png
				if ErrorLevel = 0
				{
					Sleep, 2000
					WinFocus()
					MClick(393,378)
					MClick(393,378)
					break
				}
				ImageSearch, FoundX, FoundY, 500, 345, 600, 395, *70 end2.png
				if ErrorLevel = 0
				{
					Sleep, 2000
					WinFocus()
					MClick(500,378)
					MClick(500,378)
					break
				}
			}
		}
		Sleep, 4000
		MClick(340,370)
	}
}
