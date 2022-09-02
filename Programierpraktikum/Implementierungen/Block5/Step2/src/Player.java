import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


public class Player {

    BufferedImage player;
    int currentPlayerState;
    Vec2 currentPos;
    Vec2 lastPos;
    Vec2 speed;
    Level l;
    List<BufferedImage> playerModels = new ArrayList<>();

    public Player(Level l, Vec2 startPos) {
        this.l = l;
        this.currentPos = startPos;
        this.lastPos = startPos;
        this.speed = new Vec2(1,0);
        try {
            for (int i = 1; i < 10; i++) {
                File file = new File("Step2/assets/Player/p1_walk/PNG/p1_walk0" + i + ".png");
                playerModels.add(ImageIO.read(file));
            }
            playerModels.add(ImageIO.read(new File("Step2/assets/Player/p1_walk/PNG/p1_walk10.png")));
            playerModels.add(ImageIO.read(new File("Step2/assets/Player/p1_walk/PNG/p1_walk11.png")));


        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        player = playerModels.get(0);
        currentPos = new Vec2(0, 0);
        speed = new Vec2(1,0);
    }

    public BufferedImage getImage() {
        return playerModels.get(currentPlayerState);
    }


    public void move(Vec2 direction) {
        lastPos = currentPos;
        currentPos.add(direction);
        player_nextState();
        }


    public BufferedImage player_nextState() {
        if (currentPlayerState == 10) {
            currentPlayerState = 0; //loop playerStates
            return playerModels.get(currentPlayerState);
        }
        this.currentPlayerState++;
        return playerModels.get(currentPlayerState);
    }


}
