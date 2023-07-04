import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.event.*;
import java.awt.image.BufferStrategy;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.Serial;

import javax.swing.*;
import javax.swing.filechooser.FileFilter;
import javax.swing.filechooser.FileNameExtensionFilter;

public class Platformer extends JFrame {
    @Serial
    private static final long serialVersionUID = 5736902251450559962L;

    private Level l = null;
    private Player player = null;
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

            player = new Player(l,new Vec2(0,100));
            l.player = player;

            this.setBounds(0, 0, 1000, 5 * 70);
            this.setVisible(true);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private void updateGameStateAndRepaint() {
        l.update();
        repaint();
    }

    @Override
    public void paint(Graphics g) {
        Graphics2D g2 = (Graphics2D) g;
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
        BufferedImage visibleLevel = level.getSubimage((int) l.offsetX, 0, 1000, level.getHeight());
        g2d.drawImage(visibleLevel, 0, 0, this);
        g2d.drawImage(
                getPlayer().getImage(),
                (int) getPlayer().currentPos.x,
                (int) getPlayer().currentPos.y, this);
    }

    public Player getPlayer() {
        return this.player;
    }


        public class AL extends KeyAdapter {
            Platformer p;

            public AL(Platformer p) {
                super();
                this.p = p;
            }

            @Override
            public void keyPressed(KeyEvent event) {
                Player player1 = p.player;
                int keyCode = event.getKeyCode();

                if (keyCode == KeyEvent.VK_ESCAPE) {
                    dispose();
                }

                if (keyCode == KeyEvent.VK_LEFT) {
                    l.offsetX -= 10;
                    player1.move(new Vec2(-1,0));
                }

                if (keyCode == KeyEvent.VK_RIGHT) {
                    l.offsetX += 10;
                    player1.move(new Vec2(1,0));
                }

                updateGameStateAndRepaint();
            }
        }

}


