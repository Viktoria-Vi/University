public interface Set<E> extends Iterable<E> {

	/**
	 * Inserts an element into the set.
	 * 
	 * @param element
	 *            - element to be inserted
	 * @return true if the element was inserted into the set; false otherwise
	 *         (i.e. element was already in the set)
	 */
	boolean add(E element);

	/**
	 * Removes the element from this set.
	 * 
	 * @param element
	 *            - the element to be removed
	 * @return true if the element was removed from the set; false otherwise
	 *         (i.e. element was not in the set)
	 */
	boolean remove(E element);

	/**
	 * Returns true if this set contains the specified element.
	 * 
	 * @param element
	 *            - element whose presence in this set is to be tested
	 * @return true if this set contains the specified element
	 */
	boolean contains(E element);

	/**
	 * Returns true if this set contains no elements.
	 * 
	 * @return true if this set contains no elements
	 */
	boolean isEmpty();

	/**
	 * Replaces the current set with the union of the current set and the given
	 * set.
	 *
	 * @param set
	 *            - the given set.
	 */
	void union(Set<E> set);

	/**
	 * Replaces the current set with the intersection of the current set and the
	 * given set.
	 *
	 * @param set
	 *            - the given set.
	 */
	void intersect(Set<E> set);

	/**
	 * Replaces the current set with the subtraction of the current set and the
	 * given set.
	 *
	 * @param set
	 *            - the given set.
	 */
	void subtract(Set<E> set);
}
