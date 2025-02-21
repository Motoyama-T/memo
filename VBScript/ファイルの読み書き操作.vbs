''‰Šúİ’è'''''''''''''''''''''''''''''''''''''''''''''''''''
option explicit
dim test, fs, path, chat, draw
on error resume next
err.clear
path = "D:\game\©ìƒvƒƒOƒ‰ƒ€\vbscript\test\chat.txt"
set fs = createObject("scripting.fileSystemObject")
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
wscript.sleep 1000
set chat = fs.createTextFile("chat.txt", true)
chat.writeLine("test")
chat.close

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
set fs = nothing
if err.number <> 0 then
 set fs = nothing
 msgbox "error"&vbCrLf &err.number&vbCrLf &err.description
end if
on error goto 0
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''