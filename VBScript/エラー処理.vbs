option explicit
dim test
test = "hello!"

'|
'|【On Error Resume Next】
'|【Err.Clear】
'|ここからエラーを無視する
'|Err.Clear は初期化
'|
on error resume next
err.clear
msgbox 2/0

'|
'|【if Err.Number <> 0 then】
'|【 ～処理～】
'|【 end if】
'|エラーの有無を判定する
'|エラーが何も発生していなければ Err.Number には0が入っている
'|
if err.number <> 0 then
 msgbox "エラーが発生しました"
end if
'|
'|【On Error Goto 0】
'|エラーを無視するのはここまで
'|
on error goto 0

on error resume next
err.clear
cint("文字列")

'|
'|【エラー番号：Err.Number】
'|【エラー内容：Err.Description】
'|エラー内容を取得する
'|
if err.number <> 0 then
 msgbox "エラー番号:" &err.number &chr(10) &"エラー内容:" &err.description
end if
on error goto 0