package Tag1;

import java.awt.*;

public class Circle {

    int centerX,centerY,radius;
    Color color;

    public Circle(int centerX,int centerY,int radius){
        this.centerX = centerX;
        this.centerY = centerY;
        this.radius = radius;
    }

    public void paint(Graphics g){
        g.setColor(color);
        g.drawOval(centerX-radius,centerY-radius,radius*2,radius*2);
    }
}
