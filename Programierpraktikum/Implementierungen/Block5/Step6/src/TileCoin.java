import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class TileCoin extends Tile {
	boolean collected = false;

	public TileCoin(int imgIndex, float x, float y){
		super(imgIndex,x,y);
		hasRigidCollision = false;
	}

	public void onCollision(Player p){
		if(!collected) {
			collected = true;
			p.playSound(Platformer.BasePath + "Sound/coin.wav");
			p.points++;
		}
	}

	public void drawStatic(Graphics2D g2d, float offsetX, float offsetY){

	}

	public void draw(Graphics2D g2d, float offsetX, float offsetY){
		if(!collected)
			g2d.drawImage(images.get(imageIndex), null, (int)(bb.min.x-offsetX), (int)(bb.min.y-offsetY));
	}
}
