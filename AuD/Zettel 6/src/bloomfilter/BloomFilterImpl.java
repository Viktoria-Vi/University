package bloomfilter;

import java.util.Arrays;
import java.util.concurrent.ThreadLocalRandom;

public class BloomFilterImpl implements BloomFilter{

    public int[] bitArray;
    public HashFunction[] hashFunctions;
    public int size;
    public int numHashes;

    public BloomFilterImpl(int size, int numHashes) {
        this.size = size;
        this.numHashes = numHashes;
        this.hashFunctions = new HashFunction[numHashes];
        for (int i = 0; i < numHashes; i++) {
            hashFunctions[i] = x -> Integer.parseInt((String) x) % ThreadLocalRandom.current().nextInt(Integer.MIN_VALUE, Integer.MAX_VALUE);
        }
        bitArray = new int[size];
        Arrays.fill(bitArray, 0);
    }



    @Override
    public void add(Object element) {
        for (int i = 0; i < numHashes; i++) {
            bitArray[Math.abs(hashFunctions[i].hash(element) % size)] = 1;
        }
    }

    @Override
    public boolean contains(Object element) {
        for (int i = 0; i < numHashes; i++) {
            if (bitArray[hashFunctions[i].hash(element) % size] == 0) {
                return false;
            }
        }
        return true;
    }

    @Override
    public void empty() {
        Arrays.fill(bitArray, 0);
    }

}
