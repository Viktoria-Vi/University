public interface Remove<Key, Value> {

    /**
     * Remove the (key, value) pair from this data structure, returning the value.
     *
     * @param key The key of the (key, value) pair.
     * @return The value associated with the given key; null if key is not present.
     */
    Value remove(Key key);

}
