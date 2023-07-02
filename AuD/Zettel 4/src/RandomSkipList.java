public interface RandomSkipList<E extends Comparable<E>> {
	
	/**
	 * Inserts an element into the RandomSkipList.
	 * 
	 * @param element
	 *            - element to be inserted
	 * @return true if the element was inserted into the set; false otherwise
	 *         (i.e. element was already in the set)
	 */
	boolean add(E element);
	
	/**
	 * Removes the element from this RandomSkipList.
	 * 
	 * @param element
	 *            - the element to be removed
	 * @return true if the element was removed from the RandomSkipList; false otherwise
	 *         (i.e. element was not in the set)
	 */
	boolean remove(E element);
	
	/**
	 * Returns true if this RandomSkipList contains the specified element.
	 * 
	 * @param element
	 *            - element whose presence in this List is to be tested
	 * @return true if this List contains the specified element
	 */
	boolean contains(E element);
	
}
