package src.Test;

import org.junit.jupiter.api.Test;
import src.PPClean.Data.Duplicate;
import src.PPClean.Data.Record;
import src.PPClean.Data.Table;
import src.PPClean.Data.TableFactory;
import src.PPClean.DuplicateDetection.NaiveDetection;
import src.PPClean.Helper;
import src.PPClean.Performance.Performance;
import src.PPClean.Performance.Score;
import src.PPClean.Similarity.RecordSimilarity;
import src.PPClean.Similarity.SingleAttributeEquality;

import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;

class Task1 {

    Table inputTable = TableFactory.getDefaultInputTable();
    Set<Duplicate> groundTruth = Helper.readDuplicatesFromDefaultGT();
    Performance performance = Performance.initInstance(groundTruth);

    @Test
    public void testSingleAttributeEquality() {
        System.out.println("[Task1: testSingleAttributeEquality]");
        System.out.println("Creating SingleAttributeEquality for name comparison (attributeIndex: 1)...");
        SingleAttributeEquality nameAttributeEquality = new SingleAttributeEquality(1);
        System.out.println("Comparing first four records with respect to their name attribute...");
        Record r1 = inputTable.getData().get(0);
        Record r2 = inputTable.getData().get(1);
        Record r3 = inputTable.getData().get(2);
        Record r4 = inputTable.getData().get(3);
        System.out.println("Comparing first and second record: Expecting 1 (equality)");
        assertEquals(nameAttributeEquality.compare(r1, r2), 1, 0);
        System.out.println("Comparing second and third record: Expecting 0 (inequality)");
        assertEquals(nameAttributeEquality.compare(r2, r3), 0, 0);
        System.out.println("Comparing third and fourth record: Expecting 0 (inequality)");
        assertEquals(nameAttributeEquality.compare(r3, r4), 0, 0);
    }

    @Test
    void testNaiveDetection() {
        System.out.println("[Task1: testNaiveDetection]");
        System.out.println("Creating SingleAttributeEquality for name comparison (attributeIndex: 1)...");
        SingleAttributeEquality nameAttributeEquality = new SingleAttributeEquality(1);
        System.out.println("Applying NaiveDetection with SingleAttributeEquality...");
        Set<Duplicate> duplicates = new NaiveDetection(0).detect(inputTable, nameAttributeEquality);
        Score s = performance.evaluate(duplicates);
        System.out.println("Expected results: Precision 0.931, Recall: 0.732, F1-Score: 0.820");
        assertEquals(s.getPrecision(), 0.931, 0.05);
        assertEquals(s.getRecall(), 0.732, 0.05);
        assertEquals(s.getF1(), 0.820, 0.05);
    }
}