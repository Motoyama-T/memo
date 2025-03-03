String[] A = {"XXXX","YYYY","ZZZZ"};
String[][] B = {{"XXXX","YYYY","ZZZZ"},{"AAAA","BBBB","CCCC"}};

//■何もせずSystem.out.printすると配列のIDみたいなのが表示され、中身が見れない。
	System.out.println(A);
/*----出力----------------------
[Ljava.lang.String;@7699a589
------------------------------*/

//■デバックのために中身を見たいだけなら以下の方法が便利
//■一次配列の中身を表示したい
	System.out.println(Arrays.toString(A));
/*----出力----------------------
[XXXX, YYYY, ZZZZ]
------------------------------*\

//■多次元配列の中身を表示したい
	System.out.println(Arrays.deepToString(B));
/*----出力----------------------
[[XXXX, YYYY, ZZZZ], [AAAA, BBBB, CCCC]]
------------------------------*/
