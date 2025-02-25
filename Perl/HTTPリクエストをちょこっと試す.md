【参考】curlコマンドでちょこっとHTTPリクエストを試すだけの記事  
【URL】https://qiita.com/ist-a-k/items/34b408336f4ec372b139  
# curlコマンドとは？
インターネット上のデータを取得したり送信したりするためのコマンド。例えば、ウェブサイトから情報を取得したり、APIにデータを送信したりすることができる。  
Windowsの場合、Powershellでは
```powershell
curl.exe [option] [URL]
```
コマンドプロンプトでは  
```bash
curl [option] [URL]
```
で実行できる。最近の端末には最初から入っていて、すぐにcurlコマンドを使用できる状態のはずだが、入っていない場合はインストールが必要。とりあえず以下のコマンドを実行して判断するとよい。  
```bash
curl --version
```
  
■webページの取得  
指定したURL（ここではhttps://example.com ）の内容を取得して表示する。  
```bash
curl https://example.com
```
■ファイルのダウンロード  
-0オプションを使うと、指定したURLからファイルをダウンロードして保存する。  
```bash
curl -O https://example.com/file.txt
```
■データの送信  
POSTリクエストを使ってデータ（ここではname=John&age=30）を指定したURLに送信する。  
```bash
curl -X POST -d "name=John&age=30" https://example.com/api
```
# どんな動作するのか、ちょこっと試したいとき  
このサイト（https://httpbin.org/ ）がおすすめ。  
HTTPリクエストをすると、いろいろなレスポンスを返してくれるWebサイト。リクエストの書き方が正しいか、きちんとHTTP通信を行えるものなのかを確認できる。  
![image](https://github.com/user-attachments/assets/fb2ffa2b-40e0-40c3-af9f-d0516f572989)  
  
# curlのオプションについて  
  
■メソッド変更  
何もオプションをつけない場合、基本GETメソッドとなるが、明示的にリクエストメソッドを指定したい場合は-X {リクエストメソッド} “URL”で変更することができる。  
  
**GETメソッド**
```bash
curl -X GET "http://httpbin.org/get"
```
```bash
#出力結果
  {  
    "args": {},   
    "headers": {  
      "Accept": "*/*",   
      "Host": "httpbin.org",   
      "User-Agent": "curl/7.64.1",   
      "X-Amzn-Trace-Id": "Root=12345678901234567890"  
    },   
    "origin": "xxx.xxx.xxx.xxx",   
    "url": "http://httpbin.org/get"  
  }  
```
  
**POSTメソッド**
```bash
curl -X POST "http://httpbin.org/post"
```
```bash
#出力結果
  {
    "args": {}, 
    "data": "", 
    "files": {}, 
    "form": {}, 
    "headers": {
      "Accept": "*/*", 
      "Host": "httpbin.org", 
      "User-Agent": "curl/7.64.1", 
      "X-Amzn-Trace-Id": "Root=12345678901234567890"
    }, 
    "json": null, 
    "origin": "xxx.xxx.xxx.xxx", 
    "url": "http://httpbin.org/post"
  }
```
  
■ヘッダ変更  
-H “{パラメータ}”: “{値}” をつけることで、HTTPヘッダを追加することができる。  
```bash
curl -X POST "http://httpbin.org/post" -H "accept: application/json"
```
```bash
#出力結果
  {
    "args": {}, 
    "data": "", 
    "files": {}, 
    "form": {}, 
    "headers": {
      "Accept": "application/json", 
      "Host": "httpbin.org", 
      "User-Agent": "curl/7.64.1", 
      "X-Amzn-Trace-Id": "Root=12345678901234567890"
    }, 
    "json": null, 
    "origin": "xxx.xxx.xxx.xxx", 
    "url": "http://httpbin.org/post"
  }
```
  
■コンテンツ変更  
HTTPヘッダに"content-type: application/json"を追加し、POSTメソッドに-dオプションを付与することで、POSTメソッドでJSON形式のデータをリクエストすることができる。  
```bash
curl -H "content-type: application/json" -X POST -d'{"asa_gohan":"misosiru", "oyatsu":"karl"}' http://httpbin.org/post
```
```bash
#出力結果
  {
    "args": {}, 
    "data": "{\"asa_gohan\":\"misosiru\", \"oyatsu\":\"karl\"}", 
    "files": {}, 
    "form": {}, 
    "headers": {
      "Accept": "*/*", 
      "Content-Length": "41", 
      "Content-Type": "application/json", 
      "Host": "httpbin.org", 
      "User-Agent": "curl/7.64.1", 
      "X-Amzn-Trace-Id": "Root=12345678901234567890"
    }, 
    "json": {
      "asa_gohan": "misosiru", 
      "oyatsu": "karl"
    }, 
    "origin": "xxx.xxx.xxx.xxx", 
    "url": "http://httpbin.org/post"
  }
```
