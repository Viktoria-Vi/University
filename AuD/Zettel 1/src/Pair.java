/**
 * A generic implementation of pair consisting out of two elements.
 *
 * @param <T>      The type of the elements.
 * @param element1 The immutable first element of this pair.
 * @param element2 The immutable second element of this pair.
 */
public record Pair<T>(T element1, T element2) {

    /**
     * Returns the first element of this pair.
     *
     * @return The first element.
     */
    @Override
    public T element1() {
        return element1;
    }

    /**
     * Returns the second element of this pair.
     *
     * @return The second element.
     */
    @Override
    public T element2() {
        return element2;
    }
}
