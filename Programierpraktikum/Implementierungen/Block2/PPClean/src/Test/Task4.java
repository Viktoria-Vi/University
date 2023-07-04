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
import src.PPClean.Similarity.*;

import java.util.Arrays;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Task4 {

    Table inputTable = TableFactory.getDefaultInputTable();
    Set<Duplicate> groundTruth = Helper.readDuplicatesFromDefaultGT();
    Performance performance = Performance.initInstance(groundTruth);

    @org.junit.jupiter.api.Test
    public void testHybridRecordSimilarity() {
        System.out.println("[Task4: testHybridRecordSimilarity]");
        System.out.println("Creating Hybrid with policies [null, \"L\", \"L\", \"J\", \"L\", \"J\"]...");
        Hybrid hybrid = new Hybrid(Arrays.asList(null, "L", "L", "J", "L", "J"));
        System.out.println("Comparing first four records with respect to given policies...");
        Record r1 = inputTable.getData().get(0);
        Record r2 = inputTable.getData().get(1);
        Record r3 = inputTable.getData().get(2);
        Record r4 = inputTable.getData().get(3);
        System.out.println("Comparing first and second record: Expecting 0.774");
        assertEquals(hybrid.compare(r1, r2), 0.774, 0.05);
        System.out.println("Comparing second and third record: Expecting 0.184");
        assertEquals(hybrid.compare(r2, r3), 0.184, 0.05);
        System.out.println("Comparing third and fourth record: Expecting 0.694");
        assertEquals(hybrid.compare(r3, r4), 0.694, 0.05);
    }

    @Test
    void testHybridNaiveDetection2() {
        System.out.println("[Task4: testHybridNaiveDetection2]");
        System.out.println("Creating Hybrid with policies [null, \"L\", null, null, \"J\", null]...");
        Hybrid hybrid = new Hybrid(Arrays.asList(null, "L", null, null, "J", null));
        System.out.println("Applying NaiveDetection with Hybrid and a threshold of 0.5...");
        Set<Duplicate> duplicates = new NaiveDetection(0.5).detect(inputTable, hybrid);
        Score s = performance.evaluate(duplicates);
        System.out.println("Expected results: Precision: 0.850, Recall: 0.866, F1-Score: 0.858");
        assertEquals(s.getPrecision(), 0.850, 0.05);
        assertEquals(s.getRecall(), 0.866, 0.05);
        assertEquals(s.getF1(), 0.858, 0.05);
    }

    @Test
    void testHybridNaiveDetection5() {
        System.out.println("[Task4: testHybridNaiveDetection5]");
        System.out.println("Creating Hybrid with policies [null, \"L\", \"L\", \"J\", \"L\", \"J\"]...");
        Hybrid hybrid = new Hybrid(Arrays.asList(null, "L", "L", "J", "L", "J"));
        System.out.println("Applying NaiveDetection with Hybrid and a threshold of 0.8...");
        Set<Duplicate> duplicates = new NaiveDetection(0.8).detect(inputTable, hybrid);
        Score s = performance.evaluate(duplicates);
        System.out.println("Expected results: Precision 0.911, Recall: 0.276, F1-Score 0.424");
        assertEquals(s.getPrecision(), 0.911, 0.05);
        assertEquals(s.getRecall(), 0.276, 0.05);
        assertEquals(s.getF1(), 0.424, 0.05);
    }
}