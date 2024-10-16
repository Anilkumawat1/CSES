import java.util.*;
public class TrailingZeros{
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int base = 5;
        int ans = 0;
        while(n/base!=0){
            ans+=n/base;
            base*=5;
        }
        System.out.println(ans);
    }
}