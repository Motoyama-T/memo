set w = WScript

'IEのオブジェクトを作り、画面の設定をして表示
set ie = CreateObject("InternetExplorer.Application")

ie.Width = 300
ie.Height = 150
ie.ToolBar = false
ie.StatusBar = false
ie.Resizable = true
ie.Visible = true
ie.Navigate "about:blank"

do while ie.Busy
 w.sleep 100
loop

'ユーザIDとパスワードの入力ボックスとボタンを表示
html = ""_
+"<form>"_
+" <input type=""hidden""name=""CLICKED""value=""false""/>"_
+" User ID:<input type=""text""name=""USERID""/><br/>"_
+" Password:<input type=""password""name=""PASSWD""/><br/>"_
+" <input type=""button"""_
+"  onClick = ""getElementsByName('CLICKED')(0).value = 'true';"""_
+"  value=""OK""/>"_
+"</form>"_

ie.Document.Body.InnerHtml = html
ie.Document.Title = "VBScript GUI test."

'ボタンがクリックされるまで待つ
on error resume next

function is_clicked(ie)
 is_clicked = ie.Document.GetElementsByName("CLICKED")(0).value <> "false"
end function

do while ie.Busy or not is_clicked(ie)
 if Err.Number <> 0 then exit do
 w.sleep 100
loop

'入力されたユーザ名とパスワードを表示
if Err.Number = 0 then
 userid = ie.Document.getElementsByName("USERID")(0).value
 passwd = ie.Document.getElementsByName("PASSWD")(0).value
 ie.Quit

 w.echo "Your input userid and password" + vbcrlf + vbcrlf _
  + "userid: " + userid + vbcrlf _
  + "passwd: " + passwd
end if
