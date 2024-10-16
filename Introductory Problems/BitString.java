import java.util.*;
public class BitString {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long n = sc.nextInt();
        long base = 2;
        long mod = 1000000007;
        long ans = 1;
        while(n!=0){
            if((n&1)==1){
                ans = (ans*base)%mod;
            }
            base = (base*base)%mod;
            n>>=1;
        }
        System.out.println(ans);
    }
}
