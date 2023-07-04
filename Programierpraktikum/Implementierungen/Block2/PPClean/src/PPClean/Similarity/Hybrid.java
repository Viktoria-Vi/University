package src.PPClean.Similarity;

import src.PPClean.Data.Record;

import java.util.List;

/**
 * Record similarity for comparing two Records attribute by attribute either with {@link Levenshtein} or {@link Jaccard}
 */
public class Hybrid implements RecordSimilarity {

    private List<String> policies;
    private final int JACCARD_N = 3;
    private StringSimilarity jaccard;
    private StringSimilarity levenshtein;

    /**
     * @param policies List of comparison policies, write "L" for {@link Levenshtein},
     *                 "J" {@link Jaccard}, and null to skip an attribute.
     *                 The policies are applied in order of attributes (e.g., first policy to first attribute)
     */
    public Hybrid(List<String> policies) {
        this.policies = policies;
        this.jaccard = new Jaccard(JACCARD_N);
        this.levenshtein = new Levenshtein();
    }

    /**
     * Compares two Records attribute by attribute according to {@link #policies}.
     * For Jaccard similarity, a default window size of {@link #JACCARD_N} is used
     *
     * @param r1
     * @param r2
     * @return Similarity score in range [0,1] (1=same, 0=very different)
     */
    @Override
    public double compare(Record r1, Record r2) throws IndexOutOfBoundsException {
        if (policies.size() != r1.getContent().size() || policies.size() != r2.getContent().size()) {
            throw new IndexOutOfBoundsException();
        }
        double res = 0;
        int divisor = policies.size();
        for (int i = 0; i < policies.size(); i++) {
            if (policies.get(i) == null) {
                res++;
                continue;
            }
            if (policies.get(i).equals("L")) {
                res += jaccard.compare(r1.getContent().get(i), r2.getContent().get(i));
            }
            if (policies.get(i).equals("J")) {
                res += levenshtein.compare(r1.getContent().get(i), r2.getContent().get(i));
            }
        }
        return res / (double) (divisor);
    }
}

