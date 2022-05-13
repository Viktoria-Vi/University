import java.util.Random;

public class SearchAlg extends SortTools {

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
        int firstThird = j + (r - j) / 3;
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
    public static void runBoyRun() {
        int[] a = createSequenceInc(100000),
                b = createSequenceInc(1000000),
                c = createSequenceInc(100000000);
        //int[] d = createSequenceInc(685154321);
        long averageA = 0, averageB = 0, averageC = 0, averageD = 0, averageE = 0, averageF = 0, averageG = 0, averageH = 0;
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

            long startE = System.nanoTime();
            lineSearch(a, -1312);
            long endE = System.nanoTime();
            averageE += endE - startE;

            long startF = System.nanoTime();
            lineSearch(b, -1312);
            long endF = System.nanoTime();
            averageF += endF - startF;

            long startG = System.nanoTime();
            lineSearch(c, -1312);
            long endG = System.nanoTime();
            averageG += endG - startG;

            /*long startH = System.nanoTime();
            lineSearch(d, -1312);
            long endH = System.nanoTime();
            averageH += endH - startH;*/


        }
        System.out.println("Gesamtlaufzeit lineSearch 100000 = " + averageA + " ns");
        System.out.println("Gesamtlaufzeit lineSearch 1000000 = " + averageB + " ns");
        System.out.println("Gesamtlaufzeit lineSearch 10000000 = " + averageC + " ns");
        //System.out.println("Gesamtlaufzeit lineSearch 685154321 = " + averageD + " ns");
        System.out.println("Gesamtlaufzeit lineSearch(-1) 100000 = " + averageE + " ns");
        System.out.println("Gesamtlaufzeit lineSearch(-1) 1000000 = " + averageF + " ns");
        System.out.println("Gesamtlaufzeit lineSearch(-1) 10000000 = " + averageG + " ns");
        //System.out.println("Gesamtlaufzeit lineSearch(-1) 685154321 = " + averageH + " ns");

        averageA = 0;
        averageB = 0;
        averageC = 0;
        //averageD = 0;
        averageE = 0;
        averageF = 0;
        averageG = 0;
        //averageH = 0;
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
            long startE = System.nanoTime();
            binSearch(a, -1312, 0, a.length - 1);
            long endE = System.nanoTime();
            averageE += endE - startE;

            long startF = System.nanoTime();
            binSearch(b, -1312, 0, b.length - 1);
            long endF = System.nanoTime();
            averageF += endF - startF;

            long startG = System.nanoTime();
            binSearch(c, -1312, 0, c.length - 1);
            long endG = System.nanoTime();
            averageG += endG - startG;

            /*long startH = System.nanoTime();
            binSearch(d, -1312,0,d.length-1);
            long endH = System.nanoTime();
            averageH += endH - startH;*/


        }
        System.out.println("Gesamtlaufzeit binSearch 100000 = " + averageA + " ns");
        System.out.println("Gesamtlaufzeit binSearch 1000000 = " + averageB + " ns");
        System.out.println("Gesamtlaufzeit binSearch 10000000 = " + averageC + " ns");
        //System.out.println("Gesamtlaufzeit binSearch 685154321 = " + averageD + " ns");
        System.out.println("Gesamtlaufzeit binSearch(-1) 100000 = " + averageE + " ns");
        System.out.println("Gesamtlaufzeit binSearch(-1) 1000000 = " + averageF + " ns");
        System.out.println("Gesamtlaufzeit binSearch(-1) 10000000 = " + averageG + " ns");
        //System.out.println("Gesamtlaufzeit binSearch(-1) 685154321 = " + averageH + " ns");

        averageA = 0;
        averageB = 0;
        averageC = 0;
        //averageD = 0;
        averageE = 0;
        averageF = 0;
        averageG = 0;
        //averageH = 0;
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
            long startE = System.nanoTime();
            binSearchNew(a, -1312, 0, a.length - 1);
            long endE = System.nanoTime();
            averageE += endE - startE;

            long startF = System.nanoTime();
            binSearchNew(b, -1312, 0, b.length - 1);
            long endF = System.nanoTime();
            averageF += endF - startF;

            long startG = System.nanoTime();
            binSearchNew(c, -1312, 0, c.length - 1);
            long endG = System.nanoTime();
            averageG += endG - startG;

            /*long startH = System.nanoTime();
            binSearchNew(d, -1312,0,d.length-1);
            long endH = System.nanoTime();
            averageH += endH - startH;*/


        }
        System.out.println("Gesamtlaufzeit binSearchNew 100000 = " + averageA + " ns");
        System.out.println("Gesamtlaufzeit binSearchNew 1000000 = " + averageB + " ns");
        System.out.println("Gesamtlaufzeit binSearchNew 10000000 = " + averageC + " ns");
        //System.out.println("Gesamtlaufzeit binSearchNew 685154321 = " + averageD + " ns");
        System.out.println("Gesamtlaufzeit binSearchNew(-1) 100000 = " + averageE + " ns");
        System.out.println("Gesamtlaufzeit binSearchNew(-1) 1000000 = " + averageF + " ns");
        System.out.println("Gesamtlaufzeit binSearchNew(-1) 10000000 = " + averageG + " ns");
        //System.out.println("Gesamtlaufzeit binSearchNew(-1) 685154321 = " + averageH + " ns");

    }
}
