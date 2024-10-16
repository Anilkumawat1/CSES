import java.util.*;
public class MissingNumber {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long n = sc.nextInt();
        long sum1 = n*(n+1)/2;
        long sum2 = 0;
        for(int i=0;i<(int)n-1;i++){
            sum2+=sc.nextInt();
        }
        System.out.println(sum1-sum2);
    }
}
