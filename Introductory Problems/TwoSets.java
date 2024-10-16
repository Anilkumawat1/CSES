import java.util.*;
public class TwoSets { 
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        StringBuilder sb = new StringBuilder();
        if((n&1)==0){
            if(((n/2) & 1)==1){
                System.out.println("NO");
            }else{
                sb.append("YES").append("\n");
                sb.append(n/2).append("\n");
                int i = 1;
                while(i<=n/4){
                    sb.append(i).append(' ');
                    i++;
                }
                i = n - n/4 +1;
                while(i<=n){
                    sb.append(i).append(' ');
                    i++;
                }
                sb.append("\n");
                sb.append(n/2).append("\n");
                i = n/4+1;
                while(i<=n-n/4){
                    sb.append(i).append(' ');
                    i++;
                }
            }
        }else{
            if((((n-1)/2) & 1)==0){
                sb.append("NO");
            }else{
                sb.append("YES").append("\n");
                n = n-1;
                sb.append(n/2).append("\n");
                int i = 1;
                while(i<=n/4){
                    sb.append(i).append(' ');
                    i++;
                }
                i = n - n/4 +1;
                while(i<=n){
                    sb.append(i).append(' ');
                    i++;
                }
                sb.append(n+1).append("\n");
                sb.append((n/2) + 1).append("\n");
                i = n/4+1;
                while(i<=n-n/4){
                    sb.append(i).append(' ');
                    i++;
                }
                
            }
        }
        System.out.println(sb.toString());
    }
}
