//■int型の比較は「==」、String型の比較は「equals」

int num1 = 10;
int num2 = 10;
System.out.println(num1 == num2);
/*----出力----------------------------
true
------------------------------------*/

String msg1 = "Hello";
String msg2 = new String(msg1);
System.out.println(msg1 == msg2);
/*----出力----------------------------
false
------------------------------------*/

String msg1 = "Hello";
String msg2 = msg1;
System.out.println(msg1 == msg2);
/*----出力----------------------------
true
------------------------------------*/

String msg1 = "Hello";
String msg2 = new String(msg1);
System.out.println(msg1.equals(msg2));
/*----出力----------------------------
true
------------------------------------*/
