option explicit
dim x
'|
'|※CreateObjectは2種類ある。引数が微妙に違うらしい。
'|①CreateObject関数…VBSに内蔵されている。
'|【Set A = CreateObject("引数")】
'|②CreateObjectメソッド…WSHの機能を借りている。
'|【Set A = WScript.CreateObject("引数")】
'|VBSではどっちの記述でも起動するが、エクセルVBAでは①のみ起動した。
'|
set x = WScript.CreateObject("WScript.Shell")

x.Run ("chrome.exe --incognito ""https://www.youtube.com/")
WScript.Sleep 1000

x.AppActivate "YouTube"
x.SendKeys "/"
x.SendKeys "test"
x.SendKeys "{ENTER}"

set x = Nothing
