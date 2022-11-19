import java.util.Map;

class Database{

    //instaces of the classes are a Map<String, Integer>
    private final Map<String, Integer> map;

    Database(Map<String, Integer> map) {
        this.map = map;
    }

//method to get the value of a key
    public int getValue(String key) {
        return map.get(key);
    }

}