public class Root <K extends Comparable<K>> {
    K key;
    Root leftChild, rightChild;

    public Root(K key) {
        this.key = key;
        leftChild = rightChild = null;
    }
}
