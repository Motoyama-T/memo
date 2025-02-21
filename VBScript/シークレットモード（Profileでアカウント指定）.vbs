Option Explicit
Main
'|
'|【 --incognito】…開くときシークレットになる。
'|【 --profile-directory="アカウントのフォルダ名"】…開くときのアカウントを指定する。
'|※ファイル名に「空白」がある場合、囲むときの記述は「""~""」とする。
'|※「"~"」で囲んでいるなかで、さらに「"~"」で囲む場所があるときの記述も「""~""」とする。
'|（例）%appdata%でフォルダ「profile1」に割り当てられているアカウントを指定するなら、
'|【A.Run("chrome.exe  --profile-directory=""profile 1"""】と記述する。
'|
Sub Main
	Dim A
	Set A = CreateObject("WScript.Shell")
	A.Run("chrome.exe --profile-directory=""Default"" --incognito")
	Set A = Nothing
End Sub
