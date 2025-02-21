# HTTPとは
Hyper Text Transfer Protocolの略。Webページを表示するため通信するときの規格。  
インストール不要なWebアプリを実現するには、  
Webページを見たい側（クライアント、ブラウザ、HTTTPリクエストを送る側）と  
Webページを見せる側（サーバー、Webアプリ、HTTPレスポンスを送る側）との間で通信する必要がある。  
そのとき、好き勝手にデータを送ると破綻するからこういう構造で送ろうねという決まり事に従って通信する。  
  
# HTTPでやりとりするデータの構造を図を使って説明してみた
【引用元】  
https://qiita.com/nomikazu_x/items/ce67742f80f993b05d1f  
https://qiita.com/T_unity/items/8e604909aec10b8074e5  
https://satoriku.com/request-method/  
https://www.seohacks.net/blog/1147/  
  
**■HTTPリクエストが送信されるタイミング**  
・ブラウザのアドレスバーに何らかのURLを入力した際  
・Webページ上のリンクをクリックした際  
・フォームで何らかの値を入力し、submitした際  
　...など。  
  
**■HTTPレスポンスが送信されるタイミング**  
基本的に1つのHTTPリクエストに対して1つのHTTPレスポンスを返す。  
![image](https://github.com/user-attachments/assets/d575c66b-e5f8-4975-9660-ec317cc8a0c7)  
  
**■HTTPリクエスト**  
![image](https://github.com/user-attachments/assets/4cc204f6-cfa6-4085-8fd6-654f06401b3a)  
①リクエスト行  
　サーバーに対してどのような処理を依頼するのかを伝える情報が含まれている。  
②HTTPヘッダー  
　ブラウザの種類や、対応しているデータのタイプ、データの圧縮方法、言語などの情報を伝える。  
③空白行  
　1行あけることでヘッダーの終わりを伝える。  
④HTTPボディ  
　POSTメソッドでサーバーにデータを送るために使われる。空の場合もある。  
  
 **■HTTPレスポンス**  
 ![image](https://github.com/user-attachments/assets/d22f180e-a032-4c49-a666-d7e9907b6804)  
①ステータス行  
　ブラウザにサーバー内での処理の結果を伝える。  
②HTTPヘッダー  
　サーバーのソフトウェア情報や、返信するデータのタイプ、データの圧縮方法などの情報を伝える。  
③空白行  
　1行あけることでヘッダーの終わりを伝える。  
④HTTPボディ  
　HTMLや画像などのデータを格納する場所。  
  
# HTTPメソッド  
HTTPリクエストの1行目1番始めに付くもの。依頼の種類を表す。よく使うのは以下の通り。  
|HTTPメソッド名|説明|嚙み砕いた意味|
|---|:--|:--|
|GET|指定したパス(URL)にあるリソースの要求|ここのファイルちょうだい|
|POST|指定したパス(URL)へリソースを送信|このデータどうぞ|
|PUT|指定したパス(URL)にあるリソースの更新|新しいファイルどうぞ|
|DELETE|指定したパス(URL)にあるリソースの削除|ここのファイル削除して|
  
**■GETとPOSTの違い**  
入力内容が見えてしまうのがGET、隠せるのがPOST。  
![image](https://github.com/user-attachments/assets/6ffd3aec-d602-442d-87b5-a8d556f817be)  
  
# ステータスコード  
HTTPレスポンスの1行目2番目に付くもの。応答の種類を表す。何番台かで大まかに意味が決まっている。  
|ステータスコード|説明|
|---|:--|
|100番台|処理中であると通知している|
|200番台|正常に成功したことを通知している|
|300番台|リダイレクト（追加の処理）が必要だと通知している|
|400番台|クライアント側のエラーを通知している|
|500番台|サーバー側のエラーを通知している|

よく使うのは以下の通り。  
|詳細|表示|意味|
|---|:--|:--|
|200|OK|リクエストが成功し、サーバーがリクエストされたリソースを返した|
|201|Created|リクエストが成功し、新しいリソースが作成された|
|204|No Content|リクエストは成功したが、返すコンテンツがない|
|301|Moved Permanently|リクエストされたリソースが恒久的に新しいURLに移動した|
|302|Found|リクエストされたリソースが一時的に別のURLにある|
|400|Bad Request|リクエストが不正であり、サーバーが理解できない|
|403|Forbidden|リクエストされたリソースへのアクセスが禁止されている|
|404|Not Found|リクエストされたリソースが見つからない|
|500|Internal Server Error|サーバー内部でエラーが発生し、リクエストを処理できない|
|503|Service Unavailable|サーバーが一時的に利用できない状態（メンテナンスや過負荷）|  
  
# ヘッダーフィールド  
HTTPヘッダーの中に含まれる個々の項目。特定の詳細な情報を示すために使われる。  
![image](https://github.com/user-attachments/assets/aa540908-89fe-4463-baba-1b764bd6aca6)  

**■一般ヘッダーフィールド**  
共通で使用されるヘッダーフィールド。よく使うのは以下の通り。
|名前|内容|具体例|
|:--|:--|:--|
|Cache-Control|キャッシュの動作を指定する|Cache-Control: no-cache|
|Connection|接続の管理に関する情報を提供する|Connection: keep-alive|
|Date|HTTPのやり取りが生成された日付を示す|Date: Tue, 15 Nov 1994 08:12:31 GMT|

**■リクエストヘッダーフィールド**  
HTTPリクエストのみのヘッダーフィールド。よく使うのは以下の通り。
|名前|内容|具体例|
|:--|:--|:--|
|Accept|レスポンスの形式を希望する|Accept: text/html|
|Host|リクエスト先のサーバー名|Host: *www*.example.com|
|User-Agent|ブラウザの固有情報(プロダクト名、バージョンなど)|User-Agent: Mozilla/5.0|

**■レスポンスヘッダーフィールド**  
HTTPレスポンスのみのヘッダーフィールド。よく使うのは以下の通り。
|名前|内容|具体例|
|:--|:--|:--|
|Location|リダイレクト先のWebページの情報|Location: http://*www*.example.com/newpage.html|
|Server|サーバーの固有情報(プロダクト名、バージョンなど)|Server: Apache|
|Set-Cookie|クライアントにクッキーを設定|Set-Cookie: sessionId=abc123|

**■エンティティヘッダーフィールド**  
HTTPボディに関するヘッダーフィールド。よく使うのは以下の通り。
|名前|内容|具体例|
|:--|:--|:--|
|Content-Encoding|コンテンツのエンコード(データ変換)方式|Content-Encoding: gzip|
|Content-Length|コンテンツのサイズ。単位はバイト(byte)|Content-Length: 348|
|Content-Type|コンテンツの種類(テキスト、画像など)|Content-Type: text/html|
