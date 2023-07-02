
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NoSuchElementException;

public class COLAImpl<E extends Comparable<E>> implements Insert<E>, Query<E> {
    //Durch die Repräsentation als Map fällt es leichter die Arrays zu verwalten,
    //da wir die Größe durch den Exponenten (Key) bestimmen können
    public Map<Integer, E[]> cola = new HashMap<>();


    // we start with one array of size 1(2^0), the key represents the exponent(k) of 2^k
    public COLAImpl() {
        cola.put(0, (E[]) new Comparable[1]);
    }

    public void insertElement(E key) {
        //Basisfall für das erste Array
        if (cola.get(0)[0] == null) {
            cola.get(0)[0] = key;
        } else {
            //wir suchen das nächste leere Array
            for (int i = 1; i <= cola.size(); i++) {
                if (cola.get(i) == null || cola.get(i)[0] == null) {
                    cola.put(i, (E[]) new Comparable[(int) Math.pow(2, i)]);
                    //Wir fügen die Elemente aller Arrays mit (Key < i) in das neue Array ein
                    int size = 0;
                    for (int arr = 0; arr < i; arr++) {
                        for (int k = 0; k < Math.pow(2, arr); k++) {
                            E comp = cola.get(arr)[k];
                            if (key != null && key.compareTo(comp) < 0) {
                                cola.get(i)[size++] = key;
                                k--;
                                key = null;
                            } else {
                                cola.get(i)[size++] = comp;
                            }
                        }
                        //Wir resetten das kopierte Array
                        cola.put(arr, (E[]) new Comparable[(int) Math.pow(2, arr)]);
                    }
                    if (key != null) {
                        cola.get(i)[size] = key;
                    }
                    return;
                }
            }
        }
    }

    @Override
    public E searchElement(E element) throws NoSuchElementException {
        for (int i = 0; i < cola.size(); i++) {
            //überprüfe, ob letztes Element kleiner ist als das gesuchte, wenn ja skippe das Array
            if (cola.get(i)[(int) Math.pow(2, i) - 1].compareTo(element) < 0) {
                continue;
            } else {
                if (!(Arrays.binarySearch(cola.get(i), element) < 0)) {
                    return cola.get(i)[Arrays.binarySearch(cola.get(i), element)];
                }
            }
        }
        throw new NoSuchElementException();
    }

}
