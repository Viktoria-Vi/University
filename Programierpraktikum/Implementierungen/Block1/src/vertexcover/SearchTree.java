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

    public int solve(Graph g){
        int worstCase = g.getEdgeCount()/2;
        while(solve(new Instance(g,worstCase))){
            worstCase-=1;
        }
        return worstCase+1;
    }

}
