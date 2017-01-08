
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
	if g_iter = 30
	{
		break
	}
	Loop,
	{
		Sleep, 3000
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
	;Sleep, 3000
	;MClick(1200,50)
	g_santa = 0
	Loop,
	{
		WinFocus()
		ImageSearch, FoundX, FoundY, 400,100, 600, 300, *50 santa.png	
		if ErrorLevel = 0
		{		
			if g_santa = 0
			{			
				g_santa = 1
				Sleep, 3000
			}
		}
		WinFocus()
		ImageSearch, FoundX, FoundY, 500, 0, 900, 200, *50 last.png
		if ErrorLevel = 0
		{			
			if g_santa = 0
			{	
				WinFocus()
				MClick(1240,70)
				MClick(1240,70)
				Sleep, 500
				MClick(750,370)
				Sleep, 500
				MClick(660,520)
				Sleep, 5000
				;stage
				;MClick(1100,420)	;1-9
				;MClick(970,300)	;1-10
				;MClick(1100,350)	;2-9
				;MClick(242,357)	;5-3
				;MClick(321,512)	;5-4
				;MClick(710,515)	;6-4
				;MClick(990,330)	;6-7
				MClick(620,350)	;6-9
				MClick(620,350)	;6-9
				;MClick(445,315)	;6-10
				;MClick(709,254)	;7-1
				
				
				Sleep, 3000
				MClick(1200,650)
				Sleep, 2000
				break
			}
			if g_santa = 1
			{				
				Loop,
				{
					Sleep, 2000
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
		}
		Sleep, 3000
		MClick(725,670)
	}
}
