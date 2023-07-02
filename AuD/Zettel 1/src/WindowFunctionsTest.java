import static org.junit.jupiter.api.Assertions.assertArrayEquals;

class WindowFunctionsTest {


    @org.junit.jupiter.api.Test
    void slidingWindowSum() {
        int[] input = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        int[] result = WindowFunctions.slidingWindowSum(input, 3);
        int[] expected = {6, 9, 12, 15, 18, 21, 24, 27, 30};
        assertArrayEquals(expected, result);
    }

    @org.junit.jupiter.api.Test
    void tumblingWindowAverage() {
        int[] input = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
        double[] result = WindowFunctions.tumblingWindowAverage(input, 3);
        double[] expected = {2, 5, 8};
        assertArrayEquals(expected, result);
    }
}