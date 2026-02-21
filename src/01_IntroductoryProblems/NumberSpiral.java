import java.io.*;
import java.util.*;

class NumberSpiral {

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
    static StringBuilder sb = new StringBuilder();

    // ── I/O helpers ──────────────────────────────────────────────
    static String nextToken() throws IOException {
        while (st == null || !st.hasMoreTokens())
            st = new StringTokenizer(br.readLine());
        return st.nextToken();
    }
    static int    nextInt()  throws IOException { return Integer.parseInt(nextToken()); }
    static long   nextLong() throws IOException { return Long.parseLong(nextToken()); }
    static String nextStr()  throws IOException { return nextToken(); }
    static double nextDouble() throws IOException { return Double.parseDouble(nextToken()); }

    // ── Print helpers ─────────────────────────────────────────────
    /** Print value with newline (single answer) */
    static void prl(Object val)          { out.println(val); }

    /** Print value WITHOUT newline */
    static void pr(Object val)           { out.print(val); }

    /** Print two values separated by space */
    static void prl(Object a, Object b)  { out.println(a + " " + b); }

    /** Print three values separated by space */
    static void prl(Object a, Object b, Object c) { out.println(a + " " + b + " " + c); }

    /** Print int array — space-separated on ONE line */
    static void pra(int[] arr) {
        for (int i = 0; i < arr.length; i++) {
            if (i > 0) sb.append(' ');
            sb.append(arr[i]);
        }
        sb.append('\n');
        out.print(sb); sb.setLength(0);
    }

    /** Print long array — space-separated on ONE line */
    static void pra(long[] arr) {
        for (int i = 0; i < arr.length; i++) {
            if (i > 0) sb.append(' ');
            sb.append(arr[i]);
        }
        sb.append('\n');
        out.print(sb); sb.setLength(0);
    }

    /** Print each element of int array on its OWN line */
    static void prla(int[] arr) {
        for (int v : arr) sb.append(v).append('\n');
        out.print(sb); sb.setLength(0);
    }

    /** Print each element of long array on its OWN line */
    static void prla(long[] arr) {
        for (long v : arr) sb.append(v).append('\n');
        out.print(sb); sb.setLength(0);
    }

    /** Print a 2-D int grid, rows separated by newlines */
    static void prGrid(int[][] g) {
        for (int[] row : g) {
            for (int i = 0; i < row.length; i++) {
                if (i > 0) sb.append(' ');
                sb.append(row[i]);
            }
            sb.append('\n');
        }
        out.print(sb); sb.setLength(0);
    }

    /** Append raw value to buffer — call flush() when done */
    static void buf(Object val)          { sb.append(val).append('\n'); }

    /** Flush the buffer to output in one shot (fastest for big output) */
    static void flush()                  { out.print(sb); sb.setLength(0); out.flush(); }

    // ── Solution ──────────────────────────────────────────────────
    void solve() throws IOException {
        int t = nextInt();
        StringBuilder builder = new StringBuilder();

        while (t-- > 0) {
            long x = nextLong();
            long y = nextLong();

            long z = Math.max(x, y);
            long ans;

            if ((z & 1) == 0) {  // even
                if (x == z) {
                    ans = z * z - y + 1;
                } else {
                    ans = (z - 1) * (z - 1) + x;
                }
            } else {             // odd
                if (y == z) {
                    ans = z * z - x + 1;
                } else {
                    ans = (z - 1) * (z - 1) + y;
                }
            }

            builder.append(ans).append('\n');
        }

        out.print(builder);
    }

    public static void main(String[] args) throws IOException {
        br = new BufferedReader(new InputStreamReader(System.in));
        out = new PrintWriter(new BufferedWriter(new OutputStreamWriter(System.out)));
        new NumberSpiral().solve();
        out.flush();
    }
}

