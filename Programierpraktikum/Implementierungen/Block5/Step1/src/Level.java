import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.*;
import java.io.File;
import java.io.IOException;

public class Level {

    BufferedImage image;
    BufferedImage outImage;
    public Level(BufferedImage image){
        this.image = image;
    }

    public void drawLevel() {
        File water = new File("Step1/assets/Tiles/liquidWaterTop_mid.png");
        File grass = new File("Step1/assets/Tiles/grassMid.png");
        BufferedImage waterTile;
        BufferedImage grassTile;
        int width = image.getWidth();
        int height = image.getHeight();
        try {
            waterTile = ImageIO.read(water);
            grassTile = ImageIO.read(grass);
            this.outImage = new BufferedImage(width*70, height*70, BufferedImage.TYPE_INT_RGB);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }


        Graphics2D g2d = this.outImage.createGraphics();
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {

                Color color = new Color(image.getRGB(i,j));
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

