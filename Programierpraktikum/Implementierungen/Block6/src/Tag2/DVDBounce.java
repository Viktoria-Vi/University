package Tag2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;


public class DVDBounce {

    final int maxX, maxY;
    int xPos, yPos, xSpeed, ySpeed;
    ArrayList<Line> lines = new ArrayList<>();
    ArrayList<Integer[]> collisions = new ArrayList<>();

    public DVDBounce(int maxX, int maxY) {
        this.xPos = 0;
        this.yPos = 0;
        this.xSpeed = 0;
        this.ySpeed = 0;
        this.maxX = maxX;
        this.maxY = maxY;
        lines.add(new Line(xPos, yPos, xPos, yPos));

    }

    private void setRandomPosition() {
        Random random = new Random();
        xPos = random.nextInt(maxX);
        yPos = random.nextInt(maxY);
        lines.set(0, new Line(xPos, yPos, xPos, yPos));
    }

    private void setRandomDirection() {
        xSpeed = Math.random() > 0.5 ? 1 : -1;
        ySpeed = Math.random() > 0.5 ? 1 : -1;
    }

    private void addCollision() {
        collisions.add(new Integer[]{xPos, yPos});
    }

    private CollisionDirection checkCollision() {

        if (xPos == 0 || xPos == maxX) {
            if (yPos == 0 || yPos == maxY) {
                addCollision();
                return CollisionDirection.BOTH;
            }
            addCollision();
            return CollisionDirection.HORIZONTAL;
        }
        if (yPos == 0 || yPos == maxY) {
            addCollision();
            return CollisionDirection.VERTICAL;
        }
        return CollisionDirection.NONE;
    }

    private void move() {
        xPos += xSpeed;
        yPos += ySpeed;
    }

    private void changeDirection(CollisionDirection collision) {
        switch (collision) {
            case HORIZONTAL -> ySpeed *= -1;
            case VERTICAL -> xSpeed *= -1;
            case BOTH -> {
                xSpeed *= -1;
                ySpeed *= -1;
            }
        }
    }

    private void logCollision() {
        lines.add(new Line(lines.get(lines.size() - 1).endX, lines.get(lines.size() - 1).endY, xPos, yPos));
    }

    public double getShortestDistance() {
        double out = Double.MAX_VALUE;
        for (Line line : lines.subList(1, lines.size())) {//erste Element skippen weil startwert mit 0
            if (line.length < out) {
                out = line.length;
            }
        }
        return out;
    }

    public double distance() {
        return lines.stream().mapToDouble(l -> l.length).sum();
    }

    public boolean checkRepeat() {
        for (Line line : lines.subList(1, lines.size())
        ) {
            if (line.startX == lines.get(0).startX && line.startY == lines.get(0).startY) {
                return true;
            }
        }
        return false;
    }

    public Boolean frameTick() {
        move();
        changeDirection(checkCollision());

        if (!checkCollision().equals(CollisionDirection.NONE)) {
            logCollision();
        }
        if (lines.size() > 1) {
            if (checkRepeat() || checkCollision().equals(CollisionDirection.BOTH)) {
                if (checkCollision().equals(CollisionDirection.BOTH)) {
                    System.out.println("Corner hit: " + Arrays.toString(collisions.get(collisions.size() - 1)));
                }
                System.out.println("Shortest distance: " + getShortestDistance());
                System.out.println("Sections travelled: " + (lines.size() - 1));
                System.out.println("Distance travelled: " + distance());
                return true;
            }
        }
        return false;
    }


}





