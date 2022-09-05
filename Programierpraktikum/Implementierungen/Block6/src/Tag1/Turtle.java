package Tag1;

import java.awt.*;
import java.awt.geom.Rectangle2D;
import java.util.ArrayList;
import java.util.HexFormat;

public class Turtle {
    int xPos, yPos;
    double lookAngle;
    boolean penDown;
    Color penColor;

    ArrayList<Line> lines = new ArrayList<>();

    public Turtle(int xPos, int yPos, double lookAngle) {
        this.xPos = xPos;
        this.yPos = yPos;
        this.lookAngle = lookAngle;
        penDown = true;
        penColor = Color.BLACK;
    }

    public void changePenState() {
        penDown = !penDown;
    }

    public void changePenColor(Color color) {
        penColor = color;
    }

    public void turn(double delta, boolean right) {
        if (right) {
            lookAngle += delta;
        } else lookAngle -= delta;
    }

    public void paint(Graphics g) {
        if (penDown) {
            for (Line line : lines
            ) {
                line.paint(g);
            }
        }
    }

    void moveTo(int x, int y) {
        if (penDown) {
            lines.add(new Line(xPos, yPos, x, y));
        }
        xPos = x;
        yPos = y;
    }

    public void goForward(int step) {
        int newX = Math.round(Math.round(step * Math.sin(lookAngle)));
        int newY = Math.round(Math.round(step * Math.cos(lookAngle)));
        if (penDown) {
            lines.add(new Line(xPos, yPos, newX, newY));
        }
        xPos = newX;
        yPos = newY;
    }

    public void interpret(String commands) {
        String[] command = commands.split("\n");
        for (String c : command) {
            String[] words = c.split(" ");
            switch (words[0]) {
                case "pen" :
                    if (words[1].equals("up")) {
                        if (penDown){
                            changePenState();
                        }
                    }
                    else if(words[1].equals("down")) {
                        if (!penDown) {
                            changePenState();
                        }
                    }
                case "move" :
                    moveTo(Integer.parseInt(words[1]),Integer.parseInt(words[2]));
                case "go" :
                    goForward(Integer.parseInt(words[1]));
                case "turn" :
                    if(words[1].equals("left")){
                        turn(Double.parseDouble(words[2]),false);
                    }
                    else turn(Double.parseDouble(words[2]),true);
                case "color" :
                    changePenColor(Color.decode(words[1]));
            }

        }
    }
}

