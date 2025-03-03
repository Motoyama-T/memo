//10×10マスの盤面で座標(x,y)の左右それぞれに対する処理をしたいときを想定

for(int plusminus = -1; plusminus < 2; plusminus+=2){
	int i = 0;
	while(True){
		i += 1;
		if(x + i * plusminus < 0 || x + i * plusminus >= 10){
			break;
		}
		if(盤面[x + i * plusminus][y].equals("*"){
			for(int j = 0; j < i + 1; j++){
				//処理
			}
			break;
		}
	}
}

