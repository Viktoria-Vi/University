import java.awt.*;

public class TileSpringBoard extends Tile{

    int springUpFrames = 0;

    public TileSpringBoard(int imgIndex, float x, float y){
        super(imgIndex,x,y);
        bb.min.y+=Tile.tileSize*0.5f;
    }

    public void onCollision(Player p){
        p.pos.y -= 70;
        springUpFrames = 16;
        p.playSound(Platformer.BasePath +"Sound/jump3.wav");
    }

    public  void draw(Graphics2D g2d, float offsetX, float offsetY){
        if(springUpFrames>0)
            g2d.drawImage(images.get(imageIndex+1), null, (int)(bb.min.x-offsetX), (int)(bb.min.y-offsetY-Tile.tileSize*0.5f));
        else
            g2d.drawImage(images.get(imageIndex), null, (int)(bb.min.x-offsetX), (int)(bb.min.y-offsetY-Tile.tileSize*0.5f));
        springUpFrames--;
    }

    public void drawStatic(Graphics2D g2d, float offsetX, float offsetY){

    }
}
