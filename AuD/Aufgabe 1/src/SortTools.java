import java.util.Arrays;
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

    public static void bubbleSort(int[] arr) {
        for (int i = arr.length; i > 1; i--) {
            for (int j = 0; j < i - 1; j++) {
                if (arr[j] > arr[j + 1]) {
                    int k = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = k;
                }
            }
        }
    }

    public static void bubbleSortNew(int[] arr) {

        for (int i = arr.length; i > arr.length / 2; i--) { //braucht nicht n durchläufe, auch nicht n/2 aber is mir zu anstrengend :D
            for (int j = 1; j < i && j < arr.length - 10; j += 1) {
                int[] temp = insertionSort(Arrays.copyOfRange(arr, j, j + 10));
                for (int k = 0; k < 10; k++) {
                    arr[k + j] = temp[k];
                }
            }
        }
        int c = arr[0]; //erste und letzte Stelle werden nicht mit sortiert also hier tauschen :D
        arr[0] = arr[arr.length - 1];
        arr[arr.length - 1] = c;
    }
/*
    public static boolean isSorted(int[] a){
        for (int i = 0; i < a.length-1; i++){
            if(a[i] > a[i+1]){
                return false;
            }
        }
        return true;
    }
*/

    public static <T extends Comparable> void bubbleSortGen(T[] arr) {
        for (int i = arr.length; i > 1; i--) {
            for (int j = 0; j < i - 1; j++) {
                if (arr[j].compareTo(arr[j + 1]) > 0) {
                    T k = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = k;
                }
            }
        }
    }

    public static void merge(int[] arr, int l, int m, int r) {
        int n1 = m - l + 1;
        int n2 = r - m;

        int[] L = new int[n1 + 1];
        int[] R = new int[n2 + 1];

        for (int i = 0; i < n1; ++i)
            L[i] = arr[l + i];
        for (int j = 0; j < n2; ++j)
            R[j] = arr[m + 1 + j];

        L[n1] = Integer.MAX_VALUE;
        R[n2] = Integer.MAX_VALUE;


        int i = 0, j = 0;


        int k = l;
        while (i < n1 && j < n2) {
            if (L[i] <= R[j]) {
                arr[k] = L[i];
                i++;
            } else {
                arr[k] = R[j];
                j++;
            }
            k++;
        }

        while (i < n1) {
            arr[k] = L[i];
            i++;
            k++;
        }

        while (j < n2) {
            arr[k] = R[j];
            j++;
            k++;
        }
    }


    public static void mergeSort(int[] arr, int l, int r) {
        if (l < r) {
            int m = l + (r - l) / 2;

            mergeSort(arr, l, m);
            mergeSort(arr, m + 1, r);

            merge(arr, l, m, r);
        }
    }

    public static <T extends Comparable> void mergeGen(T[] arr, int l, int m, int r) {
        int n1 = m - l + 1;
        int n2 = r - m;

        T[] L = (T[]) new Object[n1];
        T[] R = (T[]) new Object[n1];

        for (int i = 0; i < n1; ++i)
            L[i] = arr[l + i];
        for (int j = 0; j < n2; ++j)
            R[j] = arr[m + 1 + j];


        int i = 0, j = 0;


        int k = l;
        while (i < n1 && j < n2) {
            if (L[i].compareTo(R[j]) <= 0) {
                arr[k] = L[i];
                i++;
            } else {
                arr[k] = R[j];
                j++;
            }
            k++;
        }

        while (i < n1) {
            arr[k] = L[i];
            i++;
            k++;
        }

        while (j < n2) {
            arr[k] = R[j];
            j++;
            k++;
        }
    }


    public static <T extends Comparable> void mergeSortGen(T[] arr, int l, int r) {
        if (l < r) {
            int m = l + (r - l) / 2;

            mergeSortGen(arr, l, m);
            mergeSortGen(arr, m + 1, r);

            mergeGen(arr, l, m, r);
        }
    }


    public static void mergeSortNew(int[] arr, int l, int r) {
        if (l < r) {

            int third1 = l + (r - l) / 3;
            int third2 = (l + (r - l) * 2) / 3;

            mergeSortNew(arr, l, third1);
            mergeSortNew(arr, third1 + 1, third2);
            mergeSortNew(arr, third2 + 1, r);


            merge(arr, third1, third2, r);
        }
    }

    public static int lineSearch(int[] A, int x) {
        for (int f = 0; f < A.length; f++) {
            if (A[f] == x) {
                return f;
            }
        }
        return -1;
    }

    public static int binSearch(int[] A, int x, int j, int r) {
        int middle = j + (r - j) / 2;

        if (r >= j) {
            if (x == A[middle]) {
                return middle;
            }

            if (middle > x) {
                return binSearch(A, x, j, middle - 1);

            } else {
                return binSearch(A, x, middle + 1, r);
            }
        }
        return -1;
    }

    public static int binSearchNew(int[] A, int x, int j, int r) {
        int firstThird = j + (r - j) * 1 / 3;
        int secondThird = j + (r - j) * 2 / 3;
        if (r >= j) {
            if (A[firstThird] >= x) {
                if (A[firstThird] == x) {
                    return firstThird;
                } else {
                    return binSearchNew(A, x, j, firstThird - 1);
                }
            }
            if (A[secondThird] >= x) {
                if (A[secondThird] == x) {
                    return secondThird;
                } else {
                    return binSearchNew(A, x, firstThird + 1, secondThird - 1);
                }
            }
            return binSearchNew(A, x, secondThird + 1, r);
        }
        return -1;
    }

    /**
     * Methode führt den code aus und gibt die Gesamtlaufzeiten auf der konsole aus
     */
    public static void runBoyRun() {
        int[] a = createSequenceInc(100000),
                b = createSequenceInc(1000000),
                c = createSequenceInc(100000000);
        //d = createSequenceInc(685154321);
        long averageA = 0, averageB = 0, averageC = 0, averageD = 0;
        for (int i = 0; i < 500; i++) {

            Random rnA = new Random();
            int ansA = rnA.nextInt(a.length);
            long startA = System.nanoTime();
            lineSearch(a, ansA);
            long endA = System.nanoTime();
            averageA += endA - startA;

            Random rnB = new Random();
            int ansB = rnB.nextInt(a.length);
            long startB = System.nanoTime();
            lineSearch(b, ansB);
            long endB = System.nanoTime();
            averageB += endB - startB;

            Random rnC = new Random();
            int ansC = rnC.nextInt(a.length);
            long startC = System.nanoTime();
            lineSearch(c, ansC);
            long endC = System.nanoTime();
            averageC += endC - startC;

            /*
            Random rnD = new Random();
            int ansD = rnD.nextInt(a.length);
            long startD = System.nanoTime();
            lineSearch(d, ansD);
            long endD = System.nanoTime();
            averageB += endD - startD;
            */
        }
        System.out.println("Gesamtlaufzeit lineSearch 100000 = " + averageA + " ns");
        System.out.println("Gesamtlaufzeit lineSearch 1000000 = " + averageB + " ns");
        System.out.println("Gesamtlaufzeit lineSearch 10000000 = " + averageC + " ns");
        //System.out.println("Gesamtlaufzeit lineSearch 685154321 = " + averageD + " ns");

        averageA = 0;
        averageB = 0;
        averageC = 0;
        //averageD = 0;
        for (int i = 0; i < 500; i++) {
            Random rnA = new Random();
            int ansA = rnA.nextInt(a.length);

            long startA = System.nanoTime();
            binSearch(a, ansA, 0, a.length - 1);
            long endA = System.nanoTime();
            averageA += endA - startA;

            Random rnB = new Random();
            int ansB = rnB.nextInt(a.length);
            long startB = System.nanoTime();
            binSearch(b, ansB, 0, b.length - 1);
            long endB = System.nanoTime();
            averageB += endB - startB;

            Random rnC = new Random();
            int ansC = rnC.nextInt(a.length);
            long startC = System.nanoTime();
            binSearch(c, ansC, 0, c.length - 1);
            long endC = System.nanoTime();
            averageC += endC - startC;

            /*
            Random rnD = new Random();
            int ansD = rnD.nextInt(a.length);
            long startD = System.nanoTime();
            binSearch(d, ansD, 0, d.lenght - 1);
            long endD = System.nanoTime();
            averageB += endD - startD;
            */
        }
        System.out.println("Gesamtlaufzeit binSearch 100000 = " + averageA + " ns");
        System.out.println("Gesamtlaufzeit binSearch 1000000 = " + averageB + " ns");
        System.out.println("Gesamtlaufzeit binSearch 10000000 = " + averageC + " ns");
        //System.out.println("Gesamtlaufzeit binSearch 685154321 = " + averageD + " ns");

        averageA = 0;
        averageB = 0;
        averageC = 0;
        //averageD = 0;
        for (int i = 0; i < 500; i++) {
            Random rnA = new Random();
            int ansA = rnA.nextInt(a.length);

            long startA = System.nanoTime();
            binSearchNew(a, ansA, 0, a.length - 1);
            long endA = System.nanoTime();
            averageA += endA - startA;

            Random rnB = new Random();
            int ansB = rnB.nextInt(a.length);
            long startB = System.nanoTime();
            binSearchNew(b, ansB, 0, b.length - 1);
            long endB = System.nanoTime();
            averageB += endB - startB;

            Random rnC = new Random();
            int ansC = rnC.nextInt(a.length);
            long startC = System.nanoTime();
            binSearchNew(c, ansC, 0, c.length - 1);
            long endC = System.nanoTime();
            averageC += endC - startC;

            /*
            Random rnD = new Random();
            int ansD = rnD.nextInt(a.length);
            long startD = System.nanoTime();
            binSearchNew(d, ansD, 0, d.lenght - 1);
            long endD = System.nanoTime();
            averageB += endD - startD;
            */
        }
        System.out.println("Gesamtlaufzeit binSearchNew 100000 = " + averageA + " ns");
        System.out.println("Gesamtlaufzeit binSearchNew 1000000 = " + averageB + " ns");
        System.out.println("Gesamtlaufzeit binSearchNew 10000000 = " + averageC + " ns");
        //System.out.println("Gesamtlaufzeit binSearchNew 685154321 = " + averageD + " ns");

    }

    public static void main(String[] args) {
        runBoyRun();
        /*
            Gesamtlaufzeit lineSearch 100000 = 24168900 ns
            Gesamtlaufzeit lineSearch 1000000 = 18593600 ns
            Gesamtlaufzeit lineSearch 10000000 = 24631000 ns
            Gesamtlaufzeit binSearch 100000 = 455800 ns
            Gesamtlaufzeit binSearch 1000000 = 543500 ns
            Gesamtlaufzeit binSearch 10000000 = 603800 ns
            Gesamtlaufzeit binSearchNew 100000 = 417500 ns
            Gesamtlaufzeit binSearchNew 1000000 = 791900 ns
            Gesamtlaufzeit binSearchNew 10000000 = 477000 ns*/


    }
}



