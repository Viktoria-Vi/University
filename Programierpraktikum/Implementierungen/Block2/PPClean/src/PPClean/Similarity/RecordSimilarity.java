package src.PPClean.Similarity;

import src.PPClean.Data.Record;

/**
 * Interface for Record comparison algorithms
 */
public interface RecordSimilarity {
    /**
     * @param r1
     * @param r2
     * @return Similarity score in range [0,1] (1=same, 0=very different)
     */
    double compare(Record r1, Record r2);
}
