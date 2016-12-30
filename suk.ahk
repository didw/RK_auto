
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

g_iter = 2
g_stage = 3

MCliskStage(stage)
{
	if stage = 0
	{
		x = 534
		y = 292
	}
	if stage = 1
	{
		x = 280
		y = 461
	}
	if stage = 2
	{
		x = 650
		y = 575
	}
	if stage = 3
	{
		x = 995
		y = 430
	}
	if stage = 4
	{
		x = 757
		y = 345
	}
	if stage = 5
	{
		x = 316
		y = 477
	}
	if stage = 6
	{
		x = 632
		y = 509
	}
	if stage = 7
	{
		x = 1037
		y = 435
	}
	if stage = 8
	{
		x = 762
		y = 348
	}
	if stage = 9
	{
		x = 470
		y = 319
	}
	if stage = 10
	{
		x = 796
		y = 259
	}
	if stage = 11
	{
		x = 1000
		y = 365
	}
	if stage = 12
	{
		x = 727
		y = 546
	}
	if stage = 13
	{
		x = 300
		y = 480
	}
	if stage = 14
	{
		x = 501
		y = 325
	}
	if stage = 15
	{
		x = 830
		y = 300
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
			ImageSearch, FoundX, FoundY, 1200,650, 1270, 700, *50 prepare.png
			if ErrorLevel = 0
			{
				WinFocus()
				MClick(1200,650)
				break
			}
		}
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
		ImageSearch, FoundX, FoundY, 500, 0, 900, 200, *50 last.png
		if ErrorLevel = 0
		{
			Loop 6,
			{
				Sleep, 500
				WinFocus()
				ImageSearch, FoundX, FoundY, 960,45,1010,95, *50 item.png
				if ErrorLevel = 0
				{
					g_item = 1
				}
			}
			if g_item = 0
			{
				Loop,
				{
					WinFocus()
					MClick(1240,70)
					ImageSearch, FoundX, FoundY, 700, 300, 900, 500, *50 end_battle.png
					if ErrorLevel = 0
					{
						break
					}
				}
				Sleep, 500
				MClick(750,370)
				Sleep, 500
				MClick(660,520)
				Sleep, 4000
				;stage
				MCliskStage(g_stage)
				
				Sleep, 2000
				MClick(1200,650)
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
					ImageSearch, FoundX, FoundY, 700, 630, 900, 700, *50 end.png
					if ErrorLevel = 0
					{
						if g_iter = 3
						{
							Sleep, 2000
							WinFocus()
							MClick(1000,680)
							g_stage := g_stage + 1
							break
						}
						Sleep, 2000
						WinFocus()
						MClick(800,680)
						MClick(800,680)
						break
					}
					ImageSearch, FoundX, FoundY, 900, 630, 1100, 700, *50 end2.png
					if ErrorLevel = 0
					{
						g_iter := g_iter - 1
						Sleep, 2000
						WinFocus()
						MClick(1000,680)
						break
					}
					WinFocus()
					MClick(600,600)
				}
				break				
			}
		}
		Sleep, 2000
		if g_item = 1
		{
			MClick(720,660)
		}
		else
		{
			MClick(725,670)
		}
	}
	if g_stage = 16
	{
		break
	}
}
