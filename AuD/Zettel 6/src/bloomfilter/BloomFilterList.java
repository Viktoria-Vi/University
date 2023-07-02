package bloomfilter;

import list.List;

public class BloomFilterList {

    BloomFilter bloomFilter;
    List<BloomFilterImpl> list;

    public BloomFilterList(BloomFilter bloomFilter, List<BloomFilterImpl> list) {
        this.bloomFilter = bloomFilter;
        this.list = list;
    }
}
