'コメントアウト'''''''''''''''''''''''''''''''''''''''
'シングルクォーテーションマーク(')を文頭に置く
''''''''''''''''''''''''''''''''''''''''''''''''''''''
'
'初期設定'''''''''''''''''''''''''''''''''''''''''''''
'変数の宣言を強制する
Option Explicit
'
'変数を宣言する【Dim 変数名】
Dim x
x = "Hello,world!"
'｜よく使う変数のデータ型一覧
'｜・String型…文字列
'｜・Long型…整数の数値(Int型より範囲が広い)
'｜・Boolean型…True/False
'｜・Variant型…すべてのデータ
'｜
'｜※ただし、VBScriptではデータ型を宣言できない
'｜(Variant型のみが使用されている)
'｜
'｜※Variant型のデメリット
'｜1.動作が少し重くなる
'｜2.誤作動が起きやすい
'
'内部処理でどのデータ型を使うのかは指定できる
'｜・CStr関数[CStr(変数名)]…String型
'｜・CLng関数[CLng(変数名)]…Long型
'｜・CBool関数[CBool(変数名)]…Boolean型
'｜
'｜※その他データ型関連
'｜・IsEmpty関数…引数が("")か調べる
'｜・IsNull関数…引数が無効なデータ(Null)か調べる
'｜・TypeName関数…引数のデータ型を文字列で返す
'｜・VarType関数…引数のデータ型を数値で返す
'｜・IsNumeric関数…引数が数値なのか調べる
'｜・IsArray関数…引数が配列なのか調べる
''''''''''''''''''''''''''''''''''''''''''''''''''''''
'
'出力する'''''''''''''''''''''''''''''''''''''''''''''
Msgbox x,1,"タイトル"
'【MsgBox "文字列" ,buttons ,title】
'
'各引数について
'・buttons
'｜表示されるボタンの種類と個数、
'｜標準ボタン、ボックスがモーダルかどうかなど、
'｜それらを表す値の合計値を示す数式を指定する
'｜
'｜値
'｜ 0:[OK]ボタンのみを表示
'｜ 1:[OK][キャンセル]ボタンを表示
'｜ 2:[中止][再試行][無視]の3つのボタンを表示
'｜ 3:[はい][いいえ][キャンセル]の3つのボタンを表示
'｜ 4:[はい][いいえ]ボタンを表示
'｜ 5:[再試行][キャンセル]ボタンを表示
'｜16:警告メッセージアイコンを表示
'｜32:問い合わせメッセージアイコンを表示
'｜48:注意メッセージアイコンを表示
'｜64:情報メッセージアイコンを表示
'
'・title
'｜ボックスのタイトルバーに表示する文字列を
'｜示す文字列式を指定する