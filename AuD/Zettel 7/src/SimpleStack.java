import java.util.NoSuchElementException;

/**
 * A simple stack interface for stacks that can hold a maximum of INTEGER.MAX_VALUE elements.
 */
public interface SimpleStack<E> {

    /**
     * Removes the top element of this stack and returns it.
     * @return The element on top of this stack.
     */
    E pop() throws NoSuchElementException;

    /**
     * Pushes the element on top of this stack.
     * @param element The element to be pushed on top of this stack.
     */
    void push(E element) throws IllegalStateException;


    /**
     * Returns the top element of this stack without removing it.
     * @return The element on top of this stack.
     */
    E peek() throws NoSuchElementException;

    /**
     * Removes all elements from this stack.
     */
    void clear();

    /**
     * Tests whether this stack is empty.
     * @return true, if this stack does not contain any elements; false otherwise.
     */
    boolean isEmpty();

    /**
     * Returns the maximum capacity of this stack.
     * @return The maximum capacity of this stack.
     */
    int capacity();

}
