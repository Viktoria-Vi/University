package src.Test;

import org.junit.jupiter.api.Test;
import src.PPClean.Data.Duplicate;
import src.PPClean.Data.Table;
import src.PPClean.Data.TableFactory;
import src.PPClean.DuplicateDetection.SortedNeighborhoodDetection;
import src.PPClean.Helper;
import src.PPClean.Performance.Performance;
import src.PPClean.Performance.Score;
import src.PPClean.Similarity.*;

import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Task5 {

    Table inputTable = TableFactory.getDefaultInputTable();
    Set<Duplicate> groundTruth = Helper.readDuplicatesFromDefaultGT();
    Performance performance = Performance.initInstance(groundTruth);

    @Test
    void testSNHDetection() {
        System.out.println("[Task5: testSNHDetection]");
        System.out.println("Creating SingleAttributeEquality for name comparison (attributeIndex: 1)...");
        SingleAttributeEquality nameAttributeEquality = new SingleAttributeEquality(1);
        int[] keyComponents = {0, 3, 3, 3, 3, 3};
        System.out.println("Creating SortedNeighborhoodDetection with the following parameteres:");
        System.out.println("  similarity threshold: 0.8, window size: 4, key components: [0,3,3,3,3,3]");
        SortedNeighborhoodDetection SNHDetection = new SortedNeighborhoodDetection(0.8, 4, keyComponents);
        System.out.println("Applying SortedNeighborhoodDetection with SingleAttributeEquality...");
        Set<Duplicate> duplicates = SNHDetection.detect(inputTable, nameAttributeEquality);
        Score s = performance.evaluate(duplicates);
        System.out.println("Expected results: Precision: 0.942, Recall: 0.732, F1-Score: 0.824");
        assertEquals(s.getPrecision(), .942, 0.05);
        assertEquals(s.getRecall(), .732, 0.05);
        assertEquals(s.getF1(), .824, 0.05);
    }
}
