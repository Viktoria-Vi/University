package de.umr.ds.task1;

/**
 * A kernel is a 2D-array. The array is transposed after initialization which
 * enables a more intuitive way of initializing a kernel. E.g a non-symmetric
 * kernel can be initialized by Kernel({{0,0,1} {0,1,0} {1,0,0}}) although the
 * array dimensions are actually [height][width].
 */
public class Kernel {

    private final double[][] k;
    private final int height;
    private final int width;

    /**
     * Initializes the kernel by its transpose.
     *
     * @param k 2D array
     */
    Kernel(double[][] k) {
        // transpose
        this.k = new double[k[0].length][k.length];
        for (int x = 0; x < k[0].length; x++)
            for (int y = 0; y < k.length; y++)
                this.k[x][y] = k[y][x];
        this.width = this.k.length;
        this.height = this.k[0].length;


        if (this.width % 2 != 1 || this.height % 2 != 1)
            throw new IllegalArgumentException("Kernel size need to be odd-numbered");
        if (this.width < 3 || this.height < 3)
            throw new IllegalArgumentException("Minimum dimension is 3");
    }

    /**
     * Convolves a single-channel image with the kernel.
     *
     * @param img A single-channel image
     * @return The convolved image
     */
    public int[][] convolve(int[][] img) {
        int imageWidth = img.length;
        int imageHeight = img[0].length;
        if (height > imageWidth || width > imageHeight) {
            throw new IllegalArgumentException("Minimum Image size must be: " + height + " x " + width);
        }
        int offsetX = (width - 1) / 2;
        int offsetY = (height - 1) / 2;

        int filteredImageWidth = imageWidth - width + 1;
        int filteredImageHeight = imageHeight - height + 1;

        int[][] filteredImage = new int[filteredImageWidth][filteredImageHeight];
        for (int i = 0; i < filteredImageWidth; i++) {
            for (int j = 0; j < filteredImageHeight; j++) {
                filteredImage[i][j] = 0;
                //img[i][j] is now upper left corner of to filter
                for (int l = 0; l < width; l++) {
                    for (int m = 0; m < height; m++) {
                        filteredImage[i][j] += img[i + l][j + m] * k[l][m];
                    }
                }
            }
        }
        return filteredImage;
    }

    public int[][] convolvePro(int[][] img) {
        int imageWidth = img.length;
        int imageHeight = img[0].length;

        int offsetX = (width - 1) / 2;
        int offsetY = (height - 1) / 2;

        int originalWidth = imageWidth + width - 1;
        int originalHeight = imageHeight + height - 1;

        int[][] originalSizeImg = new int[originalWidth][originalHeight];


        for (int i = 0; i < imageWidth; i++) {
            System.arraycopy(img[i], 0, originalSizeImg[i + offsetX], 0 + offsetY, imageHeight);
        }


        return originalSizeImg;
    }


    public int getHeight() {
        return height;
    }

    public int getWidth() {
        return width;
    }

}
