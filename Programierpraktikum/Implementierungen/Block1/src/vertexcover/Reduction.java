package vertexcover;

import java.util.HashSet;
import java.util.Set;

public class Reduction extends SearchTree {

    public Graph removeSingletons(Graph g) {
        Set keys = new HashSet();
        for (int key : g.getVertices()) {
            if (g.degree(key) < 1) {
                g.deleteVertex(key);
            }
        }
        return g;
    }

    public Graph removeDegOne(Graph g) {
        Set keys = new HashSet();
        for (int key : g.getVertices()) {
            if (g.degree(key) == 1) {
                g.deleteVertex(key);
            }
        }
        return g;
    }

    public Graph removeHighDeg(Graph g) {
        int highestDeg = 0;
        Set keys = new HashSet<Integer>();
        for (int key : g.getVertices()) {
            if (g.degree(key) >= highestDeg) {
                if (g.degree(key) > highestDeg) {
                    keys = new HashSet<>();
                    keys.add(key);
                }
                keys.add(key);
            }
        }
        for (Object key : keys) {
            g.deleteVertex((Integer) key);
        }
        return g;
    }
}
