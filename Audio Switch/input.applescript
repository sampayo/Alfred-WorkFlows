on alfred_script(q)
tell application "System Preferences"
	reveal anchor "input" of pane id "com.apple.preference.sound"
end tell

tell application "System Events" to tell process "System Preferences"
	repeat with i from 1 to the count of rows of table 1 of scroll area 1 of tab group 1 of window 1
		if exists (text field 1 of row i of table 1 of scroll area 1 of tab group 1 of window 1) then
			set deviceselected to the value of text field 1 of row i of table 1 of scroll area 1 of tab group 1 of window 1
			if deviceselected is equal to q then
				set selected of row i of table 1 of scroll area 1 of tab group 1 of window 1 to true
			end if
		end if
	end repeat
end tell

tell application "System Preferences"
	quit
end tell

set theMessage to q
end alfred_script