package Tag1;

import javax.swing.*;
import java.awt.*;

public class PaintArea extends JPanel {

    Turtle donatello;

    public PaintArea() {
        donatello = new Turtle(0, 0, 0);
        setBackground(Color.WHITE);
        this.setPreferredSize(new Dimension(1060, 720));
        donatello.changePenState();
        donatello.moveTo(140,550);
        donatello.changePenState();
        donatello.moveTo(400,100);
        donatello.moveTo(660,550);
        donatello.changePenState();
        donatello.moveTo(550,350);
        donatello.changePenState();
        donatello.moveTo(250,350);
        repaint();

    }

    public Turtle getDonatello() {
        return donatello;
    }

    @Override
    public void paint(Graphics g) {
        super.paint(g);
        g.fillRect(donatello.xPos, donatello.yPos, 15, 15);
        g.drawOval(100,100,600,600);
        donatello.paint(g);
    }
}
