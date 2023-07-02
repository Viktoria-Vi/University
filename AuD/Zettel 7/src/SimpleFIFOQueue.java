import java.util.NoSuchElementException;

/**
 * A simple FIFO (first-in first-out) queue interface for stacks that can hold a maximum of INTEGER.MAX_VALUE elements.
 */
public interface SimpleFIFOQueue<E> {

    /**
     * Removes the first element in the queue and returns it.
     * @return The element which, among all elements currently in this queue, was added first.
     */
    E poll() throws NoSuchElementException;

    /**
     * Adds the element to this queue.
     * @param element The element to be added to this queue.
     */
    void add(E element) throws IllegalStateException;;

    /**
     * Returns the first element in the queue without removing it.
     * @return The element which, among all elements currently in this queue, was added first.
     */
    E peek() throws NoSuchElementException;

    /**
     * Removes all elements from this queue.
     */
    void clear();

    /**
     * Tests whether this queue is empty.
     * @return true, if this queue does not contain any elements; false otherwise.
     */
    boolean isEmpty();

    /**
     * Returns the maximum capacity of this queue.
     * @return The maximum capacity of this queue.
     */
    int capacity();

}
