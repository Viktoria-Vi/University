package de.umr.ds.task1;

import org.junit.jupiter.api.Assertions;

class KernelTest {

    Kernel kernel = new Kernel(new double[][]{
            {1, 0, 1},
            {0, 1, 0},
            {1, 0, 1}});

    int[][] testImg = new int[][]{
            {0, 1, 1, 1, 0, 0, 0},
            {0, 0, 1, 1, 1, 0, 0},
            {0, 0, 0, 1, 1, 1, 0},
            {0, 0, 0, 1, 1, 0, 0},
            {0, 0, 1, 1, 0, 0, 0},
            {0, 1, 1, 0, 0, 0, 0},
            {1, 1, 0, 0, 0, 0, 0}};

    int[][] expectedOutput = new int[][]{
            {1, 4, 3, 4, 1},
            {1, 2, 4, 3, 3},
            {1, 2, 3, 4, 1},
            {1, 3, 3, 1, 1},
            {3, 3, 1, 1, 0}
    };


    @org.junit.jupiter.api.Test
    void convolve() {
        int[][] testOutput = kernel.convolve(testImg);
        Assertions.assertEquals(4, testOutput[0][3]);
        for (int i = 0; i < testOutput[0].length; i++) {
            Assertions.assertArrayEquals(expectedOutput[i], testOutput[i]);
        }
    }
}