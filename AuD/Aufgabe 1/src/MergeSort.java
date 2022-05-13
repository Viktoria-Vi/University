public class MergeSort {
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
}
