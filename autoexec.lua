bind("shift+F9","Test()")

function Test()
	run = Cpu_ControlLocalPlayer()
	run = setsimrate(8)
	run = fog_toggle()
end

bind("shift+F1","setsimrate(0)")
bind("shift+F2","setsimrate(2)")
bind("shift+F3","setsimrate(5)")
bind("shift+F4","setsimrate(8)")
bind("shift+F5","setsimrate(20)")
bind("shift+F6","setsimrate(60)")

bind("shift+F7", "toggle_screenmode()")
screenmode = 0
function toggle_screenmode()
	if screenmode == 0 then
		taskbar_hide()
		message_hide()
		ingame_select_ui_toggle()
		ingame_stats_toggle()
		screenmode = 1
	else
		taskbar_show()
		message_show()
		ingame_select_ui_toggle()
		ingame_stats_toggle()
		screenmode = 0
	end
end

bind("shift+F8","toggle_FOW()")
fowmode = 0
function toggle_FOW()
	if fowmode == 0 then
		FOW_RevealAll()
		fowmode = 1
	else
		FOW_Reset()
		fowmode = 0
	end
end
