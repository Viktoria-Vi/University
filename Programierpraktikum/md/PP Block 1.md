

```java
package vertexcover;


import java.io.*;
import java.util.*;

public class MyGraph implements vertexcover.Graph {

    public Map<Integer, Set<Integer>> adj;

    public Map<Integer, Set<Integer>> getAdj() {
        return adj;
    }

    public MyGraph(String filename) throws Exception {
        adj = new HashMap<>();
        BufferedReader reader = new BufferedReader(new FileReader(filename));
        String line = reader.readLine();
        while (line != null) {
            int temp[] = Arrays.stream(line.split(" ")).mapToInt(Integer::parseInt).toArray();
            if (!contains(temp[0])) {
                addVertex(temp[0]);
            }
            if (!contains(temp[1])) {
                addVertex(temp[1]);
            }
            addEdge(temp[0], temp[1]);
            line = reader.readLine();
        }
    }

    @Override
    public void addVertex(Integer v) {
        adj.put(v, new HashSet<>());
    }

    @Override
    public void addEdge(Integer v, Integer w) {
        Set temp = adj.get(v);
        temp.add(w);
        adj.put(v, temp);
        temp = adj.get(w);
        temp.add(v);
        adj.put(w, temp);
    }

    @Override
    public void deleteVertex(Integer v) {
        for (Object key : adj.keySet().toArray()) {
            adj.get(key).remove(v);
        }
        adj.remove(v);
    }

    @Override
    public void deleteEdge(Integer u, Integer v) {
        adj.get(u).remove(v);
        adj.get(v).remove(u);
    }

    @Override
    public boolean contains(Integer v) {
        return adj.containsKey(v);
    }

    @Override
    public int degree(Integer v) {
        return adj.get(v).size();
    }

    @Override
    public boolean adjacent(Integer v, Integer w) {
        return adj.get(v).contains(w);
    }

    @Override
    public Graph getCopy() {
        String copy = "";
        for(int key : adj.keySet()){
            for(int value : adj.get(key)){
                copy += key + " " + value + "\n";
            }
        }
        File file = new File("src/copy.txt");
        try {
            PrintWriter writer = new PrintWriter(file);
            writer.print("");
            writer.close();
            BufferedWriter out = new BufferedWriter(new FileWriter(file));
            out.write(copy);
            out.close();
            return new MyGraph(file.getAbsolutePath());
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Set<Integer> getNeighbors(Integer v) {
        return adj.get(v);
    }

    @Override
    public int size() {
        return adj.size();
    }

    @Override
    public int getEdgeCount() {
        int out = 0;
        for (int key : adj.keySet()) {
                out += adj.get(key).size();
        }
        return out/2;
    }

    @Override
    public Set<Integer> getVertices() {
        return adj.keySet();
    }

    public static void main(String[] args) throws Exception {

    }

}
```



```java
package vertexcover;


public class SearchTree {

    private boolean solve(Instance i){
        if(i.k >= 0) {
            if (i.G.getEdgeCount() == 0) {
                return true;
            }
            int key1 = i.G.getVertices().iterator().next();
            int key2 = i.G.getNeighbors(key1).iterator().next();
            Graph g1 = i.G.getCopy();
            g1.deleteVertex(key1);
            Graph g2 = i.G.getCopy();
            g2.deleteVertex(key2);
            if (solve(new Instance(g1, i.k - 1))) {
                return true;
            }
            if (solve(new Instance(g2, i.k - 1))) {
                return true;
            }
        }
        return false;
    }
}
```

```java
package vertexcover;

public class Instance extends SearchTree{
    Graph G;
    int k;

    public Instance(Graph G,int k){
        this.G = G;
        this.k = k;
    }

}
```