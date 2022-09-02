import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;


import javax.imageio.ImageIO;

public class Player {
    boolean facingLeft = false;

    Vec2 pos;
    Vec2 posLastFrame;
    Vec2 gravity;

    float movementSpeed;

    BoundingBox boundingBox;
    int numberAnimationStates = 0;
    int displayedAnimationState = 0;
    int moveCounter = 0;


    // Tiles for movement animation
    protected ArrayList<BufferedImage> tilesWalk;

    Level l;

    Player(Level l) {
        this.pos = new Vec2(0, 0);
        this.posLastFrame = new Vec2(0, 0);
        this.gravity = new Vec2(0, 0.35f);
        this.movementSpeed = 7.5f;

        this.l = l;
        tilesWalk = new ArrayList<BufferedImage>();
        try {
            // Tiles for movement animation
            BufferedImage imageWalk;
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk01.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk02.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk03.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk04.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk05.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk06.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk07.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk08.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk09.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk10.png"));
            tilesWalk.add(imageWalk);
            imageWalk = ImageIO.read(new File(Platformer.BasePath + "Player/p1_walk/PNG/p1_walk11.png"));
            tilesWalk.add(imageWalk);

        } catch (IOException e) {
            e.printStackTrace();
        }

        boundingBox = new BoundingBox(0, 0, tilesWalk.get(0).getWidth(), tilesWalk.get(0).getHeight());
        numberAnimationStates = tilesWalk.size();

    }

    public void move(int deltaX, int deltaY) {
        if (deltaX < 0) {
            facingLeft = true;
            pos.x = pos.x - movementSpeed;
        } else if (deltaX > 0) {
            pos.x = pos.x + movementSpeed;
            facingLeft = false;
        }

        if (deltaY < 0) {
            pos.y = pos.y - movementSpeed;
        } else if (deltaY > 0) {
            pos.y = pos.y + movementSpeed;
        }

        getNextImage();
    }


    public void updateBoundingBox() {
        // update BoundingBox
        boundingBox.min.x = pos.x;
        boundingBox.min.y = pos.y;

        boundingBox.max.x = pos.x + tilesWalk.get(0).getWidth();
        boundingBox.max.y = pos.y + tilesWalk.get(0).getHeight();
    }

    public BufferedImage getPlayerImage() {
        BufferedImage b = getNextImage();
        if (facingLeft) {
            AffineTransform tx = AffineTransform.getScaleInstance(-1, 1);
            tx.translate(-b.getWidth(null), 0);
            AffineTransformOp op = new AffineTransformOp(tx, AffineTransformOp.TYPE_NEAREST_NEIGHBOR);
            b = op.filter(b, null);
        }
        return b;
    }

    private BufferedImage getNextImage() {
        moveCounter++;
        if (moveCounter >= 3) {
            displayedAnimationState++;
            moveCounter = 0;
        }
        if (displayedAnimationState > numberAnimationStates - 1) {
            displayedAnimationState = 0;
        }
        return tilesWalk.get(displayedAnimationState);

    }
}