#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; ñÑ
!n::Send !{Asc 164}
!+n::Send !{Asc 165}

; vowels
!a::Send !{Asc 160}
!e::Send !{Asc 130}
!i::Send !{Asc 161}
!o::Send !{Asc 162}
!u::Send !{Asc 163}

!+a::Send !{Asc 0193}
!+e::Send !{Asc 0201}
!+i::Send !{Asc 0205}
!+o::Send !{Asc 0211}
!+u::Send !{Asc 0218}

; emdash
!-::Send !{Asc 0151}

; question and exclamation
!?::Send !{Asc 0191}
!!::Send !{Asc 0161}