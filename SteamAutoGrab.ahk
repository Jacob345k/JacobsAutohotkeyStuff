#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Loop
{
    Run, microsoft-edge:https://steamdb.info/freepackages/
    Sleep, 10000
    Click, x300 y300
    Sleep, 30000
    WinClose, ahk_exe MicrosoftEdge.exe
    Sleep, 3600000
}
