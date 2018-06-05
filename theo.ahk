; Media key shortcuts
^Right::Media_Next
return

^Left::Media_Prev
return

^Down::Media_Play_Pause
return


; disables narrator shortcut
#Enter::return


; shift+win+M = minimize all but current window
+#M::
   WinGet, id, list,,, Program Manager
   Loop, %id%
{
   this_ID := id%A_Index%
   WinGetTitle, active_title, A
   WinGetTitle, title, ahk_id %this_ID%
   If title = %active_title%
   Continue
   WinMinimize, %title%
}
return


; win+N minimize current window
#N::WinMinimize, A
