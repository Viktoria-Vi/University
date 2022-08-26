package src.PPClean.Similarity;


/**
 * Levenshtein String similarity
 */
public class Levenshtein implements StringSimilarity {
    public Levenshtein() {
    }

    /**
     * Calculates Levenshtein String similarity for x and y
     *
     * @param x
     * @param y
     * @return Similarity score in range [0,1]
     */
    @Override
    public double compare(String x, String y) {
        int m = x.length();
        int n = y.length();
        int solve[][] = new int[m + 1][n + 1];
        for (int i = 0; i < m + 1; i++) {
            for (int j = 0; j < n + 1; j++) {
                if (i == 0) {
                    solve[i][j] = j;
                } else if (j == 0) {
                    solve[i][j] = i;
                } else {
                    if (x.charAt(i - 1) == y.charAt(j - 1)) {
                        solve[i][j] = solve[i - 1][j - 1];
                    } else {
                        solve[i][j] = Math.min(solve[i - 1][j - 1] + 1,
                                Math.min(solve[i - 1][j] + 1,
                                        solve[i][j - 1] + 1));
                    }
                }
            }
        }
        return 1 - (double) solve[m][n]/(double) Math.max(m,n);
    }
}
