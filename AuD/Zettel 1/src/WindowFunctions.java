/**
 * Adaptation from window functions known from stream processing analytics to process arrays in a stream-like fashion.
 */
public class WindowFunctions {

    /**
     * This sliding window function computes the sum of multiple windowSize-many consecutive elements in an array.
     * It slides one element at a time, producing an overlap of windows.
     *
     * @param input      The array to process with sliding window (needs to be have at least windowSize elements).
     * @param windowSize The positive size of the window.
     * @return The results for each window when sliding one element at a time.
     */
    public static int[] slidingWindowSum(int[] input, int windowSize) {
        int[] result = new int[input.length - windowSize + 1];
        int previousSumWOFirst = 0;
        for (int i = 0; i < input.length; i++) {
            int sum = 0;
            if (i == 0) {
                //erste iteration mit n = windowSize elementen
                for (int j = 0; j < windowSize; j++) {
                    sum += input[i + j];
                }
            } else {
                //addieren des letzten elements mit dem gespeicherten Fenster ohne erstes element
                sum = previousSumWOFirst + input[i + windowSize - 1];
            }
            //berechne summe ohne erstes element für folgende iteration
            previousSumWOFirst = sum - input[i];
            result[i] = sum;
        }
        return result;
    }

    /**
     * This tumbling window function computes the average of multiple windowSize-many consecutive elements in an array.
     * It slides windowSize element at a time, producing no overlap of windows.
     *
     * @param input      The array to process with tumbling window
     *                   (needs to have an integer number of distinct windows with exactly windowSize elements).
     * @param windowSize The positive size of the window.
     * @return The results for each window when sliding windowSize element at a time.
     */
    public static double[] tumblingWindowAverage(int[] input, int windowSize) {
        int count = 0;
        double[] result = new double[input.length - windowSize + 1];
        for (int i = 0; i < input.length; i += windowSize) {
            int sum = 0;
            for (int j = 0; j < windowSize; j++) {
                sum += input[i + j];
            }
            result[count++] = sum / (double) windowSize;
        }
        return result;
    }

}
