import java.util.*;
class WeirdAlgorithmn{
    public static void main(String args[]){
        Scanner sc = new Scanner(System.in);
        long n = sc.nextInt();
        StringBuilder sb = new StringBuilder();
        while(n!=1){
            sb.append(n).append(' ');
            if((n&1)==0){
                n = n>>1;
            }
            else{
                n = n*3 + 1;
            }
        }
        sb.append(1);
        System.out.println(sb.toString());
    }
}