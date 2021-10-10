use AppleScript version "2.4"
use scripting additions
use framework "Foundation"
use framework "AppKit"

set cliClickPath to "/opt/homebrew/Cellar/cliclick/5.0.1/bin/cliclick"
set limitY to 890
set moveToY to 10
set noLimitX to 1200


repeat while true
	set pos to current application's NSEvent's mouseLocation()
	
	if y of pos > limitY then
		if x of pos < noLimitX then
			set intX to (x of pos) div 1
			do shell script cliClickPath & " m:+0," & moveToY
		end if
	end if
	
end repeat
