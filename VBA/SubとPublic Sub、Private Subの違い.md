【VBA】SubとPublic Sub、Private Subの違い【基本はSubです】  
https://daitaideit.com/vba-sub-public-private/  
  
違いは、「他のモジュール」から呼び出せるかどうかです。  
「他のモジュール」から呼び出したいときは、「Sub」もしくは「Public Sub」です。  
「同じモジュール」の中だけで使いたいときは、「Private Sub」を使います。  
「Sub」だけ記述すると「Public Sub」の意味になります。  
  
・「Public Sub」：他モジュールから呼び出せる  
・「Private Sub」：同じモジュールから呼び出せる  
・「Sub」:Public Subと同じ  
