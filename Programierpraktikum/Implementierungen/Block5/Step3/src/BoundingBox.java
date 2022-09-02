public class BoundingBox {

   Vec2 min,max;

   public BoundingBox(Vec2 min, Vec2 max) {
      this.min = min;
      this.max = max;
   }

   public boolean intersect(BoundingBox b) {
      return (min.x <= b.max.x) &&
              (max.x >= b.min.x) &&
              (min.y <= b.max.y) &&
              (max.y >= b.min.y);
   }

   public Vec2 overlapSize(BoundingBox b) {
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

}
