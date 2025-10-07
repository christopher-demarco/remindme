on run argv
	-- Parse arguments: reminder text, priority, flagged
	set reminderName to item 1 of argv
	set reminderPriority to (item 2 of argv) as integer
	set reminderFlagged to (item 3 of argv) as boolean
	
	tell application "Reminders"
		-- Create a new reminder in the default list
		set newReminder to make new reminder with properties {name:reminderName, priority:reminderPriority, flagged:reminderFlagged}
		
		-- Optional: Set a due date
		-- set due date of newReminder to (current date) + (1 * days) -- Due tomorrow
		
		-- Optional: Add to a specific list
		-- tell list "Shopping"
		-- 	make new reminder with properties {name:reminderName, priority:reminderPriority, flagged:reminderFlagged}
		-- end tell
	end tell
end run
