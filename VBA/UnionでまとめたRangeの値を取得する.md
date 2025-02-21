【参考】https://z1000s.hatenablog.com/entry/2019/03/01/233101  
  
UnionでまとめたすべてのRangeの値をひとつの配列に代入しようとしたが、うまくいかなかった。  
結論から書くと、Range.Areasプロパティを使って指定をすることが出来る。  
・Range("B2:D4") <===赤で囲まれた範囲  
・Range("F3:G4") <===青で囲まれた範囲  
![image](https://github.com/user-attachments/assets/248996db-b642-486f-ba85-5459d25b84a7)  

  
【失敗したコード】  
```
Sub test()
  Dim rng1, rng2 As Range
  Set rng1 = Range("B2:D4")
  Set rng2 = Range("F3:G4")

  ReDim Arr(1 To 13, 1) As Variant
  Arr = Union(rng1, rng2)

  Set rng2 = Nothing
  Set rng1 = Nothing

  Debug.Print Arr(1, 1)
  Debug.Print Arr(13, 1)
End Sub
```
```
#結果
  B2
  実行時エラー '9':インデックスが有効範囲にありません。
```
  
【複数のセル範囲の集合をひとつのRangeとして設定する】  
Unionメソッドを使用し、下記のように使用する。  
```
Set r = Union(Sheet1.Range("B2:D4"), Sheet1.Range("F3:G4"))
```
  
【セル範囲数を調べる】  
使うのはAreas.Count プロパティ。  
```
r.Areas.Count
```
  
【各セル範囲のアドレスを調べる】  
使うのは、Range.Address プロパティ。  
セル範囲は、Areasに１から始まるインデックスにより指定する。  
```
r.Areas(k).Address(False, False)
```
今回の場合、  
赤で囲まれた範囲がArea(1) → B2:D4  
青で囲まれた範囲がArea(2) → F3:G4  
が返る。  
ちなみに、Unionした全体の範囲は  
```
r.Address(False, False)
```
で取得でき、 B2:D4,F3:G4 と返ってくる。  

【成功したコード】
```
Sub test2()
  Dim rng1, rng2, rng3 As Range
  Set rng1 = Range("B2:D4")
  Set rng2 = Range("F3:G4")
  Set rng3 = Union(rng1, rng2)

  ReDim Arr(1 To 13, 1) As Variant
  Dim i, x, y, z As Integer
  i = 1
  For x = 1 To rng3.Areas.Count
    For y = 1 To rng3.Areas(x).Rows.Count
    For z = 1 To rng3.Areas(x).Columns.Count
        Arr(i, 1) = rng3.Areas(x).Cells(y, z).Value
        i = i + 1
    Next
    Next
  Next
  
  Set rng3 = Nothing
  Set rng2 = Nothing
  Set rng1 = Nothing

  Debug.Print Arr(1, 1)
  Debug.Print Arr(13, 1)
  
End Sub
```
```
#結果
  B2
  G4
```
