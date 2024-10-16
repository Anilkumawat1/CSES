import java.io.IOException;
import java.util.*;
import java.io.InputStreamReader;
import java.io.BufferedReader;


class DistinctNumber{
    public static void main(String []args) throws IOException{
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(System.in));
        bufferedReader.readLine();
        System.out.println(new HashSet<>(Arrays.asList(bufferedReader.readLine().split(" "))).size());

    }
}