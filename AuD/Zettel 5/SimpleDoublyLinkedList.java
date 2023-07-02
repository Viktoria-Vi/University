import java.util.NoSuchElementException;

public class SimpleDoublyLinkedList<E, V> {

    public void moveToFront(Node<E, V> node) {
    }

    static class Node<E, V> {
        final E element;
        Node<E, V> next;
        Node<E, V> prev;

        Node(E element, Node<E, V> prev, Node<E, V> next) {
            this.element = element;
            this.prev = prev;
            this.next = next;
        }

        public <Key, Value> Node(Key key, Value value) {
        }

        public void setValue(V value) {
        }

        public V getValue() {
        }

        public V getKey() {
        }
    }

    Node<E, V> head;
    Node<E, V> tail;

    public void addLast(E element) {
        tail = new Node<>(element, tail, null);
        if (head == null)
            head = tail;

        if (tail.prev != null)
            tail.prev.next = tail;
    }

    public void addFirst(E element) {
        if (isEmpty()) {
            addLast(element);
            return;
        }

        head = new Node<>(element, null, head);
        if (head.next != null)
            head.next.prev = head;
    }

    public E removeLast() {
        if (isEmpty())
            throw new IllegalStateException("Empty list");

        if (tail.prev != null)
            tail.prev.next = null;

        E last = tail.element;
        tail = tail.prev;
        return last;
    }

    public E get(int n) {
        if (isEmpty())
            throw new NoSuchElementException();

        Node<E, V> current;
        for (current = head; current.next != null && n != 0; current = current.next, n--) ;

        if (n == 0)
            return current.element;

        throw new NoSuchElementException();
    }

    boolean isEmpty() {
        return head == null;
    }

    @Override
    public String toString() {
        StringBuilder str = new StringBuilder("(Head) ");
        for (Node<?, V> curr = head; curr != null; curr = curr.next)
            str.append(curr.element).append(" <--> ");

        str.setLength(str.length() - " <--> ".length());
        return str.append(" (Tail)").toString();
    }
}
