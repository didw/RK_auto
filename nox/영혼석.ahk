
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

g_iter = 0
g_stage = 1

MCliskStage(stage)
{
	; 1-2
	; 1-3
	; 2-2
	; 3-3
	; 3-4
	; 4-3
	; 7-3, pass

	if stage = 2
	{
		Sleep, 3000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
	}
	if stage = 3
	{
		Sleep, 3000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
	}
	if stage = 5
	{
		Sleep, 3000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
	}
	if stage = 6
	{
		Sleep, 3000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
		Sleep, 1000
		MClick(630, 145)
	}
}

Loop,
{
	if g_iter = 3
	{
		MCliskStage(g_stage)
		g_stage := g_stage + 1
		g_iter = 0
	}
	Loop,
	{
		Sleep, 2000
		WinFocus()
		ImageSearch, FoundX, FoundY, 590, 335, 640, 385, *50 prepare.png
		if ErrorLevel = 0
		{
			WinFocus()
			MClick(626,371)
			break
		}
	}
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
		ImageSearch, FoundX, FoundY, 370, 345, 420, 395, *50 end.png
		if ErrorLevel = 0
		{
			g_iter := g_iter + 1
			if g_iter = 3
			{
				Sleep, 2000
				WinFocus()
				MClick(490,378)
				break
			}
			Sleep, 2000
			WinFocus()
			MClick(393,378)
			MClick(393,378)
			break
		}
		Sleep, 2000
		MClick(340,370)
	}
	if g_stage = 6
	{
		break
	}
}
