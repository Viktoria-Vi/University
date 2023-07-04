package src.PPClean.Similarity;

/**
 * Interface for String comparison algorithms
 */
public interface StringSimilarity {
    /**
     * @param s1
     * @param s2
     * @return Similarity score in range [0,1] (1=same, 0=very different)
     */
    double compare(String s1, String s2);
}
