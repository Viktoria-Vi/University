/**
 * Interface provides a method to hash an Object of type E onto a fixed size range.
 *
 * @param <E> the Type to hash in the hash method
 */
public interface FixedRangeHashFunction<E> {

    /**
     * Computes the hash value of object
     *
     * @param e the object for which to calculate the hash value
     * @return the hash value of e
     */
    int hash(E e);

    /**
     * Returns the minimum value of the fixed size range the hash function maps values to.
     *
     * @return The minimum value of the fixed size range.
     */
    int minHashValue();

    /**
     * Returns the maximum value of the fixed size range the hash function maps values to.
     *
     * @return The maximum value of the fixed size range.
     */
    int maxHashValue();

}