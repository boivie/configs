#!/usr/bin/osascript
tell application "System Events"
	tell dock preferences
		set properties to {screen edge:bottom, autohide:false}
	end tell
end tell
