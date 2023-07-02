
import java.util.Arrays;
public class LinearProbing<K, V> implements Hashing<K, V> {
    private final int maxSize;
    private final FixedRangeHashFunction<K> hashFunction;
    private final K[] keys;
    private final V[] values;

    public LinearProbing(int maxSize, FixedRangeHashFunction<K> hashFunction) {
        this.maxSize = maxSize;
        this.hashFunction = hashFunction;
        this.keys = (K[]) new Object[maxSize];
        this.values = (V[]) new Object[maxSize];
    }

    @Override
    public void put(K key, V value) {
        int index = hashFunction.hash(key);
        int probe = 0;
        while (keys[index] != null && !keys[index].equals(key)) {
            index = (index + 1) % maxSize;
            probe++;
            if (probe >= maxSize) {
                throw new IllegalStateException("Hash table is full.");
            }
        }
        keys[index] = key;
        values[index] = value;
    }

    @Override
    public V get(K key) {
        int index = hashFunction.hash(key);
        int probe = 0;
        while (keys[index] != null) {
            if (keys[index].equals(key)) {
                return values[index];
            }
            index = (index + 1) % maxSize;
            probe++;
            if (probe >= maxSize) {
                break;
            }
        }
        return null;
    }

    @Override
    public void remove(K key) {
        int index = hashFunction.hash(key);
        int probe = 0;
        while (keys[index] != null) {
            if (keys[index].equals(key)) {
                // Element gefunden, entfernen
                keys[index] = null;
                values[index] = null;
                // Nachfolgende Elemente neu positionieren
                int nextIndex = (index + 1) % maxSize;
                while (keys[nextIndex] != null) {
                    K currentKey = keys[nextIndex];
                    V currentValue = values[nextIndex];
                    keys[nextIndex] = null;
                    values[nextIndex] = null;
                    put(currentKey, currentValue);
                    nextIndex = (nextIndex + 1) % maxSize;
                }
                break;
            }
            index = (index + 1) % maxSize;
            probe++;
            if (probe >= maxSize) {
                break;
            }
        }
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < maxSize; i++) {
            if (keys[i] != null) {
                sb.append(keys[i]).append(": ").append(values[i]).append("\n");
            }
        }
        return sb.toString();
    }
}
