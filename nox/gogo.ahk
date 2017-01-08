
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

	g_kujak = 0
	Loop,
	{
		ImageSearch, FoundX, FoundY, 230,70,280,120, *50 kujak.png
		if ErrorLevel = 0
		{		
			g_kujak = 1
		}
		WinFocus()
		ImageSearch, FoundX, FoundY, 200, 30, 400, 80, *50 last.png
		if ErrorLevel = 0
		{
			Loop,
			{
				Sleep, 1000
				WinFocus()
				ImageSearch, FoundX, FoundY, 370, 345, 420, 395, *50 end.png
				if ErrorLevel = 0
				{
					Sleep, 2000
					WinFocus()
					MClick(393,378)
					MClick(393,378)
					break
				}
			}
		}
		Sleep, 2000
		if g_item = 1
		{
			MClick(330,360)
		}
		else
		{
			MClick(340,370)
		}
	}
	if g_stage = 12
	{
		break
	}
	if g_stage = 16
	{
		break
	}
}
