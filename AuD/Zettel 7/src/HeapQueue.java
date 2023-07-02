import java.util.Comparator;
import java.util.NoSuchElementException;
import java.util.PriorityQueue;

public class HeapQueue<E> implements SimpleFIFOQueue<E> {

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

    private int insertionCounter = 0;

    public HeapQueue(int maximumCapacity) {
        priorityQueue = new PriorityQueue<Element<E>>(maximumCapacity, Comparator.comparingInt((Element<E> e) -> e.insertion));
        maxCapacity = maximumCapacity;
    }


    @Override
    public E poll() {
        if (priorityQueue.peek() == null) {
            throw new NoSuchElementException();
        }
        return priorityQueue.poll().element;
    }

    @Override
    public void add(E element) {
        if (priorityQueue.size() == maxCapacity) {
            throw new IllegalStateException();
        }
        priorityQueue.add(new Element<E>(element, insertionCounter++));
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
