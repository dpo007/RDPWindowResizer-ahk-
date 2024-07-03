/*
This script manages the position and size of windows with a specified title using AutoHotkey (AHK).

Functionality:
1. If there is only one window matching the specified title, the script centers it on the current monitor with the desired width and height.
2. If there are multiple windows matching the specified title, the script arranges them starting from specified coordinates (start_x, start_y) with an offset for each subsequent window.

Variables:
- target_title: The (partial) title of the windows to be managed.
- window_width, window_height: The desired width and height for the windows.
- start_x, start_y: The initial coordinates for positioning the windows.
- offset_x, offset_y: The offset for positioning each subsequent window when there are multiple matching windows.
*/

target_title := "Remote Desktop"
window_width := 1920
window_height := 1200
start_x := 95
start_y := 70
offset_x := 50
offset_y := 50

WinGet, window_list, List
current_x := start_x
current_y := start_y
match_count := 0
single_window_id := ""

Loop, %window_list%
{
    this_window := window_list%A_Index%
    WinGetTitle, window_title, ahk_id %this_window%
    if (InStr(window_title, target_title))
    {
        match_count++
        single_window_id := this_window
    }
}

if (match_count == 1)
{
    ; Center the single matching window on the current monitor
    SysGet, MonitorWorkArea, MonitorWorkArea
    center_x := (MonitorWorkAreaRight + MonitorWorkAreaLeft) // 2 - (window_width // 2)
    center_y := (MonitorWorkAreaBottom + MonitorWorkAreaTop) // 2 - (window_height // 2)
    WinMove, ahk_id %single_window_id%, , center_x, center_y, window_width, window_height
}
else if (match_count > 1)
{
    Loop, %window_list%
    {
        this_window := window_list%A_Index%
        WinGetTitle, window_title, ahk_id %this_window%
        if (InStr(window_title, target_title))
        {
            ; Move the matching windows to the current coordinates
            WinMove, ahk_id %this_window%, , current_x, current_y, window_width, window_height

            ; Update coordinates for the next matching window
            current_x := current_x + offset_x
            current_y := current_y + offset_y
        }
    }
}
