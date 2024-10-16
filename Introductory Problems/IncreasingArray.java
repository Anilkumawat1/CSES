import java.util.*;
public class IncreasingArray {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        long pre = sc.nextInt();
        long ans = 0;
        for(int i=0;i<n-1;i++){
            long curr = sc.nextInt();
            ans += Math.max(0,pre-curr);
            pre = curr+Math.max(0, pre-curr);   
        }
        System.out.println(ans);
    }
}
