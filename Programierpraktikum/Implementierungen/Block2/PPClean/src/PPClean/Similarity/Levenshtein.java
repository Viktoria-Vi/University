package src.PPClean.Similarity;

/**
 * Levenshtein String similarity
 */
public class Levenshtein implements StringSimilarity {
    public Levenshtein() {
    }

    /**
     * Calculates Levenshtein String similarity for x and y
     * @param x
     * @param y
     * @return Similarity score in range [0,1]
     */
    @Override
    public double compare(String x, String y) {
        double res = 0;
        int m = x.length();
        int n = y.length();
        // BEGIN SOLUTION



        // END SOLUTION
        return res;
    }
}
