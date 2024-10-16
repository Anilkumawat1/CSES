import java.util.*;
public class GrayCode {
    public static void main(String[] args) {
        Scanner sc =new Scanner(System.in);
        int n = sc.nextInt();
        ArrayList<String> list = new ArrayList<>();
        list.add("0");
        list.add("1");
        for(int i=1;i<n;i++){
            ArrayList<String> newlist = new ArrayList<>();
            for(String st : list){
                newlist.add(st+"0");
            }
            for(int j=list.size()-1;j>=0;j--){
                newlist.add(list.get(j)+"1");
            }
            list = newlist;
        }
        StringBuilder sb = new StringBuilder();
        for(String st : list){
            sb.append(st).append("\n");
        }
        System.out.println(sb.toString());
    }
}
