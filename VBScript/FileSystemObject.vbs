option explicit
on error resume next
err.clear
dim test, fs, check, renameFile, filePath
test = "test"

'|
'|＠FileSystemObjectを生成する（初期設定）
'|【set オブジェクト名 = createObject("scripting.fileSystemObject")】
'|
'|※CreateObjectは2種類ある。引数が微妙に違うらしい。
'|1.CreateObject関数…VBSに内蔵されている。
'|【Set A = CreateObject("引数")】
'|2.CreateObjectメソッド…WSHの機能を借りている。
'|【Set A = WScript.CreateObject("引数")】
'|
set fs = createObject("scripting.fileSystemObject")

'|
'|＠対象のファイルが存在するかチェックするオブジェクト
'|【変数名 = オブジェクト名.fileExists("パス")】
'|"自分がいまいるパス"＝".\"と記述する。カレントフォルダと呼ばれる。
'|
check = fs.fileExists(".\")
if check then
 msgbox "指定したファイルが存在します"
else
 msgbox "指定したファイルが存在しません"
end if

'|
'|＠FileSystemObjectを破棄する
'|【set オブジェクト名 = nothig】
'| Nothing を忘れると FileSystemObject のインスタンスが
'|メモリ上に残り続けるメモリリークという現象が
'|発生する可能性があります。
'|そうなるとファイルを開いたままの状態になり、
'|削除できなくなるなどの問題が起こります。
'|そのため、「エラー処理」の中にも記述すべき。
'|
set fs = nothing



'|
'|＠ファイルの拡張子を変更するサンプルコード
'|
set fs = createObject("scripting.fileSystemObject")

'|変更したいファイルのパス
filePath = "D:\game\自作プログラム\vbscript\test\FileSystemObject.vbs"

'|
'|＠ファイルをオブジェクトとして取得する
'|【Set 変数名 = オブジェクト名.GetFile("パス")】
'|
'|＠オブジェクトのプロパティを取得する
'|【オブジェクト名.Name】=オブジェクトの拡張子を含むファイル名
'|【オブジェクト名.Path】=オブジェクトのパス
'|
'|＠ファイル名を取得できる関数一覧
'|【変数名 = オブジェクト名.GetFileName("パス")】=拡張子を含むファイル名
'|【変数名 = オブジェクト名.GetBaseName("パス")】=ファイル名のみ
'|【変数名 = オブジェクト名.GetExtensionName("パス")】=拡張子のみ
'|
set renameFile = fs.getFile(filePath)
'|【ファイル名のプロパティ = 関数ファイル名のみ + 変更したい拡張子】
renameFile.Name = fs.getBaseName(filePath) &".txt"

set fs = nothing
if err.number <> 0 then
 set fs = nothing
 msgbox "No." &err.number &chr(10) &"Error: " &err.description
end if
on error goto 0
