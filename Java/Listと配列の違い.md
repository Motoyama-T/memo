# 構造の違い
　配列  
　・初期化した時点で配列の大きさ(要素数)を決める必要があります。  
　・大きさを決めたら変更することができません。  
  
　List  
　・プログラマがある程度、任意のタイミングでサイズを変更することができます。  
　・配列内のデータを操作する際には、便利なArraysメソッドが標準で実装されています。  
  
# 宣言の違い
　配列
 ```java
int[] x = {0,0};
int[] x = new int[要素数];
```
  
　List
 ```java
List<Integer> list = new ArrayList<Integer>();
ArrayList<Integer> list = new ArrayList<Integer>();
```
  
# 変換
■配列→List  
　asListメソッド  
  
■List→配列  
　toArrayメソッド
