package Tag1;

import java.awt.*;

public class Line {
    final int startX,startY,endX,endY;
    Color color;

    public Line(int startX, int startY, int endX, int endY){
        this.startX = startX;
        this.startY = startY;
        this.endX = endX;
        this.endY = endY;
    }

    public void paint(Graphics g){
        g.setColor(color);
        g.drawLine(startX,startY,endX,endY);
    }
}
