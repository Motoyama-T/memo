option explicit
dim x
set x = WScript.CreateObject("WScript.Shell")

x.Run "chrome.exe --incognito"
x.Run "cmd.exe /c echo 日本語| clip"

x.AppActivate "新しいタブ"
WScript.Sleep 1000
x.SendKeys "^V"
x.SendKeys "{ENTER}"

set x = Nothing