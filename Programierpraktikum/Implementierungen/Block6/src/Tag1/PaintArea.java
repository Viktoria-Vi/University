package Tag1;

import javax.swing.*;
import java.awt.*;

public class PaintArea extends JPanel {

    Turtle donatello;

    public PaintArea() {
        donatello = new Turtle(0, 0, 0);
        setBackground(Color.WHITE);
        this.setPreferredSize(new Dimension(1060, 720));


    }

    public Turtle getDonatello() {
        return donatello;
    }

    @Override
    public void paint(Graphics g) {
        super.paint(g);
        g.fillRect(donatello.xPos, donatello.yPos, 15, 15);
        donatello.paint(g);
    }
}
