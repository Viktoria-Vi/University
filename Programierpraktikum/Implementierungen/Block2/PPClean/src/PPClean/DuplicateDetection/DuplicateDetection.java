package src.PPClean.DuplicateDetection;

import src.PPClean.Data.Duplicate;
import src.PPClean.Data.Table;
import src.PPClean.Similarity.RecordSimilarity;

import java.util.Set;

/**
 * Interface for duplicate detection algorithms
 */
public interface DuplicateDetection {
    /**
     * @param table Table to check for duplicates
     * @param recSim Similarity measure to use for comparing two records
     * @return Set of detected duplicates
     */
    Set<Duplicate> detect(Table table, RecordSimilarity recSim);
}
