#Requires AutoHotkey v2.0
#include 'libs/FindText.ahk' ; Include the AHK library for additional functions

; ------------------------ UI ------------------------

; ------------------------Variables------------------------
global SelectedEnchant := "NotSelected" ; Default Value | DropDownList1


; -----------------------------------------------------




myGui := Gui("AlwaysOnTop")
myGui.SetFont("Bold cWhite")
myGui.BackColor := "0x000000"  ; Set background to black for contrast
myGui.Add("GroupBox", "x16 y8 w174 h58 cWhite", "CURRENCY")
myGui.SetFont("Bold cWhite")
DropDownList1 := myGui.Add("DropDownList", "x24 y32 w154", ["Coins", "Tickets"])
DropDownList1.OnEvent("Change", SELECT)

myGui.SetFont("Bold cWhite")
myGui.Add("GroupBox", "x16 y72 w173 h69 cWhite", "Hotkeys")
myGui.Add("Text", "x24 y88 w120 h23 +0x200 cWhite", "F1 - START")
myGui.Add("Text", "x24 y112 w120 h23 +0x200 cWhite", "F2 - STOP")
myGui.Add("GroupBox", "x216 y8 w217 h132 cWhite", "Logs")
Edit1 := myGui.Add("Edit", "x224 y24 w201 h107 +E0x20000 +Background cBlack")
myGui.OnEvent('Close', (*) => ExitApp())
myGui.Title := "mangoguards [Coin Farm]"
myGui.Show("w449 h226")

logmesssage(msg) 
{
    global Edit1 
    Edit1.Value := msg . "`n" . Edit1.Value
}


SELECT(*)
{
    global SelectedEnchant
     SelectedEnchant := DropDownList1.Text ; Get the selected value from the dropdown list
   
}


; ------------------------ Hotkeys ------------------------
F1::Start()
F2::ExitApp
; ------------------------ Functions ------------------------


Start()
{
    global SelectedEnchant
    if (SelectedEnchant = "Coins")
    {

        BetterClick(211,430) ; Opens Map
        logmesssage("waiting 5 seconds")
        Sleep(5000)
        loop 5 {
            BetterClick(1335, 285) ; Presses up arrow to go to the next map
            Sleep(500)
        }
        BetterClick(960, 1010) ; Presses Teleport button
        

        loop {
            BetterClick(211,430) ; Opens Map
            Sleep(5000)
            BetterClick(960, 1010) ; Presses Teleport button
            Sleep(5000) ; wait for teleport to finish
            logmesssage("Moving to coins")
            clickTimerFunc := () => BetterClick(960, 540)
            SetTimer(clickTimerFunc, 500)
            CoinsMove() ; Moves to the coins
            SetTimer(clickTimerFunc, 0)
            Sleep(1000) ; Brief pause after movement
            

        }
        
    }
    else if (SelectedEnchant = "Tickets")
    {
        logmesssage("Tickets selected")
        BetterClick(211,430) ; Opens Map
        logmesssage("waiting 5 seconds")
        Sleep(5000)
        loop 10 {
            BetterClick(1335, 285) ; Presses up arrow to go to the next map
            Sleep(500)
        }
        BetterClick(960, 1010) ; Presses Teleport button
        loop {
            BetterClick(211,430) ; Opens Map
            Sleep(5000)
            BetterClick(960, 1010) ; Presses Teleport button
            Sleep(5000) ; wait for teleport to finish
            logmesssage("Moving to tickets")
            
            ; Start a timer to click the middle of screen while moving
            clickTimerFunc := () => BetterClick(960, 540)
            SetTimer(clickTimerFunc, 500)
            
            TicketsMove() ; Moves to the tickets
            
            ; Stop the timer after movement is complete
            SetTimer(clickTimerFunc, 0)
            Sleep(1000) ; Brief pause after movement
        }
    }
    
}


BetterClick(x, y) {
    MouseMove(x, y)
    Sleep(10)
    MouseMove(1, 0, , "R")
    Sleep(20)
    MouseClick("Left", -1, 0, , , , "R")
    Sleep(50)
}
TicketsMove() {
    ; Walking Movement Script Generated by AHK

Sleep(1016)
Send("{a down}")
Sleep(359)
Send("{a up}")
Sleep(735)
Send("{a down}")
Sleep(359)
Send("{a up}")
Sleep(594)
Send("{w down}")
Sleep(344)
Send("{w up}")
Sleep(281)
Send("{a down}")
Sleep(172)
Send("{a up}")
Sleep(281)
Send("{s down}")
Sleep(922)
Send("{s up}")
Sleep(390)
Send("{d down}")
Sleep(375)
Send("{d up}")
Sleep(204)
Send("{d down}")
Sleep(359)
Send("{d up}")
Sleep(234)
Send("{d down}")
Sleep(297)
Send("{d up}")
Sleep(375)
Send("{d down}")
Sleep(125)
Send("{d up}")
Sleep(250)
Send("{w down}")
Sleep(500)
Send("{w up}")
Sleep(47)
Send("{d down}")
Sleep(94)
Send("{d up}")
Sleep(297)
Send("{w down}")
Sleep(297)
Send("{w up}")
Sleep(62)
Send("{a down}")
Sleep(766)
Send("{a up}")
Sleep(109)
Send("{w down}")
Sleep(219)
Send("{w up}")
Sleep(172)
Send("{a down}")
Sleep(218)
Send("{a up}")
Sleep(32)
Send("{s down}")
Sleep(437)
Send("{s up}")
Sleep(156)
Send("{a down}")
Sleep(125)
Send("{a up}")
Sleep(235)
Send("{w down}")
Sleep(265)
Send("{d down}")
Sleep(188)
Send("{w up}")
Sleep(406)
Send("{d up}")
Sleep(172)
Send("{s down}")
Sleep(906)
Send("{s up}")
Sleep(110)
Send("{a down}")
Sleep(390)
Send("{a up}")
Sleep(360)
Send("{d down}")
Sleep(250)
Send("{d up}")
Sleep(375)
Send("{d down}")
Sleep(187)
Send("{d up}")
Sleep(250)
Send("{w down}")
Sleep(172)
Send("{w up}")
Sleep(172)
Send("{d down}")
Sleep(391)
Send("{d up}")
Sleep(156)
Send("{w down}")
Sleep(547)
Send("{w up}")
Sleep(156)
Send("{a down}")
Sleep(312)
Send("{a up}")
Sleep(79)
Send("{w down}")
Sleep(187)
Send("{w up}")
Sleep(63)
Send("{a down}")
Sleep(359)
Send("{a up}")
Sleep(62)
Send("{s down}")
Sleep(969)
Send("{s up}")
Sleep(110)
Send("{a down}")
Sleep(312)
Send("{a up}")
Sleep(141)
Send("{w down}")
Sleep(297)
Send("{w up}")
Sleep(109)
Send("{d down}")
Sleep(312)
Send("{d up}")
Sleep(63)
Send("{w down}")
Sleep(297)
Send("{w up}")
Sleep(125)
Send("{d down}")
Sleep(234)
Send("{d up}")
Sleep(94)
Send("{w down}")
Sleep(344)
Send("{w up}")
Sleep(62)
Send("{a down}")
Sleep(281)
Send("{a up}")
Sleep(47)
Send("{s down}")
Sleep(907)
Send("{s up}")
Sleep(109)
Send("{d down}")
Sleep(516)
Send("{d up}")
Sleep(93)
Send("{w down}")
Sleep(828)
Send("{w up}")
Sleep(47)
Send("{a down}")
Sleep(641)
Send("{a up}")
Sleep(31)
Send("{s down}")
Sleep(500)
Send("{s up}")
Sleep(63)
Send("{a down}")
Sleep(62)
Send("{s down}")
Send("{a up}")
Sleep(406)
Send("{s up}")
Sleep(250)
Send("{d down}")
Sleep(594)
Send("{d up}")
Sleep(63)
Send("{w down}")
Sleep(140)
Send("{w up}")
return

}


CoinsMove() {
   ; Walking Movement Script Generated by AHK

Sleep(1734)
Send("{w down}")
Sleep(156)
Send("{w up}")
Sleep(329)
Send("{w down}")
Sleep(203)
Send("{w up}")
Sleep(140)
Send("{w down}")
Sleep(938)
Send("{w up}")
Sleep(250)
Send("{w down}")
Sleep(1000)
Send("{w up}")
Sleep(578)
Send("{w down}")
Sleep(234)
Send("{w up}")
Sleep(985)
Send("{d down}")
Sleep(390)
Send("{d up}")
Sleep(422)
Send("{w down}")
Sleep(297)
Send("{w up}")
Sleep(797)
Send("{d down}")
Sleep(297)
Send("{d up}")
Sleep(422)
Send("{s down}")
Sleep(172)
Send("{s up}")
Sleep(718)
Send("{d down}")
Sleep(63)
Send("{s down}")
Sleep(62)
Send("{d up}")
Send("{s up}")
Sleep(16)
Send("{d down}")
Sleep(328)
Send("{d up}")
Sleep(328)
Send("{w down}")
Sleep(328)
Send("{w up}")
Sleep(282)
Send("{d down}")
Sleep(484)
Send("{d up}")
Sleep(156)
Send("{w down}")
Sleep(422)
Send("{w up}")
Sleep(219)
Send("{s down}")
Sleep(422)
Send("{s up}")
Sleep(406)
Send("{a down}")
Sleep(484)
Send("{a up}")
Sleep(188)
Send("{w down}")
Sleep(562)
Send("{w up}")
Sleep(63)
Send("{a down}")
Sleep(422)
Send("{a up}")
Sleep(140)
Send("{s down}")
Sleep(828)
Send("{s up}")
Sleep(125)
Send("{a down}")
Sleep(344)
Send("{a up}")
Sleep(125)
Send("{s down}")
Sleep(344)
Send("{s up}")
Sleep(234)
Send("{d down}")
Sleep(219)
Send("{d up}")
Sleep(234)
Send("{w down}")
Sleep(375)
Send("{w up}")
Sleep(79)
Send("{d down}")
Sleep(703)
Send("{d up}")
Sleep(109)
Send("{w down}")
Sleep(484)
Send("{w up}")
Sleep(32)
Send("{d down}")
Sleep(297)
Send("{d up}")
Sleep(62)
Send("{w down}")
Sleep(234)
Send("{w up}")
Sleep(79)
Send("{s down}")
Sleep(593)
Send("{s up}")
Sleep(219)
Send("{a down}")
Sleep(922)
Send("{a up}")
Sleep(94)
Send("{s down}")
Sleep(359)
Send("{s up}")
Sleep(156)
Send("{a down}")
Sleep(360)
Send("{a up}")
Sleep(125)
Send("{s down}")
Sleep(390)
Send("{s up}")
Sleep(141)
Send("{d down}")
Sleep(219)
Send("{d up}")
Sleep(156)
Send("{w down}")
Sleep(422)
Send("{w up}")
Sleep(47)
Send("{d down}")
Sleep(437)
Send("{d up}")
Sleep(31)
Send("{w down}")
Sleep(375)
Send("{w up}")
Sleep(16)
Send("{d down}")
Sleep(578)
Send("{d up}")

    
return

}