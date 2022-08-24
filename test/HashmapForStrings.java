import java.util.ArrayList;
import java.util.List;

public class HashmapForStrings {
    private int m;
    private ArrayList<String>[] hashmap;

    public HashmapForStrings(int m) {
        this.m = m;
        this.hashmap = new ArrayList[m];

        for (int i = 0; i < m; i++) {
            hashmap[i] = new ArrayList<>();
        }
    }

    public void insert(String x) {
        if (!search(x)) {
            hashmap[germanCapitalizedWordAsNumber(x) % m].add(x);
        }
    }

    private static int germanCapitalizedWordAsNumber(String x) {
        int n = 0;
        for (char c : x.toCharArray()) {
            n = n * 5 + c;
        }
        return n;
    }

    public void delete(String x) {
        hashmap[germanCapitalizedWordAsNumber(x) % m].remove(x);
    }

    public boolean search(String x) {
        for (String s : hashmap[germanCapitalizedWordAsNumber(x) % m]) {
            if (x.equals(s)) {
                return true;
            }
        }
        return false;
    }
}
