import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.awt.image.BufferStrategy;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.Timer;
import java.io.Serial;
import java.util.TimerTask;

import javax.swing.*;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

public class Platformer extends JFrame {
    public static final String BasePath = "Step4/assets/";
    @Serial
    private static final long serialVersionUID = 5736902251450559962L;

    private Player p = null;
    private Level l = null;
    BufferStrategy bufferStrategy;

    Timer timer = new Timer();

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
        addKeyListener(new AL(this));
        createBufferStrategy(2);
        bufferStrategy = this.getBufferStrategy();


        if (result == JFileChooser.APPROVE_OPTION) {
            selectedFile = fc.getSelectedFile();
            System.out.println("Selected file: " + selectedFile.getAbsolutePath());
        } else {
            dispose();
            System.exit(0);
        }

        try {
            l = new Level(selectedFile.getAbsolutePath(), BasePath + "background0.png");
            p = new Player(l);
            l.player = p;

            this.setBounds(0, 0, 1000, 12 * 70);
            this.setVisible(true);
        } catch (Exception e) {
            e.printStackTrace();
        }
        timer.schedule(new TimerTask() {
            @Override
            public void run() {
                updateGameStateAndRepaint();
            }
        }, 10, 10);
    }

    private void restart() throws IOException {
        p.pos.x = 300;
        p.pos.y = 400;
        l.offsetX = 0;
        l.initLevel();
    }

    private void updateGameStateAndRepaint() {
        l.update();
        getPlayer().update();
        checkCollision();
        repaint();
    }

    private void checkCollision() {
        // Collision
        for (int i = 0; i < l.tiles.size(); i++) {

            Tile tile = l.tiles.get(i);

            p.updateBoundingBox();
            Vec2 overlapSize = tile.bb.OverlapSize(p.boundingBox);

            float epsilon = 15f; // experiment with this value. If too low,the player might get stuck when walking over the
            // ground. If too high, it can cause glitching inside/through walls

            if (overlapSize.x >= 0 && overlapSize.y >= 0 && Math.abs(overlapSize.x + overlapSize.y) >= epsilon) {

                if (Math.abs(overlapSize.x) > Math.abs(overlapSize.y)) {// Y overlap correction

                    if (p.boundingBox.min.y + p.boundingBox.max.y > tile.bb.min.y + tile.bb.max.y) { // player comes from below
                        p.jumping = true;
                    } else { // player comes from above
                        p.falling = false;
                    }
                } else { // X overlap correction
                    if (p.boundingBox.min.x + p.boundingBox.max.x > tile.bb.min.x + tile.bb.max.x) { // player comes from right
                        p.walkingRight = false;
                        getPlayer().move(1, 0);

                    } else { // player comes from left
                        p.walkingLeft = false;
                        getPlayer().move(-1, 0);

                    }
                }

                p.updateBoundingBox();
            }

        }
    }

    @Override
    public void paint(Graphics g) {
        Graphics2D g2 = null;

        try {
            g2 = (Graphics2D) bufferStrategy.getDrawGraphics();
            draw(g2);

        } finally {
            g2.dispose();
        }
        bufferStrategy.show();
    }

    private void draw(Graphics2D g2d) {
        BufferedImage level = (BufferedImage) l.getResultingImage();
        if (l.offsetX > level.getWidth() - 1000)
            l.offsetX = level.getWidth() - 1000;
        BufferedImage bi = level.getSubimage((int) l.offsetX, 0, 1000, level.getHeight());
        g2d.drawImage(l.backgroundImage, 0, 0, this);
        g2d.drawImage(bi, 0, 0, this);
        g2d.drawImage(getPlayer().getPlayerImage(), (int) (getPlayer().pos.x - l.offsetX), (int) getPlayer().pos.y, this);
    }

    public Player getPlayer() {
        return this.p;
    }

    public class AL extends KeyAdapter {
        Platformer p;

        public AL(Platformer p) {
            super();
            this.p = p;
        }

        @Override
        public void keyReleased(KeyEvent event) {
            int keyCode = event.getKeyCode();
            Player player = p.getPlayer();

            if (keyCode == KeyEvent.VK_UP) {
                player.jumping = false;
                player.falling = true;
            }
            if (keyCode == KeyEvent.VK_LEFT) {
                player.walkingLeft = false;
                player.falling = true;
                player.move(0, -1);

            }
            if (keyCode == KeyEvent.VK_RIGHT) {
                player.walkingRight = false;
                player.falling = true;
                player.move(0, -1);

            }
        }

        @Override
        public void keyPressed(KeyEvent event) {
            int keyCode = event.getKeyCode();
            Player player = p.getPlayer();

            if (keyCode == KeyEvent.VK_ESCAPE) {
                dispose();
            }

            if (keyCode == KeyEvent.VK_UP) {
                player.jumping = true;

            }

            if (keyCode == KeyEvent.VK_DOWN) {
                player.move(0, 0);

            }

            if (keyCode == KeyEvent.VK_LEFT) {
                player.walkingLeft = true;
            }

            if (keyCode == KeyEvent.VK_RIGHT) {
                player.walkingRight = true;
            }


            if (keyCode == KeyEvent.VK_R) {
                try {
                    restart();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }
            updateGameStateAndRepaint();
        }
    }
}