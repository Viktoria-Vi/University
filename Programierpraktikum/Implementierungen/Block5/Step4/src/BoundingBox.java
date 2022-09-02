public class BoundingBox {
    public Vec2 min, max;

    public BoundingBox(float min_x, float min_y, float max_x, float max_y) {
        min = new Vec2(min_x, min_y);
        max = new Vec2(max_x, max_y);
    }

    public Vec2 OverlapSize(BoundingBox b) {
        Vec2 result = new Vec2(0, 0);

        // X-dimension
        if (min.x < b.min.x)
            result.x = max.x - b.min.x;
        else
            result.x = b.max.x - min.x;

        // Y-dimension
        if (min.y < b.min.y)
            result.y = max.y - b.min.y;
        else
            result.y = b.max.y - min.y;

        return result;
    }

    public boolean intersect(BoundingBox b) {
        return (min.x <= b.max.x) && (max.x >= b.min.x) && (min.y <= b.max.y) && (max.y >= b.min.y);
    }
}
