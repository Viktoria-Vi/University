package src.PPClean.Similarity;

import java.util.HashSet;
import java.util.Set;

/**
 * Jaccard String similarity
 */
public class Jaccard implements StringSimilarity {

    int n;

    /**
     * @param n Length of substrings
     */
    public Jaccard(int n) {
        this.n = n;
    }

    /**
     * Calculates Jaccard String similarity for x and y, using ngrams of length {@link #n}
     * @param x
     * @param y
     * @return Similarity score in range [0,1]
     */
    @Override
    public double compare(String x, String y) {
        double res = 0;
        Set<String> ngramsX = new HashSet<>();
        Set<String> ngramsY = new HashSet<>();
        // BEGIN SOLUTION



        // END SOLUTION
        return res;
    }
}
