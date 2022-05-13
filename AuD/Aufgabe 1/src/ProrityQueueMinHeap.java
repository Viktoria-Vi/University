import java.util.ArrayList;

public class ProrityQueueMinHeap implements PriorityQueue {

    private ArrayList<Comparable> minHeap = new ArrayList<>();

    private int parent(int pos) {
        return pos / 2;
    }

    private int leftChild(int pos) {
        return (2 * pos);
    }

    private int rightChild(int pos) {
        return (2 * pos) + 1;
    }


    public void swap(int firstPos, int secondPos) {

        Comparable temp;
        temp = minHeap.get(firstPos);

        minHeap.set(firstPos, minHeap.get(secondPos));
        minHeap.set(secondPos, temp);
    }

    private void minHeapify(int pos) {
        int min;
        if (leftChild(pos) < minHeap.size() && minHeap.get(leftChild(pos)).compareTo(minHeap.get(pos)) < 0){
            min = leftChild(pos);
        } else {
            min = pos;
        }
        if (rightChild(pos) < minHeap.size() && minHeap.get(rightChild(pos)).compareTo(minHeap.get(min)) < 0){
            min = rightChild(pos);
        }
        if(min != pos) {
            swap(pos,min);
        }
        minHeapify(min);
    }

    @Override
    public void addElement(Comparable element) {
        minHeap.add(element);
        int current = minHeap.size() - 1;
        while (minHeap.get(current).compareTo(minHeap.get(parent(current))) < 0) {
            swap(current, parent(current));
            current = parent(current);
        }


    }

    @Override
    public Comparable getFirst() {
        return minHeap.get(0);
    }


    @Override
    public void deleteFirst() {
        if (minHeap.size() < 1) {
            return;
        }
        minHeap.remove(0);
        minHeapify(0);
    }

}
