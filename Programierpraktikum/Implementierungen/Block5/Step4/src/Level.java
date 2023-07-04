import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.imageio.ImageIO;

public class Level {
    BufferedImage levelImg, resultingLevelImg, backgroundImage;
    public Player player;
    Vec2 lvlSize;
    float offsetX;
    ArrayList<Tile> tiles;

    public Level(String levelMapPath, String levelBackgroundMapPath) {
        try {
            backgroundImage = ImageIO.read(new File(levelBackgroundMapPath));
            tiles = new ArrayList<Tile>();
            lvlSize = new Vec2(0, 0);
            offsetX = 0.0f;

            try {
                // Level image
                levelImg = ImageIO.read(new File(levelMapPath));

                // Tile images
                Tile.images.add(ImageIO.read(new File("Step4/assets/Tiles/grassMid.png")));
                Tile.images.add(ImageIO.read(new File("Step4/assets/Tiles/liquidWaterTop_mid.png")));
            } catch (IOException e) {
                e.printStackTrace();
            }
            initLevel();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void update() {

        //update camera offset
        float diff = (player.boundingBox.max.x + player.boundingBox.min.x) * 0.5f - 500 - offsetX;

        int noMoveZone = 100;

        if (Math.abs(diff) > noMoveZone) {
            if (diff < 0)
                diff += noMoveZone;
            else
                diff -= noMoveZone;
            offsetX += diff;
        }


        if (offsetX < 0)
            offsetX = 0;

        if (offsetX > resultingLevelImg.getWidth() - 1000)
            offsetX = resultingLevelImg.getWidth() - 1000;
    }

    public void initLevel() {
        lvlSize.x = Tile.tileSize * levelImg.getWidth(null);
        lvlSize.y = Tile.tileSize * levelImg.getHeight(null);

        resultingLevelImg = new BufferedImage((int) lvlSize.x, (int) lvlSize.y, BufferedImage.TYPE_INT_RGB);

        Graphics2D g2d;
        g2d = (Graphics2D) resultingLevelImg.getGraphics();

        for (int x = 0; x < resultingLevelImg.getWidth(null); x += backgroundImage.getWidth()) {

            g2d.drawImage(backgroundImage, null, x, 0);

            AffineTransform tx = AffineTransform.getScaleInstance(-1, 1);
            tx.translate(-backgroundImage.getWidth(null), 0);
            AffineTransformOp op = new AffineTransformOp(tx, AffineTransformOp.TYPE_NEAREST_NEIGHBOR);
            backgroundImage = op.filter(backgroundImage, null);
        }

        for (int y = 0; y < levelImg.getHeight(null); y++) {
            for (int x = 0; x < levelImg.getWidth(null); x++) {
                Color color = new Color(levelImg.getRGB(x, y));

                Tile t = null;

                // Compare color of pixels in order to select the corresponding tiles

                if (color.equals(Color.BLACK))
                    t = new Tile(0, x * Tile.tileSize, y * Tile.tileSize);
                if (color.equals(Color.BLUE))
                    t = new Tile(1, x * Tile.tileSize, y * Tile.tileSize);

                if (t != null) {
                    tiles.add(t);
                    // Get graphics context
                    g2d = (Graphics2D) resultingLevelImg.getGraphics();

                    // Draw tile into data of image
                    t.drawToBackground(g2d, 0, 0);
                }
            }
        }
        g2d.dispose();
    }

    public Image getResultingImage() {
        return resultingLevelImg;
    }

}
