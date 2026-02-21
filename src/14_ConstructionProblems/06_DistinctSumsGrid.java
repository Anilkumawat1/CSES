import java.io.*;
import java.util.*;

class DistinctSumsGrid {

    static final long MOD = 1_000_000_007L;
    static final int[] dx = {-1, 1, 0, 0};
    static final int[] dy = {0, 0, -1, 1};

    static long gcd(long a, long b) {
        return b == 0 ? a : gcd(b, a % b);
    }

    static long power(long base, long exp, long mod) {
        long result = 1;
        base %= mod;
        while (exp > 0) {
            if ((exp & 1) == 1) result = result * base % mod;
            base = base * base % mod;
            exp >>= 1;
        }
        return result;
    }

    static BufferedReader br;
    static PrintWriter out;
    static StringTokenizer st;

    static String nextToken() throws IOException {
        while (st == null || !st.hasMoreTokens())
            st = new StringTokenizer(br.readLine());
        return st.nextToken();
    }

    static int nextInt() throws IOException { return Integer.parseInt(nextToken()); }
    static long nextLong() throws IOException { return Long.parseLong(nextToken()); }

    void solve() throws IOException {
        // TODO: implement solution
    }

    public static void main(String[] args) throws IOException {
        br = new BufferedReader(new InputStreamReader(System.in));
        out = new PrintWriter(new BufferedWriter(new OutputStreamWriter(System.out)));
        new DistinctSumsGrid().solve();
        out.flush();
    }
}
