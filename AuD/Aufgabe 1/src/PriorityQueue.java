public interface PriorityQueue <K extends Comparable<K>>{

    public void addElement(K element);

    public K getFirst();

    public void deleteFirst();
}
