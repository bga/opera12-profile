caRootDir=%1%

lastClipboardAll := clipboardAll
clipboard := caRootDir

caRootDir_cersCount := 2

MsgBox Please open opera' pererenes > Security > Manage certificates > Authoritories and focus "Import..."

SetKeyDelay, 300
WinActivate ahk_class OperaWindowClass


Loop, %caRootDir%\*.crt, , 1  ; Recurse into subfolders. 
{
  fileName := A_LoopFileFullPath
  Loop, 2 
  {
  ; MsgBox, %fileName%
  Send { Enter }
  
  ; clipboard := fileName
  ; ClipWait, 0.01
  ; Send ^v
  ControlSetText, Edit1, %fileName%, A
  ; SendInput {Raw}%fileName%
  
  Send { Enter }
  Sleep, 1000
  Send { Tab }{ Tab }{ Enter }
  Sleep, 1000
  }
}

clipboard := lastClipboardAll 
