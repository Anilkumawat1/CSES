import java.util.*;
public class TwoKnights {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long n = sc.nextInt();
        StringBuilder sb = new StringBuilder();
        for(int i=1;i<=n;i++){
        long n1 = i*i;
        sb.append(((n1*(n1-1))/2L) - 4L*(long)(i-1)*(long)(i-2)).append("\n");
        }
        System.out.println(sb.toString());
    }
}
