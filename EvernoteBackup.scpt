-- PURPOSE: Export all notes in Evernote to an ENEX file so that
-- the notes can be backed up to an external drive or to the cloud

set yearOfDate to (year) of (current date)
set currentMonth to (month) of (current date)
set monthOfDate to ((currentMonth as integer) as string)
set dayOfDate to (day) of (current date)

set currentDate to (yearOfDate & "-" & monthOfDate & "-" & dayOfDate)

-- Change save_path to any other directory on your computer. By default this
-- script stores the .enex file in the same directory as the script.
set save_path to do shell script "pwd"

set filePath to save_path & "/" & currentDate & " - Evernote.enex"

with timeout of (30 * 60) seconds
	tell application "Evernote"
		-- Set date to 1990 so it finds all notes
		set matches to find notes "created:19900101"
		-- export to file set above
		export matches to filePath
	end tell
end timeout

-- Compress the file so that there is less to backup to the cloud
set exportedPath to POSIX path of filePath
do shell script "/usr/bin/gzip " & quoted form of exportedPath
