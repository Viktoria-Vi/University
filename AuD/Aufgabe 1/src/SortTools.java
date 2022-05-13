import java.util.Random;


public class SortTools {

    public static int[] createSequenceInc(int n) {
        int[] out = new int[n];
        for (int i = 0; i < n; i++) {
            out[i] = i + 1;
        }
        return out;
    }

    public static int[] createSequenceDec(int n) {
        int[] out = new int[n];
        for (int i = 0; i < n; i++) {
            out[i] = n - i;
        }
        return out;
    }

    public static int[] createSequenceRand(int n) {
        int[] out = new int[n];
        for (int i = 0; i < n; i++) {
            Random rn = new Random();
            int ans = rn.nextInt(n) + 1;
            out[i] = ans;
        }
        return out;
    }

    public static int[] createSequenceAlt(int n) {
        int[] out = new int[n];
        out[0] = 1;
        for (int i = 1; i < n; i++) {
            if (out[i - 1] == 1) {
                out[i] = 2;
            } else {
                out[i] = 1;
            }
        }
        return out;
    }

    static void swap(int[] arr, int i, int j) {
        int temp = arr[i];
        arr[i] = arr[j];
        arr[j] = temp;
    }



}



