import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.ArrayList;

public class Tile {

    public static float tileSize = 70;
    public static ArrayList<BufferedImage> images = new ArrayList<>();

    public int imageIndex;
    public BoundingBox bb;

    public boolean hasRigidCollision = true;

    public Tile(int imgIndex, float x, float y){
        bb = new BoundingBox(x,y,x + tileSize,y+ tileSize);
        imageIndex = imgIndex;
    }

    public Tile(int imgIndex, float x, float y, boolean hasRigidCollision){
        bb = new BoundingBox(x,y,x + tileSize,y+ tileSize);
        imageIndex = imgIndex;
        this.hasRigidCollision = hasRigidCollision;
    }

    //this method is called every frame to draw animated/changing tiles
    public void draw(Graphics2D g2d, float offsetX, float offsetY){

    }

    //this method is called to draw the tile once onto the static background and should be used to draw non animated static tiles
    public void drawStatic(Graphics2D g2d, float offsetX, float offsetY){
        g2d.drawImage(images.get(imageIndex), null, (int)(bb.min.x -offsetX), (int)(bb.min.y-offsetY));
    }

    public void onCollision(Player p){
        p.lastValidPosition = bb.min.add(new Vec2(0,-Tile.tileSize*2));
    }
}
