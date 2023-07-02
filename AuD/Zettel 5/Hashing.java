public interface Hashing<Key, Value> {

    /**
     * Inserts the given (key, value) pair into the hash data structure.
     *
     * @param key   The key of the (key, value) pair.
     * @param value The value of the (key, value) pair.
     * @return A value previously associated with the key; null if key did not exist before.
     * @throws IllegalStateException if the element cannot be added due to capacity restrictions.
     */
    Value put(Key key, Value value) throws IllegalStateException;

    /**
     * Gets the value associated with the given key.
     *
     * @param key The key to search for.
     * @return The value associated with the key; null if key is not in the data structure.
     */
    Value get(Key key);

}
