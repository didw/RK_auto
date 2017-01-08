
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
	Sleep, 5000
	WinFocus()
	ImageSearch, FoundX, FoundY, 130,570,180,620, *50 in_seconds.png
	if ErrorLevel = 0
	{
		WinFocus()
		MClick(130,620)
		MClick(130,620)
		Sleep, 5000
		WinFocus()
		Loop 60,
		{
			Sleep, 1000
			ImageSearch, FoundX, FoundY, 1175,595,1225,645, *50 guild_attack.png
			if ErrorLevel = 0
			{
				WinFocus()
				MClick(1190,610)
			}
		}
	}
	WinFocus()
	ImageSearch, FoundX, FoundY, 265,570,315,620, *50 in_seconds.png
	if ErrorLevel = 0
	{
		WinFocus()
		MClick(265,620)
		MClick(265,620)
		Sleep, 5000
		WinFocus()
		Loop 60,
		{
			Sleep, 1000
			ImageSearch, FoundX, FoundY, 1175,595,1225,645, *50 guild_attack.png
			if ErrorLevel = 0
			{
				WinFocus()
				MClick(1190,610)
			}
		}
	}
	WinFocus()
	ImageSearch, FoundX, FoundY, 410,570,460,620, *50 in_seconds.png
	if ErrorLevel = 0
	{
		WinFocus()
		MClick(410,620)
		MClick(410,620)
		Sleep, 5000
		WinFocus()
		Loop 60,
		{
			Sleep, 1000
			ImageSearch, FoundX, FoundY, 1175,595,1225,645, *50 guild_attack.png
			if ErrorLevel = 0
			{
				WinFocus()
				MClick(1190,610)
			}
		}
	}
	WinFocus()
	ImageSearch, FoundX, FoundY, 80,570,130,620, *50 in_battle.png
	if ErrorLevel = 0
	{
		WinFocus()
		MClick(130,620)
		MClick(130,620)
		Sleep, 5000
		WinFocus()
		Loop 60,
		{
			Sleep, 1000
			ImageSearch, FoundX, FoundY, 1175,595,1225,645, *50 guild_attack.png
			if ErrorLevel = 0
			{
				WinFocus()
				MClick(1190,610)
			}
		}
	}
	WinFocus()
	ImageSearch, FoundX, FoundY, 215,570,265,620, *50 in_battle.png
	if ErrorLevel = 0
	{
		WinFocus()
		MClick(265,620)
		MClick(265,620)
		Sleep, 5000
		WinFocus()
		Loop 60,
		{
			Sleep, 1000
			ImageSearch, FoundX, FoundY, 1175,595,1225,645, *50 guild_attack.png
			if ErrorLevel = 0
			{
				WinFocus()
				MClick(1190,610)
			}
		}
	}
	WinFocus()
	ImageSearch, FoundX, FoundY, 360,570,410,620, *50 in_battle.png
	if ErrorLevel = 0
	{
		WinFocus()
		MClick(410,620)
		MClick(410,620)
		Sleep, 5000
		WinFocus()
		Loop 60,
		{
			Sleep, 1000
			ImageSearch, FoundX, FoundY, 1175,595,1225,645, *50 guild_attack.png
			if ErrorLevel = 0
			{
				WinFocus()
				MClick(1190,610)
			}
		}
	}
	MClick(640,530)
}
