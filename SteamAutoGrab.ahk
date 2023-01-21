#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Loop
{
    Run, microsoft-edge:https://steamdb.info/freepackages/
    Sleep, 10000
    WinWait, ahk_exe MicrosoftEdge.exe
    WinActivate, ahk_exe MicrosoftEdge.exe
    WinMaximize, ahk_exe MicrosoftEdge.exe
    ControlClick, , ahk_exe MicrosoftEdge.exe, , , , , Activate these packages now
    While (WinExist("ahk_exe MicrosoftEdge.exe"))
    {
        Sleep, 1000
        IfWinNotActive, ahk_exe MicrosoftEdge.exe
            continue
        WinGetText, OutputVar, ahk_exe MicrosoftEdge.exe
        if (OutputVar != "")
        {
            if (InStr(OutputVar, "Rate limited by Steam"))
            {
                break
            }
        }
    }
    WinClose, ahk_exe MicrosoftEdge.exe
    Sleep, 3600000
}
