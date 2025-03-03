#include<stdio.h>
void 関数名(void) {
	処理;
	………;
	………;
	return;
}
int main(void) {
	関数名();		// ←関数呼び出し
	return 0;
}



//引数ある場合（引数内の変数宣言は例え同じデータ型であってもデータ型の省略はできない）
void 関数名(int x, int y) {
	処理;
	return z;		// 戻り値の持たせ方
}
