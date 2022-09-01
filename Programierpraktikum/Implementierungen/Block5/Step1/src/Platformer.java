import java.awt.*;
import java.awt.event.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.Serial;
import java.nio.Buffer;

import javax.imageio.ImageIO;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

public class Platformer extends JFrame {
    @Serial
    private static final long serialVersionUID = 5736902251450559962L;

    BufferedImage levelImg;
    int xVal = 0;
    int yVal = 0;

    int stepSize = 1;

    public Platformer() {
        //exit program when window is closed
        this.addWindowListener(new WindowAdapter() {
            public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
        });

        JFileChooser fc = new JFileChooser();
        fc.setCurrentDirectory(new File("./"));
        fc.setDialogTitle("Select input image");
        FileFilter filter = new FileNameExtensionFilter("Level image (.bmp)", "bmp");
        fc.setFileFilter(filter);
        int result = fc.showOpenDialog(this);
        File selectedFile = new File("");

        if (result == JFileChooser.APPROVE_OPTION) {
            selectedFile = fc.getSelectedFile();
            System.out.println("Selected file: " + selectedFile.getAbsolutePath());
        } else {
            dispose();
            System.exit(0);
        }

        try {
            levelImg = ImageIO.read(selectedFile);

            this.setBounds(xVal, yVal, 1000, 350);
            this.setVisible(true);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Override
    public void paint(Graphics g) {
        Graphics2D g2d = (Graphics2D) g;
        Level level = new Level(levelImg);
        level.drawLevel();
        BufferedImage img = level.outImage;
        g2d.drawImage(img, xVal, yVal, this);
        this.addKeyListener(new KeyAdapter() {
            @Override
            public void keyPressed(KeyEvent e) {
                moveImg(e);
            }
        });

    }

    public void moveImg(KeyEvent event) {
        switch (event.getKeyCode()) {
            case KeyEvent.VK_LEFT -> {
                if (xVal == 0) {
                    break;
                }
                xVal += stepSize;
                this.repaint();
            }
            case KeyEvent.VK_RIGHT -> {
                if (xVal == -2500) {
                    break;
                }
                xVal -= stepSize;
                this.repaint();
            }
        }
    }
}
