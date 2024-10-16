import java.util.*;
public class Repititions {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String st = sc.nextLine();
        int ans = 0;
        int count = 1;
        for(int i=1;i<st.length();i++){
            if(st.charAt(i-1)==st.charAt(i)){
                count++;
            }
            else{
                ans = Math.max(ans,count);
                count = 1;
            }
        }
        ans = Math.max(count,ans);
        System.out.println(ans);
    }
}
