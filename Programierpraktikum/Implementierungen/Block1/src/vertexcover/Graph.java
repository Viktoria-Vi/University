package vertexcover;

import java.util.Set;
/**
 * The interface represents the graph methods which have to be implemented.
 */
public interface Graph {
    					
    
    /**
     * Adds a new vertex to the graph
     * @param v Id of the new added vertex
     */
    public void addVertex (Integer v);
    
    /**
     * Adds a new edge to the graph
     * @param v First Id of incident vertex
     * @param w Second ID of incident vertex
     */
    public void addEdge (Integer v, Integer w);
    
    /**
     * Delets a vertex from the graph
     * @param v Id of the new added vertex
     */
    public void deleteVertex (Integer v);
    
    /**
     * Delets an edge from the graph
     * @param v First Id of incident vertex
     * @param w Second ID of incident vertex
     */
    public void deleteEdge (Integer v, Integer w);
    
    /**
     * Return whether the given vertex belongs to the graph
     * @param v Vertex ID which will be checked
     * @return True if the ID belongs to the graph, False if not
     */
    public boolean contains (Integer v);
    
    /**
     * Return the degree of a vertex in the graph
     * @param v Vertex ID 
     * @return Degree of vertex v if v in the graph, null else
     */
    public int degree (Integer v);
    
    /**
     * Returns whether vertices v and w are adjacent
     * @param v ID of first vertex
     * @param w ID of second vertex
     * @return True if v and w are adjacent, False else
     */
    public boolean adjacent (Integer v, Integer w);
    
    /**
     * Creats a copy of the graph
     * @return Copy of the graph
     */
    public Graph getCopy();
    
    /**
     * Returns the neighbors of a vertex
     * @param v ID of the vertex
     * @return Set of the neighbors of vertex v
     */
    public Set<Integer> getNeighbors (Integer v);
    
    /**
     * Returns number of vertices in the graph
     * @return Number of vertices in the graph
     */
    public int size ();
    
    /**
     * Calculates number of edges in the graph
     * @return number of edges of the graph
     */
    public int getEdgeCount ();
        
    /**
     * Returns the vertex set
     * @return Set of the vertices of the graph
     */
    public Set<Integer> getVertices ();
}
