import java.util.*;
public class NumberSpiral {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        long t = sc.nextLong();
        StringBuilder sb = new StringBuilder();
        while (t-->0) {
            long x = sc.nextLong();
            long y = sc.nextLong();
            long max = Math.max(x,y)-1;
            long ans = max*max + max + 1;
            if(x==max+1){
                if((max&1)==1){
                    sb.append(ans+max-y+1).append("\n");
                    
                }else{
                    sb.append(ans-max+y-1).append("\n");;
                }
            }else{
                if((max&1)==1){
                    sb.append(ans-y+x).append("\n");;
                }else{
                    sb.append(ans+max-x+1).append("\n");;
                    
                }
            }
        }
        System.out.println(sb.toString());
    }
}
