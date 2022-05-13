import java.util.Arrays;

public class BubbleSort extends InsertionSort{

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
}
