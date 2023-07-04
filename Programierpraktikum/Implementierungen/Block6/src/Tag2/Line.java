package Tag2;


public class Line implements Comparable {
    final public double length;
    final int startX, startY, endX, endY;

    public Line(int startX, int startY, int endX, int endY) {
        this.startX = startX;
        this.startY = startY;
        this.endX = endX;
        this.endY = endY;
        length = Distance(new int[]{startX, startY}, new int[]{endX, endY});
    }


    double Distance(int[] p1, int[] p2) {
        return Math.sqrt(Math.pow(p1[0] - p2[0], 2) + Math.pow(p1[1] - p2[1], 2));
    }

    @Override
    public int compareTo(Object o) {
        if (!o.getClass().equals(Line.class)) {
            return -1;
        }
        Line that = (Line) o;
        int[] nullPoint = new int[]{0, 0};
        if (this.length == that.length) {
            if (this.Distance(new int[]{startX, startY}, nullPoint) == that.Distance(new int[]{startX, startY}, nullPoint)) {
                if (this.Distance(new int[]{0, startY}, nullPoint) == that.Distance(new int[]{0, startY}, nullPoint)) {
                    if (this.Distance(new int[]{startX, 0}, nullPoint) == that.Distance(new int[]{startX, 0}, nullPoint)) {
                        return 0;
                    }
                    return this.Distance(new int[]{startX, 0}, nullPoint) > that.Distance(new int[]{startX, 0}, nullPoint) ? 1 : -1;
                }
                return this.Distance(new int[]{0, startY}, nullPoint) > that.Distance(new int[]{0, startY}, nullPoint) ? 1 : -1;
            }
            return this.Distance(new int[]{startX, startY}, nullPoint) > that.Distance(new int[]{startX, startY}, nullPoint) ? 1 : -1;
        }
        return this.length > that.length ? 1 : -1;
    }
}

