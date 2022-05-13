import java.util.Arrays;
import java.util.Random;

public class QuickSort extends SortTools {

    public static void quickSort(int[] arr, int left, int right) {
        if(left < right){
        int pos = partition(arr, left, right);
        if (left < pos - 1) {
            quickSort(arr, left, pos - 1);
        }
        if (right > pos) {
            quickSort(arr, pos + 1, right);
        }
        }
    }

    public static int partition(int[] arr, int left, int right) {
        int pivot = arr[left];
        while (left <= right) {
            while (arr[left] < pivot)
                left++;
            while (arr[right] > pivot)
                right--;
            if (left <= right) {
                int tmp = arr[left];
                arr[left] = arr[right];
                arr[right] = tmp;
                left++;
                right--;
            }
        }
        return left;
    }


    public static int partitionRand(int[] arr, int left, int right) {
        Random rand = new Random();
        int pivot = rand.nextInt(right - left) + left;
        swap(arr, pivot, left);
        return partition(arr, left, right);
    }

    public static void quickSortRand(int[] arr, int left, int right) {
        if (right > left) {
            int partition = partitionRand(arr, left, right);
            if (left < partition - 1) {
                quickSortRand(arr, left, partition - 1);
            }
            if (right > partition) {
                quickSortRand(arr, partition, right);
            }
        }
    }

    public static int partitionNewRand(int[] arr, int left, int right) {
        Random rand = new Random();
        int pivot = Math.max(rand.nextInt(right - left) + left,
                Math.max(rand.nextInt(right - left) + left,
                        rand.nextInt(right - left) + left));

        swap(arr, pivot, left);
        return partition(arr, left, right);
    }

    public static void quickSortNewRand(int[] arr, int left, int right) {
        if (right > left) {
            int partition = partitionNewRand(arr, left, right);
            if (left < partition - 1) {
                quickSortNewRand(arr, left, partition - 1);
            }
            if (right > partition) {
                quickSortNewRand(arr, partition, right);
            }
        }
    }

    static void quickSortTriRandom(int[] arr, int left, int right) {
        if (left < right) {


            int[] piv;
            piv = partitionTriNumbers(arr, left, right);

            quickSortTriRandom(arr, left, piv[0] - 1);
            quickSortTriRandom(arr, piv[0] + 1, piv[1] - 1);
            quickSortTriRandom(arr, piv[1] + 1, right);
        }
    }

    static int[] partitionTriNumbers(int[] arr, int left, int right) {


        Random rand = new Random();
        int pivot1 = rand.nextInt(right - left) + left, pivot2 = rand.nextInt(right - left) + left;

        if(pivot1 > pivot2) {
            return partitionTri(arr, left, right, pivot2, pivot1);
        }
        return partitionTri(arr, left, right, pivot1, pivot2);

    }

    static void quickSortNewTriRandom(int[] arr, int left, int right) {
        if (left < right) {


            int[] piv;
            piv = partitionNewTriNumbers(arr, left, right);

            quickSortNewTriRandom(arr, left, piv[0] - 1);
            quickSortNewTriRandom(arr, piv[0] + 1, piv[1] - 1);
            quickSortNewTriRandom(arr, piv[1] + 1, right);
        }
    }

    static int[] partitionNewTriNumbers(int[] arr, int left, int right) {
        Random rand = new Random();

        int[] randomNumbers = {rand.nextInt(right - left) + left, rand.nextInt(right - left) + left, rand.nextInt(right - left) + left
                , rand.nextInt(right - left) + left, rand.nextInt(right - left) + left};
        Arrays.sort(randomNumbers);

        int pivot1 = randomNumbers[2], pivot2 = randomNumbers[4];

        return partitionTri(arr, left, right, pivot1, pivot2);
    }

    private static int[] partitionTri(int[] arr, int left, int right, int pivot1, int pivot2) {
        int i = left + 1;

        for (int j = left; j < pivot1; j++) {
            if (arr[j] < pivot1) {
                i++;
                swap(arr, i, j);
            }
        }
        swap(arr, i + 1, pivot1);
        int ret1 = i + 1;

        int k = pivot1 + 1;

        for (int j = pivot1; j <= pivot2; j++) {
            if (arr[j] < pivot2) {
                k++;
                swap(arr, k, j);
            }
        }
        swap(arr, k + 1, pivot2);
        int ret2 = k + 1;

        partition(arr, pivot2, right);


        return new int[]{ret1, ret2};
    }

    public static void main(String[] args) {
        int[] a = createSequenceDec(100000);
        quickSort(a,0,a.length-1);
    }
}
