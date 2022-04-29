import java.util.Arrays;
import java.util.Random;

public class SortTools  {

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


    public static void main(String[] args) {


        int[] a = createSequenceDec(100);
        int[] b = createSequenceDec(1000);
        int[] c = createSequenceDec(10000);
        int[] d = createSequenceDec(100000);

        int[] e = createSequenceDec(100);
        int[] f = createSequenceDec(1000);
        int[] g = createSequenceDec(10000);
        int[] h = createSequenceDec(100000);

        int[] i = createSequenceDec(100);
        int[] j = createSequenceDec(1000);
        int[] k = createSequenceDec(10000);
        int[] l = createSequenceDec(100000);

        long averageA = 0, averageB = 0, averageC = 0, averageD = 0, averageE = 0, averageF = 0, averageG = 0, averageH = 0, averageI = 0,
                averageJ = 0, averageK = 0, averageL = 0;

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
            System.out.println("Programmlaufzeit Bubblesort 100 e : " + (endE - startE) + " ns");
            averageE += endE - startE;

            long startF = System.nanoTime();
            bubbleSort(f);
            long endF = System.nanoTime();
            System.out.println("Programmlaufzeit Bubblesort 1.000 f: " + (endF - startF) + " ns");
            averageF += endF - startF;

            long startG = System.nanoTime();
            bubbleSort(g);
            long endG = System.nanoTime();
            System.out.println("Programmlaufzeit Bubblesort 10.000 g  : " + (endG - startG) + " ns");
            averageG += endG - startG;

            long startH = System.nanoTime();
            bubbleSort(h);
            long endH = System.nanoTime();
            System.out.println("Programmlaufzeit Bubblesort 100.000 h: " + (endH - startH) + " ns");
            averageH += endH - startH;

            long startI = System.nanoTime();
            bubbleSort(i);
            long endI = System.nanoTime();
            System.out.println("Programmlaufzeit bubbleSortNew 100 i: " + (endI - startI) + " ns");
            averageI += endI - startI;

            long startJ = System.nanoTime();
            bubbleSort(j);
            long endJ = System.nanoTime();
            System.out.println("Programmlaufzeit bubbleSortNew 1.000 j: " + (endJ - startJ) + " ns");
            averageJ += endJ - startJ;

            long startK = System.nanoTime();
            bubbleSort(k);
            long endK = System.nanoTime();
            System.out.println("Programmlaufzeit bubbleSortNew 10.000 k: " + (endK - startK) + " ns");
            averageK += endK - startK;

            long startL = System.nanoTime();
            bubbleSort(l);
            long endL = System.nanoTime();
            System.out.println("Programmlaufzeit bubbleSortNew 100.000 l: " + (endL - startL) + " ns");
            averageL += endL - startL;

            z++;
        }
        System.out.println("Durchschnittliche Laufzeit a: " + averageA / 10);
        System.out.println("Durchschnittliche Laufzeit b: " + averageB / 10);
        System.out.println("Durchschnittliche Laufzeit c: " + averageC / 10);
        System.out.println("Durchschnittliche Laufzeit d: " + averageD / 10);
        System.out.println("Durchschnittliche Laufzeit e: " + averageE / 10);
        System.out.println("Durchschnittliche Laufzeit f: " + averageF / 10);
        System.out.println("Durchschnittliche Laufzeit g: " + averageG / 10);
        System.out.println("Durchschnittliche Laufzeit h: " + averageH / 10);
        System.out.println("Durchschnittliche Laufzeit i: " + averageI / 10);
        System.out.println("Durchschnittliche Laufzeit j: " + averageJ / 10);
        System.out.println("Durchschnittliche Laufzeit k: " + averageK / 10);
        System.out.println("Durchschnittliche Laufzeit l: " + averageL / 10);


        /*
        Durchlauf1
            Programmlaufzeit insertionSort 100 a: 197900 ns
            Programmlaufzeit insertionSort 1.000 b: 42830300 ns
            Programmlaufzeit insertionSort 10.000 c: 36054400 ns
            Programmlaufzeit insertionSort 100.000 d: 3260511200 ns
            Programmlaufzeit Bubblesort 100 e : 495800 ns
            Programmlaufzeit Bubblesort 1.000 f: 9976400 ns
            Programmlaufzeit Bubblesort 10.000 g  : 48969200 ns
            Programmlaufzeit Bubblesort 100.000 h: 5244359900 ns
            Programmlaufzeit bubbleSortNew 100 i: 9400 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 898800 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 72757700 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 5648173900 ns
            Durchlauf2
            Programmlaufzeit insertionSort 100 a: 79400 ns
            Programmlaufzeit insertionSort 1.000 b: 53800 ns
            Programmlaufzeit insertionSort 10.000 c: 387800 ns
            Programmlaufzeit insertionSort 100.000 d: 1127800 ns
            Programmlaufzeit Bubblesort 100 e : 327600 ns
            Programmlaufzeit Bubblesort 1.000 f: 2290800 ns
            Programmlaufzeit Bubblesort 10.000 g  : 77906800 ns
            Programmlaufzeit Bubblesort 100.000 h: 4751483100 ns
            Programmlaufzeit bubbleSortNew 100 i: 9200 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 341500 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 27983700 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 4521707900 ns
            Durchlauf3
            Programmlaufzeit insertionSort 100 a: 2200 ns
            Programmlaufzeit insertionSort 1.000 b: 9800 ns
            Programmlaufzeit insertionSort 10.000 c: 626900 ns
            Programmlaufzeit insertionSort 100.000 d: 766800 ns
            Programmlaufzeit Bubblesort 100 e : 18400 ns
            Programmlaufzeit Bubblesort 1.000 f: 559200 ns
            Programmlaufzeit Bubblesort 10.000 g  : 52893100 ns
            Programmlaufzeit Bubblesort 100.000 h: 4454533500 ns
            Programmlaufzeit bubbleSortNew 100 i: 7800 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 458200 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 46014800 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 4323935500 ns
            Durchlauf4
            Programmlaufzeit insertionSort 100 a: 1200 ns
            Programmlaufzeit insertionSort 1.000 b: 3700 ns
            Programmlaufzeit insertionSort 10.000 c: 44300 ns
            Programmlaufzeit insertionSort 100.000 d: 302900 ns
            Programmlaufzeit Bubblesort 100 e : 8200 ns
            Programmlaufzeit Bubblesort 1.000 f: 508400 ns
            Programmlaufzeit Bubblesort 10.000 g  : 36695700 ns
            Programmlaufzeit Bubblesort 100.000 h: 4219880600 ns
            Programmlaufzeit bubbleSortNew 100 i: 8900 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 544000 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 54150000 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 4787004200 ns
            Durchlauf5
            Programmlaufzeit insertionSort 100 a: 1400 ns
            Programmlaufzeit insertionSort 1.000 b: 7000 ns
            Programmlaufzeit insertionSort 10.000 c: 58000 ns
            Programmlaufzeit insertionSort 100.000 d: 368900 ns
            Programmlaufzeit Bubblesort 100 e : 19700 ns
            Programmlaufzeit Bubblesort 1.000 f: 691600 ns
            Programmlaufzeit Bubblesort 10.000 g  : 55611800 ns
            Programmlaufzeit Bubblesort 100.000 h: 7106007200 ns
            Programmlaufzeit bubbleSortNew 100 i: 14700 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 708300 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 63516300 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 5965624000 ns
            Durchlauf6
            Programmlaufzeit insertionSort 100 a: 1300 ns
            Programmlaufzeit insertionSort 1.000 b: 9100 ns
            Programmlaufzeit insertionSort 10.000 c: 63200 ns
            Programmlaufzeit insertionSort 100.000 d: 379400 ns
            Programmlaufzeit Bubblesort 100 e : 18400 ns
            Programmlaufzeit Bubblesort 1.000 f: 595200 ns
            Programmlaufzeit Bubblesort 10.000 g  : 56524000 ns
            Programmlaufzeit Bubblesort 100.000 h: 6245692900 ns
            Programmlaufzeit bubbleSortNew 100 i: 9900 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 413600 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 30571800 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 4193754100 ns
            Durchlauf7
            Programmlaufzeit insertionSort 100 a: 1500 ns
            Programmlaufzeit insertionSort 1.000 b: 4300 ns
            Programmlaufzeit insertionSort 10.000 c: 52900 ns
            Programmlaufzeit insertionSort 100.000 d: 557600 ns
            Programmlaufzeit Bubblesort 100 e : 14000 ns
            Programmlaufzeit Bubblesort 1.000 f: 854400 ns
            Programmlaufzeit Bubblesort 10.000 g  : 66042700 ns
            Programmlaufzeit Bubblesort 100.000 h: 4198332400 ns
            Programmlaufzeit bubbleSortNew 100 i: 5800 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 423100 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 34347900 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 5256157700 ns
            Durchlauf8
            Programmlaufzeit insertionSort 100 a: 900 ns
            Programmlaufzeit insertionSort 1.000 b: 2200 ns
            Programmlaufzeit insertionSort 10.000 c: 19700 ns
            Programmlaufzeit insertionSort 100.000 d: 189000 ns
            Programmlaufzeit Bubblesort 100 e : 5300 ns
            Programmlaufzeit Bubblesort 1.000 f: 314500 ns
            Programmlaufzeit Bubblesort 10.000 g  : 26428300 ns
            Programmlaufzeit Bubblesort 100.000 h: 4500957600 ns
            Programmlaufzeit bubbleSortNew 100 i: 5500 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 352700 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 33787800 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 3954620000 ns
            Durchlauf9
            Programmlaufzeit insertionSort 100 a: 1000 ns
            Programmlaufzeit insertionSort 1.000 b: 2400 ns
            Programmlaufzeit insertionSort 10.000 c: 21300 ns
            Programmlaufzeit insertionSort 100.000 d: 213400 ns
            Programmlaufzeit Bubblesort 100 e : 5900 ns
            Programmlaufzeit Bubblesort 1.000 f: 340400 ns
            Programmlaufzeit Bubblesort 10.000 g  : 25463200 ns
            Programmlaufzeit Bubblesort 100.000 h: 4113937700 ns
            Programmlaufzeit bubbleSortNew 100 i: 8600 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 592400 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 51973200 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 4041563900 ns
            Durchlauf10
            Programmlaufzeit insertionSort 100 a: 800 ns
            Programmlaufzeit insertionSort 1.000 b: 4100 ns
            Programmlaufzeit insertionSort 10.000 c: 24300 ns
            Programmlaufzeit insertionSort 100.000 d: 239900 ns
            Programmlaufzeit Bubblesort 100 e : 6700 ns
            Programmlaufzeit Bubblesort 1.000 f: 396000 ns
            Programmlaufzeit Bubblesort 10.000 g  : 47554600 ns
            Programmlaufzeit Bubblesort 100.000 h: 4211858300 ns
            Programmlaufzeit bubbleSortNew 100 i: 9400 ns
            Programmlaufzeit bubbleSortNew 1.000 j: 663700 ns
            Programmlaufzeit bubbleSortNew 10.000 k: 52366400 ns
            Programmlaufzeit bubbleSortNew 100.000 l: 4494828400 ns
            Durchschnittliche Laufzeit a: 28760
            Durchschnittliche Laufzeit b: 4292670
            Durchschnittliche Laufzeit c: 3735280
            Durchschnittliche Laufzeit d: 326465690
            Durchschnittliche Laufzeit e: 92000
            Durchschnittliche Laufzeit f: 1652690
            Durchschnittliche Laufzeit g: 49408940
            Durchschnittliche Laufzeit h: 4904704320
            Durchschnittliche Laufzeit i: 8920
            Durchschnittliche Laufzeit j: 539630
            Durchschnittliche Laufzeit k: 46746960
            Durchschnittliche Laufzeit l: 4718736960

        */


    }

}



