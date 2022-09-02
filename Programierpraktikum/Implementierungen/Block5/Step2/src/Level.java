import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.imageio.ImageIO;


public class Level {
    BufferedImage levelImg, resultingLevelImg;
    Vec2 lvlSize;
    float offsetX;
    public static ArrayList<BufferedImage> tileImages = new ArrayList<>();
    public int tileSize = 70;
    public Player player;

    public Level(String levelMapPath) {
        try {
            lvlSize = new Vec2(0, 0);
            offsetX = 0.0f;

            try {
                // Level image
                levelImg = ImageIO.read(new File(levelMapPath));

                // Tile images
                tileImages.add(ImageIO.read(new File("Step2/assets/Tiles/grassMid.png")));
                tileImages.add(ImageIO.read(new File("Step2/assets/Tiles/liquidWaterTop_mid.png")));
            } catch (IOException e) {
                e.printStackTrace();
            }
            initLevel();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update() {
        if (offsetX < 0)
            offsetX = 0;

        if (offsetX > resultingLevelImg.getWidth() - 1000)
            offsetX = resultingLevelImg.getWidth() - 1000;
    }

    public void initLevel() {
        lvlSize.x = tileSize * levelImg.getWidth(null);
        lvlSize.y = tileSize * levelImg.getHeight(null);

        resultingLevelImg = new BufferedImage((int) lvlSize.x, (int) lvlSize.y, BufferedImage.TYPE_INT_RGB);

        Graphics2D g2d;
        g2d = (Graphics2D) resultingLevelImg.getGraphics();

        for (int y = 0; y < levelImg.getHeight(null); y++) {
            for (int x = 0; x < levelImg.getWidth(null); x++) {

                Color color = new Color(levelImg.getRGB(x, y));

                int tileIndex = -1;

                // Compare color of pixels in order to select the corresponding tiles

                if (color.equals(Color.BLACK))
                    tileIndex = 0;
                if (color.equals(Color.BLUE))
                    tileIndex = 1;

                if (tileIndex < 0)
                    continue;

                g2d.drawImage(tileImages.get(tileIndex), null, x * tileSize, y * tileSize);
            }
        }
        g2d.dispose();
    }

    public Image getResultingImage() {
        return resultingLevelImg;
    }
}