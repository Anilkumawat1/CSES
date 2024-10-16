import java.util.*;
public class CreatingStrings {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String st = sc.nextLine();
        int arr[] = new int[26];
        for(int i=0;i<st.length();i++){
            arr[st.charAt(i)-'a']++;
        }
        StringBuilder sb = new StringBuilder();
        System.out.println(rec("",st.length(),sb,arr));
        System.out.println(sb.toString());

    }
    public static long rec(String s , int n, StringBuilder sb,int arr[]){
        if(n==s.length()){
            sb.append(new String(s)).append("\n");
            return 1;
        }
        long ans = 0;
        for(int i=0;i<26;i++){
           if(arr[i]!=0){
              arr[i]--;
              ans+=rec(s+(char)(i+'a'),n,sb,arr);
              arr[i]++;
           }
        }
        return ans;
    }
}
