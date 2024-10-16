import java.util.*;
public class CoinPiles {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        StringBuilder sb = new StringBuilder();
        for(int i=0;i<n;i++){
            long x = sc.nextLong();
            long y = sc.nextLong();
            long min = Math.min(x,y);
            long max = Math.max(x,y);
            long diff = 2*min - max;
            if(diff>=0&&diff%3==0){
                sb.append("YES").append("\n");
            }else{
                sb.append("NO").append("\n");
            }

        }
        System.out.println(sb.toString());
    }
}
