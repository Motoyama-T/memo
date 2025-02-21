Option Explicit
Main
'|
'|chrome起動＞設定＞Chromeプロファイルをカスタマイズ＞デスクトップにショートカットを作成する
'|特定のアカウントでログインした状態のChromeブラウザを開ける
'|ショートカットのパスは拡張子が見えないけど【ショートカット名.lnk】なので注意。
'|※ファイル名に「日本語」がある場合、文字コードがANSIじゃないと動作しないので注意。
'|※ファイル名に「空白」がある場合、囲むときの記述は「""~""」とする。
'|
Sub Main
	Dim A
	Set A = CreateObject("WScript.Shell")

'|パターン①
'|　アカウント1にログインしたChromeをシークレットモードで開く
	A.Run("""D:\MyProgram\vbscript\shortcut\アカウント1 - Chrome.lnk"" --incognito")

'|パターン②
'|　アカウント2にログインしたChromeを開く
	A.Run("""D:\MyProgram\vbscript\shortcut\アカウント2 - Chrome.lnk""")

	Set A = Nothing
End Sub
