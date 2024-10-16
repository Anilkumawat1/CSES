import java.util.*;
public class PalindromeReorder {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        String st = sc.nextLine();
        int arr[] = new int[26];
        for(int i=0;i<st.length();i++){
            arr[st.charAt(i)-'A']++;
        }
        StringBuilder sb = new StringBuilder();
        if(st.length()%2==0){
            for(int i=0;i<26;i++){
                if(arr[i]%2==1){
                    System.out.println("NO SOLUTION");
                    return;
                }
            }
            for(int i=0;i<26;i++){
                for(int j=0;j<arr[i]/2;j++){
                    sb.append((char)(i+'A'));
                }
            }
            String st1 = sb.reverse().toString();
            sb.reverse();
            sb.append(st1);
        }else{
            int count = 0;
            int odd = -1;
            for(int i=0;i<26;i++){
                if(arr[i]%2==1){
                    odd = i;
                    count++;
                }
            }
            if(count==0||count>=2){
                System.out.println("NO SOLUTION");
                return;
            }
            for(int i=0;i<26;i++){
                for(int j=0;j<arr[i]/2;j++){
                    sb.append((char)(i+'A'));
                }
            }
            String st1 = sb.reverse().toString();
            sb.reverse();
            sb.append((char)(odd+'A')).append(st1);
        }
        System.out.println(sb.toString());
    }
}
