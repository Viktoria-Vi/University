
import java.util.Arrays;
import java.util.Random;

public class SortTools extends NumberComparator {

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

    public static int[] insertionSort(int[] a) {
        int j, k, c = 0;
        for (int i = 1; i < a.length; i++) {
            k = a[i];
            j = i - 1;
            while (j >= 0 && a[j] > k) {
                a[j + 1] = a[j];
                j--;

            }
            a[j + 1] = k;

        }
        return a;
    }


    public static <T extends Number & Comparable> void insertionSortGen(T[] arr) {
        int j;
        T k;

        for (int i = 1; i < arr.length; i++) {
            k = arr[i];
            j = i - 1;
            while (j >= 0 && arr[j].compareTo(k) != -1) {
                arr[j + 1] = arr[j];
                j--;
            }
            arr[j + 1] = k;
        }
    }

    public static void bubbleSort(int[] arr){
        for (int i = arr.length; i > 1;i--){
            for (int j = 0; j < i-1;j++){
                if(arr[j]>arr[j+1]){
                    int k = arr[j];
                    arr[j] = arr[j+1];
                    arr[j+1] = k;
                }
            }
        }
    }

    public static void bubbleSortNew(int[] arr){
        for (int i = arr.length; i > 1;i--){
            for (int j = 0; j < i-1;j += 10){
                int[] temp =insertionSort(Arrays.copyOfRange(arr,j,j+11));
                for (int k = j;k < j;k++){
                    arr[k] = temp[k];
                }

                }
            }
        for (int f:
             arr) {
            System.out.println(f);
        }
        }








    public static void main(String[] args) {

        int[] a = createSequenceDec(100);
        bubbleSortNew(a);
        /*int[] b = createSequenceDec(1000);
        int[] c = createSequenceDec(10000);
        int[] d = createSequenceDec(100000);
        int[] e = createSequenceDec(200000);
        long averageA = 0, averageB = 0, averageC = 0, averageD = 0, averageE = 0;
        int i = 1;
        while (i <= 10) {
            System.out.println("Durchlauf" + i);


            long startA = System.nanoTime();
            insertionSort(a);
            long endA = System.nanoTime();
            System.out.println("Programmlaufzeit a: " + (endA - startA) + " ns");
            averageA += endA - startA;

            long startB = System.nanoTime();
            insertionSort(b);
            long endB = System.nanoTime();
            System.out.println("Programmlaufzeit b: " + (endB - startB) + " ns");
            averageB += endB - startB;

            long startC = System.nanoTime();
            insertionSort(c);
            long endC = System.nanoTime();
            System.out.println("Programmlaufzeit c: " + (endC - startC) + " ns");
            averageC += endC - startC;

            long startD = System.nanoTime();
            insertionSort(d);
            long endD = System.nanoTime();
            System.out.println("Programmlaufzeit d: " + (endD - startD) + " ns");
            averageD += endD - startD;

            long startE = System.nanoTime();
            insertionSort(e);
            long endE = System.nanoTime();
            System.out.println("Programmlaufzeit e: " + (endE - startE) + " ns");
            averageE += endE - startE;
            i++;
        }
        System.out.println("Durchschnittliche Laufzeit a: " + averageA / 10);
        System.out.println("Durchschnittliche Laufzeit b: " + averageB / 10);
        System.out.println("Durchschnittliche Laufzeit c: " + averageC / 10);
        System.out.println("Durchschnittliche Laufzeit d: " + averageD / 10);
        System.out.println("Durchschnittliche Laufzeit e: " + averageE / 10);
*/

    }

}



