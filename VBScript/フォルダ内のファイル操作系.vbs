Option Explicit
Main

'|
'|メイン関数
'|
Sub Main
 msgbox Test
End Sub

'|
'|フォルダ内のファイル一覧を取得する関数
'|
Function TEST
Dim A,B,x
'|
'|①FileSystemObjectを生成
'|②Folderオブジェクトを生成
'|※まとめて書くと変数を1個省略できる。
'|【B = CreateObject("scripting.fileSystemObject").GetFolder("パス")】
'|
Set A = CreateObject("Scripting.FileSystemObject")
Set B = A.GetFolder("D:\MyProgram\vbscript")
'|
'|Filesプロパティを取得し、
'|Each文とNameプロパティでファイル名だけをひとまとめ。
'|
For Each x in B.Files
 TEST = TEST &vbCrLf &x.Name
Next
'|
'|使い終わったSetは消す
'|
Set B = Nothing
Set A = Nothing
End Function
