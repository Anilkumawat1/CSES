import java.util.*;
public class AppleDivision {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int arr[] = new int[n];
        long sum1 = 0;
        for(int i=0;i<n;i++){
            arr[i] = sc.nextInt();
            sum1+=arr[i];
        }
        System.out.println(rec(arr,0,sum1,0));
    }
    public static long rec(int arr[],int i,long sum1,long sum2){
        if(i==arr.length){
            return Math.abs(sum1-sum2);
        }
        return Math.min(rec(arr,i+1,sum1-arr[i],sum2+arr[i]),
        rec(arr,i+1,sum1,sum2));
    }
}
