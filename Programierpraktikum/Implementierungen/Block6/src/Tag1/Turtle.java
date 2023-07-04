package Tag1;

import java.awt.*;
import java.util.ArrayList;

public class Turtle {
    int xPos, yPos;
    double lookAngle;
    boolean penDown;
    Color penColor;

    ArrayList<Line> lines = new ArrayList<>();
    ArrayList<Circle> circles = new ArrayList<>();

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
        delta = delta%360;
        if (right) {
            lookAngle += delta;
        } else lookAngle -= delta;
    }

    public void paint(Graphics g) {
            for (Line line : lines
            ) {
                line.color = penColor;
                line.paint(g);
            }
            for (Circle circle : circles){
                circle.color = penColor;
                circle.paint(g);
            }
    }

    void circular(int radius){
        if(penDown){
            circles.add(new Circle(xPos,yPos,radius));
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
        int newX = Math.round(Math.round(step * Math.sin(Math.toRadians(lookAngle))));
        int newY = Math.round(Math.round(step * Math.cos(Math.toRadians(lookAngle))));
        if (penDown) {
            lines.add(new Line(xPos, yPos, xPos + newX, yPos + newY));
        }
        xPos += newX;
        yPos += newY;
    }

    public void interpret(String commands) {
        String[] commandLines = commands.split("\n");
        for (String c : commandLines) {
            String[] words = c.split(" ");
            switch (words[0]) {
                case "pen" :
                    if (words[1].equals("up")) {
                        if (penDown){
                            changePenState();
                        }
                        break;
                    }
                    else if(words[1].equals("down")) {
                        if (!penDown) {
                            changePenState();
                        }
                        break;
                    }
                case "move" :
                    moveTo(Integer.parseInt(words[1]),Integer.parseInt(words[2]));
                    break;
                case "go" :
                    goForward(Integer.parseInt(words[1]));
                    break;
                case "turn" :
                    if(words[1].equals("left")){
                        turn(Double.parseDouble(words[2]),false);
                        break;
                    }
                    else turn(Double.parseDouble(words[2]),true);
                    break;
                case "color" :
                    changePenColor(Color.decode(words[1]));
                    break;
                case "circle" :
                    circular(Integer.parseInt(words[1]));
            }
        }
    }

    public static void main(String[] args) {

    }
}

