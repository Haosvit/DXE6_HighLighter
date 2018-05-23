#Persistent
#IfWinActive ahk_exe bds.exe

;const
SEARCH_EDITTEXT_APPEAR_DELAY = 0

~LButton & RButton::
  DoHighLightSelectedText()
return

DoHighLightSelectedText()
{
  ; Trigger increasing search 
  Send {Shift Up}{LButton}^e
  ; Sleep if any delays when showing search edit text box
  Sleep %SEARCH_EDITTEXT_APPEAR_DELAY%
  ; Back to selected text
  Send {enter}+{F3 2}  
  return
}