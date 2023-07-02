import javax.imageio.plugins.jpeg.JPEGQTable;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;

public class HeapStack<E> implements SimpleStack<E> {

    class Element<E> {

        private final E element;
        private final int insertion;

        Element(E element, int insertion) {
            this.element = element;
            this.insertion = insertion;
        }
    }

    private PriorityQueue<Element<E>> priorityQueue;
    private final int maxCapacity;

    public HeapStack(int maximumCapacity) {
        priorityQueue = new PriorityQueue<Element<E>>(maximumCapacity);
        maxCapacity = maximumCapacity;
    }

    @Override
    public E pop()  {
        if (priorityQueue.peek() == null) {
            throw new NoSuchElementException();
        }
        return priorityQueue.poll().element;

    }

    @Override
    public void push(E element) {
        if (priorityQueue.size() == maxCapacity) {
            throw new IllegalStateException();
        }
        priorityQueue.add(new Element<E>(element, priorityQueue.size()));
    }

    public E peek() {
        if (priorityQueue.peek() == null) {
            throw new NoSuchElementException();
        }
        return priorityQueue.peek().element;
    }

    @Override
    public void clear() {
        priorityQueue.clear();
    }

    @Override
    public boolean isEmpty() {
        return priorityQueue.isEmpty();
    }

    @Override
    public int capacity() {
        return maxCapacity;
    }


}

