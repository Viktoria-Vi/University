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
        if (j == r && A[j] != x) {
            return -1;
        }
        if (x == A[(r - j) / 2]) {
            return (r - j) / 2;
        }
        if (x > A[j + (r - j) / 2]) {
            return binSearch(A, x, (j + r) / 2 + 1, A.length - 1);
        } else {
            return binSearch(A, x, 0, (j + r) / 2 - 1);
        }
    }

    public static int binSearchNew(int[] A, int x, int j, int r) {
        if (j == r && A[j] != x) {
            return -1;
        }
        if (A[(r - j) / 3] >= x) {
            if (A[j + (r - j) / 3] == x) {
                return j + (r - j) / 3;
            } else {
                return binSearchNew(A, x, 0, (r - j) / 3);
            }
        }
        if (A[j + (r - j) / 3] >= x) {
            if (A[j + (r - j) / 3] == x) {
                return j + (r - j) / 3;
            } else {
                return binSearchNew(A, x, (r - j) / 3 + 1, j + (r - j) / 3 - 1);
            }
        }
        return binSearchNew(A, x, j + (r - j) / 3 + 1, A.length - 1);
    }

    public static void main(String[] args) {
        int[] a = createSequenceInc(100);
        System.out.println(lineSearch(a,99));
        System.out.println(binSearch(a,99,0,a.length-1));
        System.out.println(binSearchNew(a,99,0,a.length-1));

        /*
//mergeSortNew funktioniert nicht. Hab ich deswegen auch net getestet
        int[] a = createSequenceInc(100);
        int[] b = createSequenceInc(1000);
        int[] c = createSequenceInc(10000);
        int[] d = createSequenceInc(100000);
        int[] e = createSequenceInc(200000);
        int[] f = createSequenceDec(100);
        int[] g = createSequenceDec(1000);
        int[] h = createSequenceDec(10000);
        int[] i = createSequenceDec(100000);
        int[] j = createSequenceDec(200000);

        long averageA = 0, averageB = 0, averageC = 0, averageD = 0, averageE = 0, averageF = 0, averageG = 0, averageH = 0, averageI = 0,
                averageJ = 0;

        int z = 1;
        while (z <= 10) {
            System.out.println("Durchlauf" + z);


            long startA = System.nanoTime();
            insertionSort(a);
            long endA = System.nanoTime();
            System.out.println("Programmlaufzeit insertionSort 100 a: " + (endA - startA) + " ns");
            averageA += endA - startA;

            long startB = System.nanoTime();
            insertionSort(b);
            long endB = System.nanoTime();
            System.out.println("Programmlaufzeit insertionSort 1.000 b: " + (endB - startB) + " ns");
            averageB += endB - startB;

            long startC = System.nanoTime();
            insertionSort(c);
            long endC = System.nanoTime();
            System.out.println("Programmlaufzeit insertionSort 10.000 c: " + (endC - startC) + " ns");
            averageC += endC - startC;

            long startD = System.nanoTime();
            insertionSort(d);
            long endD = System.nanoTime();
            System.out.println("Programmlaufzeit insertionSort 100.000 d: " + (endD - startD) + " ns");
            averageD += endD - startD;

            long startE = System.nanoTime();
            bubbleSort(e);
            long endE = System.nanoTime();
            System.out.println("Programmlaufzeit Insertionsort 200000 e : " + (endE - startE) + " ns");
            averageE += endE - startE;

            long startF = System.nanoTime();
            bubbleSort(f);
            long endF = System.nanoTime();
            System.out.println("Programmlaufzeit Insertionsort 100 f: " + (endF - startF) + " ns");
            averageF += endF - startF;

            long startG = System.nanoTime();
            bubbleSort(g);
            long endG = System.nanoTime();
            System.out.println("Programmlaufzeit Insertionsort 1000 g  : " + (endG - startG) + " ns");
            averageG += endG - startG;

            long startH = System.nanoTime();
            bubbleSort(h);
            long endH = System.nanoTime();
            System.out.println("Programmlaufzeit Insertionsort 10000 h: " + (endH - startH) + " ns");
            averageH += endH - startH;

            long startI = System.nanoTime();
            bubbleSort(i);
            long endI = System.nanoTime();
            System.out.println("Programmlaufzeit Insertionsort 100000 i: " + (endI - startI) + " ns");
            averageI += endI - startI;

            long startJ = System.nanoTime();
            bubbleSort(j);
            long endJ = System.nanoTime();
            System.out.println("Programmlaufzeit Insertionsort 200000 j: " + (endJ - startJ) + " ns");
            averageJ += endJ - startJ;

            z++;
        }
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageA / 10);
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageB / 10);
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageC / 10);
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageD / 10);
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageE / 10);
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageF / 10);
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageG / 10);
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageH / 10);
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageI / 10);
        System.out.println("Durchschnittliche Laufzeit Insertionsort: " + averageJ / 10);

        averageA = 0;
        averageB = 0;
        averageC = 0;
        averageD = 0;
        averageE = 0;
        averageF = 0;
        averageG = 0;
        averageH = 0;
        averageI = 0;
        averageJ = 0;

        int y = 1;
        while (y <= 10) {
            System.out.println("Durchlauf" + y);


            long startA = System.nanoTime();
            mergeSort(a, 0, a.length - 1);
            long endA = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 100 a: " + (endA - startA) + " ns");
            averageA += endA - startA;

            long startB = System.nanoTime();
            mergeSort(b, 0, b.length - 1);
            long endB = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 1.000 b: " + (endB - startB) + " ns");
            averageB += endB - startB;

            long startC = System.nanoTime();
            mergeSort(c, 0, c.length - 1);
            long endC = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 10.000 c: " + (endC - startC) + " ns");
            averageC += endC - startC;

            long startD = System.nanoTime();
            mergeSort(d, 0, d.length - 1);
            long endD = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 100.000 d: " + (endD - startD) + " ns");
            averageD += endD - startD;

            long startE = System.nanoTime();
            mergeSort(e, 0, e.length - 1);
            long endE = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 200000 e : " + (endE - startE) + " ns");
            averageE += endE - startE;

            long startF = System.nanoTime();
            mergeSort(f, 0, f.length - 1);
            long endF = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 100 f: " + (endF - startF) + " ns");
            averageF += endF - startF;

            long startG = System.nanoTime();
            mergeSort(g, 0, g.length - 1);
            long endG = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 1000 g  : " + (endG - startG) + " ns");
            averageG += endG - startG;

            long startH = System.nanoTime();
            mergeSort(h, 0, h.length - 1);
            long endH = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 10000 h: " + (endH - startH) + " ns");
            averageH += endH - startH;

            long startI = System.nanoTime();
            mergeSort(i, 0, i.length - 1);
            long endI = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 100000 i: " + (endI - startI) + " ns");
            averageI += endI - startI;

            long startJ = System.nanoTime();
            mergeSort(j, 0, j.length - 1);
            long endJ = System.nanoTime();
            System.out.println("Programmlaufzeit mergeSort 200000 j: " + (endJ - startJ) + " ns");
            averageJ += endJ - startJ;

            y++;
        }
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageA / 10);
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageB / 10);
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageC / 10);
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageD / 10);
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageE / 10);
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageF / 10);
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageG / 10);
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageH / 10);
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageI / 10);
        System.out.println("Durchschnittliche Laufzeit mergeSort: " + averageJ / 10);

*/
    }
    /*Durchlauf1
Programmlaufzeit insertionSort 100 a: 11000 ns
Programmlaufzeit insertionSort 1.000 b: 60100 ns
Programmlaufzeit insertionSort 10.000 c: 530600 ns
Programmlaufzeit insertionSort 100.000 d: 5427600 ns
Programmlaufzeit Insertionsort 200000 e : 11001996000 ns
Programmlaufzeit Insertionsort 100 f: 36100 ns
Programmlaufzeit Insertionsort 1000 g  : 10896500 ns
Programmlaufzeit Insertionsort 10000 h: 84202500 ns
Programmlaufzeit Insertionsort 100000 i: 8781178300 ns
Programmlaufzeit Insertionsort 200000 j: 35266635600 ns
Durchlauf2
Programmlaufzeit insertionSort 100 a: 1500 ns
Programmlaufzeit insertionSort 1.000 b: 13500 ns
Programmlaufzeit insertionSort 10.000 c: 297500 ns
Programmlaufzeit insertionSort 100.000 d: 750200 ns
Programmlaufzeit Insertionsort 200000 e : 9356402500 ns
Programmlaufzeit Insertionsort 100 f: 8300 ns
Programmlaufzeit Insertionsort 1000 g  : 250400 ns
Programmlaufzeit Insertionsort 10000 h: 22272200 ns
Programmlaufzeit Insertionsort 100000 i: 2330816100 ns
Programmlaufzeit Insertionsort 200000 j: 10867956300 ns
Durchlauf3
Programmlaufzeit insertionSort 100 a: 1200 ns
Programmlaufzeit insertionSort 1.000 b: 3400 ns
Programmlaufzeit insertionSort 10.000 c: 8100 ns
Programmlaufzeit insertionSort 100.000 d: 62100 ns
Programmlaufzeit Insertionsort 200000 e : 9178433000 ns
Programmlaufzeit Insertionsort 100 f: 4700 ns
Programmlaufzeit Insertionsort 1000 g  : 231000 ns
Programmlaufzeit Insertionsort 10000 h: 23842200 ns
Programmlaufzeit Insertionsort 100000 i: 2223451700 ns
Programmlaufzeit Insertionsort 200000 j: 8970012700 ns
Durchlauf4
Programmlaufzeit insertionSort 100 a: 1000 ns
Programmlaufzeit insertionSort 1.000 b: 1300 ns
Programmlaufzeit insertionSort 10.000 c: 7700 ns
Programmlaufzeit insertionSort 100.000 d: 91400 ns
Programmlaufzeit Insertionsort 200000 e : 8900919400 ns
Programmlaufzeit Insertionsort 100 f: 21700 ns
Programmlaufzeit Insertionsort 1000 g  : 251700 ns
Programmlaufzeit Insertionsort 10000 h: 19820100 ns
Programmlaufzeit Insertionsort 100000 i: 2210715100 ns
Programmlaufzeit Insertionsort 200000 j: 8911691100 ns
Durchlauf5
Programmlaufzeit insertionSort 100 a: 1300 ns
Programmlaufzeit insertionSort 1.000 b: 1500 ns
Programmlaufzeit insertionSort 10.000 c: 19500 ns
Programmlaufzeit insertionSort 100.000 d: 66900 ns
Programmlaufzeit Insertionsort 200000 e : 9794322700 ns
Programmlaufzeit Insertionsort 100 f: 8300 ns
Programmlaufzeit Insertionsort 1000 g  : 384600 ns
Programmlaufzeit Insertionsort 10000 h: 22764700 ns
Programmlaufzeit Insertionsort 100000 i: 2892845500 ns
Programmlaufzeit Insertionsort 200000 j: 9673565900 ns
Durchlauf6
Programmlaufzeit insertionSort 100 a: 1100 ns
Programmlaufzeit insertionSort 1.000 b: 900 ns
Programmlaufzeit insertionSort 10.000 c: 6000 ns
Programmlaufzeit insertionSort 100.000 d: 78200 ns
Programmlaufzeit Insertionsort 200000 e : 9102498000 ns
Programmlaufzeit Insertionsort 100 f: 7000 ns
Programmlaufzeit Insertionsort 1000 g  : 394300 ns
Programmlaufzeit Insertionsort 10000 h: 22888300 ns
Programmlaufzeit Insertionsort 100000 i: 2167435900 ns
Programmlaufzeit Insertionsort 200000 j: 8888286000 ns
Durchlauf7
Programmlaufzeit insertionSort 100 a: 900 ns
Programmlaufzeit insertionSort 1.000 b: 900 ns
Programmlaufzeit insertionSort 10.000 c: 8600 ns
Programmlaufzeit insertionSort 100.000 d: 76100 ns
Programmlaufzeit Insertionsort 200000 e : 8993802000 ns
Programmlaufzeit Insertionsort 100 f: 8200 ns
Programmlaufzeit Insertionsort 1000 g  : 269700 ns
Programmlaufzeit Insertionsort 10000 h: 21058900 ns
Programmlaufzeit Insertionsort 100000 i: 2220813500 ns
Programmlaufzeit Insertionsort 200000 j: 8952738400 ns
Durchlauf8
Programmlaufzeit insertionSort 100 a: 800 ns
Programmlaufzeit insertionSort 1.000 b: 800 ns
Programmlaufzeit insertionSort 10.000 c: 8800 ns
Programmlaufzeit insertionSort 100.000 d: 72000 ns
Programmlaufzeit Insertionsort 200000 e : 8946700300 ns
Programmlaufzeit Insertionsort 100 f: 6900 ns
Programmlaufzeit Insertionsort 1000 g  : 266200 ns
Programmlaufzeit Insertionsort 10000 h: 20282000 ns
Programmlaufzeit Insertionsort 100000 i: 2166588800 ns
Programmlaufzeit Insertionsort 200000 j: 8984273900 ns
Durchlauf9
Programmlaufzeit insertionSort 100 a: 1100 ns
Programmlaufzeit insertionSort 1.000 b: 1000 ns
Programmlaufzeit insertionSort 10.000 c: 9300 ns
Programmlaufzeit insertionSort 100.000 d: 69600 ns
Programmlaufzeit Insertionsort 200000 e : 8924074400 ns
Programmlaufzeit Insertionsort 100 f: 7700 ns
Programmlaufzeit Insertionsort 1000 g  : 241000 ns
Programmlaufzeit Insertionsort 10000 h: 21048600 ns
Programmlaufzeit Insertionsort 100000 i: 2199516200 ns
Programmlaufzeit Insertionsort 200000 j: 9105888100 ns
Durchlauf10
Programmlaufzeit insertionSort 100 a: 1000 ns
Programmlaufzeit insertionSort 1.000 b: 1200 ns
Programmlaufzeit insertionSort 10.000 c: 6100 ns
Programmlaufzeit insertionSort 100.000 d: 53000 ns
Programmlaufzeit Insertionsort 200000 e : 10961546500 ns
Programmlaufzeit Insertionsort 100 f: 7900 ns
Programmlaufzeit Insertionsort 1000 g  : 238000 ns
Programmlaufzeit Insertionsort 10000 h: 27519300 ns
Programmlaufzeit Insertionsort 100000 i: 2472982500 ns
Programmlaufzeit Insertionsort 200000 j: 9862484100 ns
Durchschnittliche Laufzeit Insertionsort: 2090
Durchschnittliche Laufzeit Insertionsort: 8460
Durchschnittliche Laufzeit Insertionsort: 90220
Durchschnittliche Laufzeit Insertionsort: 674710
Durchschnittliche Laufzeit Insertionsort: 9516069480
Durchschnittliche Laufzeit Insertionsort: 11680
Durchschnittliche Laufzeit Insertionsort: 1342340
Durchschnittliche Laufzeit Insertionsort: 28569880
Durchschnittliche Laufzeit Insertionsort: 2966634360
Durchschnittliche Laufzeit Insertionsort: 11948353210
Durchlauf1
Programmlaufzeit mergeSort 100 a: 249100 ns
Programmlaufzeit mergeSort 1.000 b: 1257000 ns
Programmlaufzeit mergeSort 10.000 c: 2807200 ns
Programmlaufzeit mergeSort 100.000 d: 33611500 ns
Programmlaufzeit mergeSort 200000 e : 23784600 ns
Programmlaufzeit mergeSort 100 f: 15000 ns
Programmlaufzeit mergeSort 1000 g  : 89600 ns
Programmlaufzeit mergeSort 10000 h: 808600 ns
Programmlaufzeit mergeSort 100000 i: 6813100 ns
Programmlaufzeit mergeSort 200000 j: 25193800 ns
Durchlauf2
Programmlaufzeit mergeSort 100 a: 21600 ns
Programmlaufzeit mergeSort 1.000 b: 162300 ns
Programmlaufzeit mergeSort 10.000 c: 1338700 ns
Programmlaufzeit mergeSort 100.000 d: 12280200 ns
Programmlaufzeit mergeSort 200000 e : 30860200 ns
Programmlaufzeit mergeSort 100 f: 6300 ns
Programmlaufzeit mergeSort 1000 g  : 71300 ns
Programmlaufzeit mergeSort 10000 h: 728900 ns
Programmlaufzeit mergeSort 100000 i: 6696100 ns
Programmlaufzeit mergeSort 200000 j: 14373000 ns
Durchlauf3
Programmlaufzeit mergeSort 100 a: 8700 ns
Programmlaufzeit mergeSort 1.000 b: 78900 ns
Programmlaufzeit mergeSort 10.000 c: 502500 ns
Programmlaufzeit mergeSort 100.000 d: 6490800 ns
Programmlaufzeit mergeSort 200000 e : 12781000 ns
Programmlaufzeit mergeSort 100 f: 10400 ns
Programmlaufzeit mergeSort 1000 g  : 84000 ns
Programmlaufzeit mergeSort 10000 h: 514100 ns
Programmlaufzeit mergeSort 100000 i: 7100000 ns
Programmlaufzeit mergeSort 200000 j: 12114100 ns
Durchlauf4
Programmlaufzeit mergeSort 100 a: 6300 ns
Programmlaufzeit mergeSort 1.000 b: 61900 ns
Programmlaufzeit mergeSort 10.000 c: 563700 ns
Programmlaufzeit mergeSort 100.000 d: 7643200 ns
Programmlaufzeit mergeSort 200000 e : 13630500 ns
Programmlaufzeit mergeSort 100 f: 7000 ns
Programmlaufzeit mergeSort 1000 g  : 54500 ns
Programmlaufzeit mergeSort 10000 h: 707500 ns
Programmlaufzeit mergeSort 100000 i: 7228800 ns
Programmlaufzeit mergeSort 200000 j: 13320900 ns
Durchlauf5
Programmlaufzeit mergeSort 100 a: 11800 ns
Programmlaufzeit mergeSort 1.000 b: 76600 ns
Programmlaufzeit mergeSort 10.000 c: 546900 ns
Programmlaufzeit mergeSort 100.000 d: 6091900 ns
Programmlaufzeit mergeSort 200000 e : 12902800 ns
Programmlaufzeit mergeSort 100 f: 10100 ns
Programmlaufzeit mergeSort 1000 g  : 75700 ns
Programmlaufzeit mergeSort 10000 h: 989300 ns
Programmlaufzeit mergeSort 100000 i: 6061400 ns
Programmlaufzeit mergeSort 200000 j: 14004600 ns
Durchlauf6
Programmlaufzeit mergeSort 100 a: 6100 ns
Programmlaufzeit mergeSort 1.000 b: 62200 ns
Programmlaufzeit mergeSort 10.000 c: 523900 ns
Programmlaufzeit mergeSort 100.000 d: 6154700 ns
Programmlaufzeit mergeSort 200000 e : 12087700 ns
Programmlaufzeit mergeSort 100 f: 10400 ns
Programmlaufzeit mergeSort 1000 g  : 77600 ns
Programmlaufzeit mergeSort 10000 h: 534600 ns
Programmlaufzeit mergeSort 100000 i: 6822500 ns
Programmlaufzeit mergeSort 200000 j: 13419100 ns
Durchlauf7
Programmlaufzeit mergeSort 100 a: 6300 ns
Programmlaufzeit mergeSort 1.000 b: 73100 ns
Programmlaufzeit mergeSort 10.000 c: 610100 ns
Programmlaufzeit mergeSort 100.000 d: 6732900 ns
Programmlaufzeit mergeSort 200000 e : 13322500 ns
Programmlaufzeit mergeSort 100 f: 9200 ns
Programmlaufzeit mergeSort 1000 g  : 72200 ns
Programmlaufzeit mergeSort 10000 h: 790700 ns
Programmlaufzeit mergeSort 100000 i: 5587000 ns
Programmlaufzeit mergeSort 200000 j: 13792500 ns
Durchlauf8
Programmlaufzeit mergeSort 100 a: 7800 ns
Programmlaufzeit mergeSort 1.000 b: 87200 ns
Programmlaufzeit mergeSort 10.000 c: 781900 ns
Programmlaufzeit mergeSort 100.000 d: 6516500 ns
Programmlaufzeit mergeSort 200000 e : 11669400 ns
Programmlaufzeit mergeSort 100 f: 10200 ns
Programmlaufzeit mergeSort 1000 g  : 76500 ns
Programmlaufzeit mergeSort 10000 h: 551600 ns
Programmlaufzeit mergeSort 100000 i: 6478300 ns
Programmlaufzeit mergeSort 200000 j: 20334000 ns
Durchlauf9
Programmlaufzeit mergeSort 100 a: 29800 ns
Programmlaufzeit mergeSort 1.000 b: 170000 ns
Programmlaufzeit mergeSort 10.000 c: 1797700 ns
Programmlaufzeit mergeSort 100.000 d: 16286400 ns
Programmlaufzeit mergeSort 200000 e : 29504000 ns
Programmlaufzeit mergeSort 100 f: 18600 ns
Programmlaufzeit mergeSort 1000 g  : 147100 ns
Programmlaufzeit mergeSort 10000 h: 1267300 ns
Programmlaufzeit mergeSort 100000 i: 14464700 ns
Programmlaufzeit mergeSort 200000 j: 28679900 ns
Durchlauf10
Programmlaufzeit mergeSort 100 a: 11500 ns
Programmlaufzeit mergeSort 1.000 b: 54200 ns
Programmlaufzeit mergeSort 10.000 c: 623200 ns
Programmlaufzeit mergeSort 100.000 d: 5711900 ns
Programmlaufzeit mergeSort 200000 e : 12685500 ns
Programmlaufzeit mergeSort 100 f: 10800 ns
Programmlaufzeit mergeSort 1000 g  : 75100 ns
Programmlaufzeit mergeSort 10000 h: 515500 ns
Programmlaufzeit mergeSort 100000 i: 7330800 ns
Programmlaufzeit mergeSort 200000 j: 13932500 ns
Durchschnittliche Laufzeit mergeSort: 35900
Durchschnittliche Laufzeit mergeSort: 208340
Durchschnittliche Laufzeit mergeSort: 1009580
Durchschnittliche Laufzeit mergeSort: 10752000
Durchschnittliche Laufzeit mergeSort: 17322820
Durchschnittliche Laufzeit mergeSort: 10800
Durchschnittliche Laufzeit mergeSort: 82360
Durchschnittliche Laufzeit mergeSort: 740810
Durchschnittliche Laufzeit mergeSort: 7458270
Durchschnittliche Laufzeit mergeSort: 16916440
*/

}



