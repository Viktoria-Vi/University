public class TileWater extends Tile {

    public TileWater(int imgIndex, float x, float y){
        super(imgIndex,x,y);
    }

    public void onCollision(Player p){
        p.kill();
    }
}
