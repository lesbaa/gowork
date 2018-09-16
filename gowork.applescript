on run argv
  set projectDir to item 1 of argv
  tell app "iTerm2"
    create window with default profile
    tell current session of current window 
      split horizontally with default profile
    end tell
    repeat with aSession in sessions of current tab of current window
      tell aSession
        select
        write text "cd " & projectDir
      end tell
    end repeat
  end tell
end run
