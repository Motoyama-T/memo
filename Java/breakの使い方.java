//for、while、switch文で使える。
//繰り返し処理を途中で抜けて次の処理へ移る。

for(int i = 0; i < 10; i++){
	if(条件){
		System.out.println("forは続きます。");
	}else{
		System.out.println("forを抜けます。");
		break;
	}
}
