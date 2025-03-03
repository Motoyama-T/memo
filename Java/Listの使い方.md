■下準備
```java
import java.util.*;
```

■宣言
```java
//空List
ArrayList<データ型> リスト名 = new ArrayList<>();

//要素あり
ArrayList<データ型> リスト名 = new ArrayList<>(Arrays.asList(要素[0], 要素[1], ・・・));

//二次元リスト
ArrayList<ArrayList<データ型>> リスト名 = new ArrayList<>();
```

■追加
```java
リスト名.add(要素の値);
```

■取得
```java
//一次元
リスト名.get(要素番号);

//二次元
リスト名.get(要素番号1).get(要素番号2);
```

■削除
```java
リスト名.remove(要素番号);
リスト名.remove(要素の値);
```

■要素数
```java
リスト名.size();

//空になったか判定
リスト名.size() == 0;
```

■存在するか判定
```java
リスト名.contains(要素の値);
```
