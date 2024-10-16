import java.util.*;
public class TowerOfHanoi {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        StringBuilder sb = new StringBuilder();
        int n = sc.nextInt();
        rec(n,1,2,3,sb);
        System.out.println(sb.length()/4);
        System.out.println(sb.toString());
    }
    public static void rec(int n,int a,int b,int c,StringBuilder sb){
        if(n==0)
        return;
        rec(n-1,a,c,b,sb);
        sb.append(a).append(' ').append(c).append("\n");
        rec(n-1,b,a,c,sb);
    }
}
