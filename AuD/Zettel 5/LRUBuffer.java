import java.util.HashMap;

/**
 * A buffer based on the least recently used strategy.
 * The buffer keeps a configurable number of elements.
 * Once full, it evicts the element that has not been accessed longest,
 * i.e. the put or get operation is furthest away from the present.
 */
public class LRUBuffer<Key, Value> {

    /**
     * The maximum size of the buffer. Once reached, an element will be replaced.
     */
    private final int capacity;
    //TODO: Add data structures
    private final HashMap<Key, SimpleDoublyLinkedList.Node<Key, Value>> map;
    private final SimpleDoublyLinkedList<Key, Value> list;

    public LRUBuffer(int capacity) {
        this.capacity = capacity;
        //TODO: Potentially adjust according to your implementation strategy.
        this.map = new HashMap<>();
        this.list = new SimpleDoublyLinkedList<>();
    }

    /**
     * Puts the given key and value into the buffer possibly replacing and returning a value previously
     * associated with the key. If the buffer is full, the least recently used element is evicted.
     * The operation has an expected runtime of O(1).
     *
     * @param key   The search key of the element.
     * @param value The value associated with the key.
     * @return The value previously associated with key; null if the key is not present in the buffer.
     */
    public Value put(Key key, Value value) {
        //TODO: Implement
        if (map.containsKey(key)) {
            // Aktualisiere den Wert des vorhandenen Knotens
            SimpleDoublyLinkedList.Node<Key, Value> node = map.get(key);
            Value oldValue = node.getValue();
            node.setValue(value);
            list.moveToFront(node);
            return oldValue;
        } else {
            // Füge einen neuen Knoten hinzu
            if (map.size() >= capacity) {
                // Entferne das am weitesten hinten stehende Element
                SimpleDoublyLinkedList.Node<Key, Value> lastNode = (SimpleDoublyLinkedList.Node<Key, Value>) list.removeLast();
                map.remove(lastNode.getKey());
            }
            SimpleDoublyLinkedList.Node<Key, Value> newNode = new SimpleDoublyLinkedList.Node<>(key, value);
            map.put(key, newNode);
            list.addFirst((Key) newNode);
            return null;
        }
    }

        /**
         * Gets the value associated with the given key.
         * The operation has an expected runtime of O(1).
         *
         * @param key The search key of the element.
         * @return The value associated with the key; null if the key is not present in the buffer.
         */
        public Value get (Key key){
            //TODO: Implement
            if (map.containsKey(key)) {
                SimpleDoublyLinkedList.Node<Key, Value> node = map.get(key);
                list.moveToFront(node);
                return node.getValue();
            } else {
                return null;
            }

        }

    public static void main(String[] args) {
        LRUBuffer<String, Integer> buffer = new LRUBuffer<>(5);
        buffer.put("A", 1);
        buffer.put("B", 2);
        buffer.put("C", 3);
        buffer.put("D", 4);
        buffer.put("E", 5);
        System.out.println(buffer.get("A")); // Output: 1
        System.out.println(buffer.get("B")); // Output: 2
        buffer.put("F", 6);
        System.out.println(buffer.get("C")); // Output: null (nicht mehr im Puffer)
    }
    }