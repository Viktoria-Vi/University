import java.util.Comparator;

public class NumberComparator<T extends Number & Comparable> implements Comparator <T> {

    @Override
    public int compare( T a, T b ){
        return a.compareTo( b );
    }
}
