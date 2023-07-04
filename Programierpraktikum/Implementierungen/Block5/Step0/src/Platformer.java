import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.geom.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.Serial;
import javax.imageio.ImageIO;
import javax.swing.JFrame;

public class Platformer extends JFrame {
    @Serial
    private static final long serialVersionUID = 5736902251450559962L;

    public Platformer() {
        this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        this.setTitle("HelloWorld");
        this.setBounds(0, 0, 804, 736);
        this.setVisible(true);
    }

    @Override
    public void paint(Graphics g) {
        BufferedImage image = null;
        File file = new File("Step0/src/bg.png");
        try {
            image = ImageIO.read(file);
        } catch (IOException e) {
            e.printStackTrace();
        }

        int width = image.getWidth();
        int heigth = image.getHeight();

        Graphics2D g2d = (Graphics2D) g; // cast to Graphics2D
        g2d.drawImage(image, 0, 0, this);
    }
}

