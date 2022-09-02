import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.*;
import java.io.File;
import java.io.IOException;

public class Level {

    BufferedImage inputImage;
    BufferedImage outputImage;
    public Level(BufferedImage image){
        this.inputImage = image;
    }

    public void drawLevel() {
        File water = new File("Step1/assets/Tiles/liquidWaterTop_mid.png");
        File grass = new File("Step1/assets/Tiles/grassMid.png");
        BufferedImage waterTile;
        BufferedImage grassTile;
        int width = inputImage.getWidth();
        int height = inputImage.getHeight();
        try {
            waterTile = ImageIO.read(water);
            grassTile = ImageIO.read(grass);
            this.outputImage = new BufferedImage(width*70, height*70, BufferedImage.TYPE_INT_RGB);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }


        Graphics2D g2d = this.outputImage.createGraphics();
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {

                Color color = new Color(inputImage.getRGB(i,j));
                if (color.equals(Color.BLACK)) {
                    g2d.drawImage(grassTile, i*70, j*70, null);
                }
                if (color.equals(Color.BLUE)) {
                    g2d.drawImage(waterTile, i*70, j*70, null);
                }
            }
        }
        g2d.dispose();
    }
}

