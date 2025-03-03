/*ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
switch文を使って break を書き忘れる…意外とあるあるだと思います。
そんなswitch文を改善した、switch式 がJava 14から追加されました。

switch式 を使うことで、break文の書き忘れという単純なミスから解放されます。
ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー*/
//■switch文
switch (value) {
	case 1:
		System.out.println("いち");
		break;
	case 2:
		System.out.println("に");
		break;
	case 3:
		System.out.println("さん");
		break;
	default:
		System.out.println("それ以外");
}
//■switch式
switch (value) {
	case 1 -> {
		System.out.println("いち");
	}case 2 -> {
		System.out.println("に");
	}case 3 -> {
		System.out.println("さん");
	}default -> {
		System.out.println("それ以外");
	}
}
