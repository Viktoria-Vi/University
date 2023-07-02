import java.util.Arrays;

public class RobinHood<K, V> implements Hashing<K, V>, Remove<K> {
    private final int maxSize;
    private final FixedRangeHashFunction<K> hashFunction;
    private final K[] keys;
    private final V[] values;
    private final int[] probes; // Sondierungslängen

    public RobinHood(int maxSize, FixedRangeHashFunction<K> hashFunction) {
        this.maxSize = maxSize;
        this.hashFunction = hashFunction;
        this.keys = (K[]) new Object[maxSize];
        this.values = (V[]) new Object[maxSize];
        this.probes = new int[maxSize];
    }
}