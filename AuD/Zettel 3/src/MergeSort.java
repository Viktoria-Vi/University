import java.util.Arrays;

public class MergeSort {

    public static int sortAndCount(int[] array){
        // TODO: Aufgabe 3.4 b)
        if(array.length <= 1) {
            return 0; // Array already sorted, 0 swaps
        }

        // Split Array in two
        int mid = array.length / 2;
        int[] left = new int[mid];
        int[] right = new int[array.length - mid];
        System.arraycopy(array, 0, left, 0, mid);
        System.arraycopy(array, mid, right, 0, array.length - mid);

        // recursive sort and swaps count
        int count = sortAndCount(left) + sortAndCount(right);

        // merge sorted Arrays
        int i = 0, j = 0, k = 0; // Index for left, right and merged Array
        while (i < left.length && j < right.length) {
            if (left[i] <= right[j]) {
                array[k] = left[i];
                i++;
            } else {
                array[k] = right[j];
                j++;
                count += mid - i;
            }
            k++;
        }

        // copy last elements of left[] in merged array
        while (i < left.length) {
            array[k] = left[i];
            i++;
            k++;
        }

        // copy last elements of right[] in merged array
        while (j < right.length) {
            array[k] = right[j];
            j++;
            k++;
        }
        return count;
    }


    public static void main(String[] args) {
        int[] testArray = {9, 1, 6, 4, 5};
        int count = sortAndCount(testArray);
        System.out.println("Swap amount:" + count);
        System.out.println("Sorted Array:" + Arrays.toString(testArray));


    }

}