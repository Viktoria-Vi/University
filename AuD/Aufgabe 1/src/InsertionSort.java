public class InsertionSort extends SortTools{
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
}
