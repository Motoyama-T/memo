# powershellで標準入力(ファイルリダイレクト)  
【引用元】https://fastapple.hatenablog.com/entry/2019/01/18/223933  
  
例えばa.exeがあるとして、a.exeに標準入力でinput.txtの内容を渡したい場合、コマンドラインだと単に以下のようにすればいい。  
```
  a.exe < input.txt
```
powershellの場合、以下のようになる。  
```
  cat input.txt | .\a.exe
```
気をつけるべきところがいくつか。  
・catして標準出力に出したものを、パイプ | で渡す必要がある。( > だと単にファイルの内容が上書きされてしまう。)  
・a.exeなど、実行ファイルを指定する場合は、.\をつけて、カレントにあるファイルだと明示する必要がある。  
※なお、powershellでパイプで渡されるのはオブジェクトなので、input.txtが大きい場合には注意が必要。  
  
javaでnextIntメソッドとかnextLineメソッドを使ってるMainクラスを実行する場合  
```
  cat input.txt | java Main
```
となる。
