import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.event.*;
import java.awt.image.BufferStrategy;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.Serial;

import javax.swing.*;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

public class Platformer extends JFrame {
    public static final String BasePath = "Step3/assets/";
    @Serial
    private static final long serialVersionUID = 5736902251450559962L;

    private Player p = null;
    private Level l = null;
    BufferStrategy bufferStrategy;

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
            l = new Level(selectedFile.getAbsolutePath());
            p = new Player(l);
            l.player = p;

            this.setBounds(0, 0, 1000, 12 * 70);
            this.setVisible(true);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void restart() throws IOException {
        p.pos.x = 0;
        p.pos.y = 0;
        l.offsetX = 0;
        l.initLevel();
    }

    private void updateGameStateAndRepaint() {
        getPlayer().getBounds();
        l.update();
        checkCollision();
        repaint();
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
        g2d.drawImage(bi, 0, 0, this);
        g2d.drawImage(getPlayer().getPlayerImage(), (int) (getPlayer().pos.x - l.offsetX), (int) getPlayer().pos.y, this);
    }

    public Player getPlayer() {
        return this.p;
    }

    

    public void checkCollision(){
        for (Tile tile: l.tiles) {
            if (tile.boundingBox.intersect(getPlayer().boundingBox)){
                System.out.println("collision detected");
            }
        }
    }
    
    public class AL extends KeyAdapter {
        Platformer p;

        public AL(Platformer p) {
            super();
            this.p = p;
        }

        @Override
        public void keyPressed(KeyEvent event) {
            int keyCode = event.getKeyCode();
            Player player = p.getPlayer();

            if (keyCode == KeyEvent.VK_ESCAPE) {
                dispose();
            }

            if (keyCode == KeyEvent.VK_UP) {
                player.move(0, -1);
            }

            if (keyCode == KeyEvent.VK_DOWN) {
                player.move(0, 1);
            }

            if (keyCode == KeyEvent.VK_LEFT) {
                player.move(-1, 0);
            }

            if (keyCode == KeyEvent.VK_RIGHT) {
                player.move(1, 0);
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