#!/usr/bin/osascript
tell application "System Events"
	tell dock preferences
		set properties to {screen edge:left, autohide:true}
	end tell
end tell
