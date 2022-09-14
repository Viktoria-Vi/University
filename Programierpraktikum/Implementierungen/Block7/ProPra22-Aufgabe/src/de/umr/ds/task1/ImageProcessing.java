package de.umr.ds.task1;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

public class ImageProcessing {

    /**
     * Loads an image from the given file path
     *
     * @param path The path to load the image from
     * @return BufferedImage
     */
    private static BufferedImage loadImage(String path) throws IOException {
        return ImageIO.read(new File(path));

    }


    /**
     * Converts the input RGB image to a single-channel gray scale array.
     *
     * @param img The input RGB image
     * @return A 2-D array with intensities
     */
    private static int[][] convertToGrayScaleArray(BufferedImage img) {
        int[][] grayScale = new int[img.getWidth()][img.getHeight()];
        for (int i = 0; i < img.getWidth(); i++) {
            for (int j = 0; j < img.getHeight(); j++) {
                int pixel = img.getRGB(i, j);
                Color color = new Color(pixel, true);
                grayScale[i][j] = (int) (0.299 * color.getRed() + 0.587 * color.getGreen() + 0.114 * color.getBlue());
            }
        }
        return grayScale;
    }

    /**
     * Converts a single-channel (gray scale) array to an RGB image.
     *
     * @param img The input image array
     * @return BufferedImage
     */
    private static BufferedImage convertToBufferedImage(int[][] img) {
        int width = img.length;
        int height = img[0].length;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
                int rgb = img[i][j] << 16 | img[i][j] << 8 | img[i][j];
                image.setRGB(i, j, rgb);
            }
        }
        return image;
    }

    /**
     * Saves an image to the given file path
     *
     * @param img  The RGB image
     * @param path The path to save the image to
     */
    private static void saveImage(BufferedImage img, String path) throws IOException {

        ImageIO.write(img, "jpg", new File(path + ".jpg"));
    }

    /**
     * Converts input image to gray scale and applies the kernel.
     *
     * @param img    The RGB input image
     * @param kernel The kernel to apply
     * @return The convolved gray-scale image
     */
    private static BufferedImage filter(BufferedImage img, Kernel kernel) {
        return convertToBufferedImage(kernel.convolvePro(kernel.convolve(convertToGrayScaleArray(img))));
    }





    public static void main(String[] args) {
        BufferedImage img;
        try {
            img = loadImage("C:\\Users\\Viktoria-PC\\OneDrive\\Desktop\\GitHub\\University\\Programierpraktikum\\Implementierungen\\Block7\\ProPra22-Aufgabe\\example.jpg");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }

        try {
            saveImage(filter(img, Kernels.BoxBlur3x3()), "C:\\Users\\Viktoria-PC\\OneDrive\\Desktop\\GitHub\\University\\Programierpraktikum\\Implementierungen\\Block7\\ProPra22-Aufgabe\\src\\de\\umr\\ds\\task1\\Bitch1");
            saveImage(filter(img, Kernels.GaussianBlur5x5()), "C:\\Users\\Viktoria-PC\\OneDrive\\Desktop\\GitHub\\University\\Programierpraktikum\\Implementierungen\\Block7\\ProPra22-Aufgabe\\src\\de\\umr\\ds\\task1\\Bitch2");
            saveImage(filter(img, Kernels.MotionBlur()), "C:\\Users\\Viktoria-PC\\OneDrive\\Desktop\\GitHub\\University\\Programierpraktikum\\Implementierungen\\Block7\\ProPra22-Aufgabe\\src\\de\\umr\\ds\\task1\\Bitch3");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }


    }


}
