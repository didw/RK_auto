
SetTitleMatchMode, 2
WinFocus()
{		
    WinActivate, Nox1-Copy
    WinWaitActive, Nox1-Copy
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
	if stage = 1
	{
		x = 249
		y = 173
	}
	if stage = 2
	{
		x = 117
		y = 259
	}
	if stage = 3
	{
		x = 313
		y = 319
	}
	if stage = 4
	{
		x = 492
		y = 242
	}
	if stage = 5
	{
		x = 363
		y = 203
	}
	if stage = 6
	{
		x = 133
		y = 270
	}
	if stage = 7
	{
		x = 298
		y = 287
	}
	if stage = 8
	{
		x = 517
		y = 245
	}
	if stage = 9
	{
		x = 367
		y = 205
	}
	if stage = 10
	{
		x = 217
		y = 186
	}
	if stage = 11
	{
		x = 383
		y = 155
	}
	if stage = 12
	{
		x = 500
		y = 200
	}
	if stage = 13
	{
		x = 350
		y = 300
	}
	if stage = 14
	{
		x = 130
		y = 270
	}
	if stage = 15
	{
		x = 230
		y = 190
	}
	MClick(x,y)
}

Loop,
{
	if g_iter = 3
	{
		g_iter = 0
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
	g_item = 0
	Loop,
	{
		WinFocus()
		ImageSearch, FoundX, FoundY, 960,45,1010,95, *50 item.png
		if ErrorLevel = 0
		{		
			g_item = 1
		}
		WinFocus()
		ImageSearch, FoundX, FoundY, 200, 30, 400, 80, *50 last.png
		if ErrorLevel = 0
		{
			Loop 25,
			{
				Sleep, 50
				WinFocus()
				ImageSearch, FoundX, FoundY, 960,45,1010,95, *50 item.png
				if ErrorLevel = 0
				{
					g_item = 1
				}
			}
			if g_item = 0
			{
				Loop 100,
				{
					Sleep, 100
					WinFocus()
					MClick(622,59)
					ImageSearch, FoundX, FoundY, 360, 210, 410, 260, *50 end_battle.png
					if ErrorLevel = 0
					{
						break
					}
				}
				Sleep, 500
				MClick(382,231)
				Sleep, 500
				MClick(325,290)
				Sleep, 4000
				;stage
				MCliskStage(g_stage)
				
				Sleep, 2000
				MClick(626,371)
				Sleep, 1000
				break
			}
			if (g_item = 1)
			{
				g_iter := g_iter + 1
				Loop,
				{
					Sleep, 1000
					WinFocus()
					ImageSearch, FoundX, FoundY, 370, 345, 420, 395, *50 end.png
					if ErrorLevel = 0
					{
						if g_iter = 3
						{
							Sleep, 2000
							WinFocus()
							MClick(490,378)
							g_stage := g_stage + 1
							break
						}
						Sleep, 2000
						WinFocus()
						MClick(393,378)
						MClick(393,378)
						break
					}
					ImageSearch, FoundX, FoundY, 365, 345, 515, 395, *50 end2.png
					if ErrorLevel = 0
					{
						g_iter := g_iter - 1
						Sleep, 2000
						WinFocus()
						MClick(490,378)
						break
					}
					WinFocus()
					MClick(290,320)
				}
				break				
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
	if g_stage = 16
	{
		break
	}
}
