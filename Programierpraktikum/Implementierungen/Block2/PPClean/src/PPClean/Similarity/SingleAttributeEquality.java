package src.PPClean.Similarity;

import src.PPClean.Data.Record;

/**
 * Simple heuristic to compare two Records
 * It compares two Records for equality based only on a single attribute
 */
public class SingleAttributeEquality implements RecordSimilarity {

    int attributeIndex;

    /**
     * @param attributeIndex Position of Record content at which to check for equality
     */
    public SingleAttributeEquality(int attributeIndex) {
        this.attributeIndex = attributeIndex;
    }

    /**
     * @param r1
     * @param r2
     * @return 1 if r1 and r2 are equal at position {@link #attributeIndex}, else 0
     */
    @Override
    public double compare(Record r1, Record r2) {
        double res = 0;
        if(r1.getContent().get(attributeIndex).equals(r2.getContent().get(attributeIndex))){
            res = 1;
        }
        return res;
    }
}
