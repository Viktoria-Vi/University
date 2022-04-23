
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

    public static void insertionSort(int[] a) {
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








    public static void main(String[] args) {

        int[] a = createSequenceDec(100);
        int[] b = createSequenceDec(1000);
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


    }
    /*      Durchlauf1
    Programmlaufzeit a: 133400 ns
    Programmlaufzeit b: 7814400 ns
    Programmlaufzeit c: 27809400 ns
    Programmlaufzeit d: 2206550500 ns
    Programmlaufzeit e: 7800690500 ns
            Durchlauf2
    Programmlaufzeit a: 74400 ns
    Programmlaufzeit b: 37900 ns
    Programmlaufzeit c: 221500 ns
    Programmlaufzeit d: 682800 ns
    Programmlaufzeit e: 1625900 ns
            Durchlauf3
    Programmlaufzeit a: 1200 ns
    Programmlaufzeit b: 8100 ns
    Programmlaufzeit c: 81400 ns
    Programmlaufzeit d: 801100 ns
    Programmlaufzeit e: 1630300 ns
            Durchlauf4
    Programmlaufzeit a: 1000 ns
    Programmlaufzeit b: 8700 ns
    Programmlaufzeit c: 98600 ns
    Programmlaufzeit d: 260900 ns
    Programmlaufzeit e: 428900 ns
            Durchlauf5
    Programmlaufzeit a: 1000 ns
    Programmlaufzeit b: 9000 ns
    Programmlaufzeit c: 93800 ns
    Programmlaufzeit d: 258700 ns
    Programmlaufzeit e: 509000 ns
            Durchlauf6
    Programmlaufzeit a: 1000 ns
    Programmlaufzeit b: 9900 ns
    Programmlaufzeit c: 98800 ns
    Programmlaufzeit d: 507600 ns
    Programmlaufzeit e: 586400 ns
            Durchlauf7
    Programmlaufzeit a: 800 ns
    Programmlaufzeit b: 4000 ns
    Programmlaufzeit c: 27700 ns
    Programmlaufzeit d: 159600 ns
    Programmlaufzeit e: 317000 ns
            Durchlauf8
    Programmlaufzeit a: 1400 ns
    Programmlaufzeit b: 1800 ns
    Programmlaufzeit c: 16400 ns
    Programmlaufzeit d: 163000 ns
    Programmlaufzeit e: 329600 ns
            Durchlauf9
    Programmlaufzeit a: 600 ns
    Programmlaufzeit b: 4000 ns
    Programmlaufzeit c: 29400 ns
    Programmlaufzeit d: 177800 ns
    Programmlaufzeit e: 329900 ns
            Durchlauf10
    Programmlaufzeit a: 600 ns
    Programmlaufzeit b: 4000 ns
    Programmlaufzeit c: 28200 ns
    Programmlaufzeit d: 180000 ns
    Programmlaufzeit e: 335700 ns

    Durchschnittliche Laufzeit a: 21540
    Durchschnittliche Laufzeit b: 790180
    Durchschnittliche Laufzeit c: 2850520
    Durchschnittliche Laufzeit d: 220974200
    Durchschnittliche Laufzeit e: 780678320*/

}



