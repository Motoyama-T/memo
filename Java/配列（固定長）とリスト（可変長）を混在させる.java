//一次元目が「配列（固定長）」二次元目が「リスト（可変長）」の二次元構造gの書き方
import java.util.*;

class Sample {
  public static void main(String[] args) {
    int N = 5;                                  //配列（固定長）の長さ：5
    ArrayList<Integer>[] g = new ArrayList[N];  //出力：[null,null,null,null,null]
    for(int i = 0; i < g.length; i ++){
      g[i] = new ArrayList<Integer>();          //出力：[[],[],[],[],[]]
    }
    g[0].add(1);                                //出力：[[1],[],[],[],[]]
    g[0].add(1);                                //出力：[[1,1],[],[],[],[]]
    g[1].add(1);                                //出力：[[1,1],[1],[],[],[]]
    System.out.println(Arrays.toString(g));
  }
}
