public class Tile {

    Vec2 position;
    BoundingBox boundingBox;
    public float tileSize;

    public Tile(Vec2 coordinates, float tileSize){
        boundingBox =
                new BoundingBox(coordinates,
                        coordinates.add(new Vec2(tileSize,tileSize)));
    }
}
