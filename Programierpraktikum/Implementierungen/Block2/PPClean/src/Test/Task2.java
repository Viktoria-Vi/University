package src.Test;

import org.junit.jupiter.api.Test;
import src.PPClean.Similarity.Jaccard;
import src.PPClean.Similarity.StringSimilarity;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Task2 {

    @Test
    public void testJaccardSimilarity() {
        System.out.println("[Task2: testJaccardSimilarity]");
        Jaccard jaccardN1 = new Jaccard(1);
        Jaccard jaccardN2 = new Jaccard(2);
        Jaccard jaccardN3 = new Jaccard(3);
        System.out.println("Comparing 'morning' with 'evening': Expected Jaccard is 0.375");
        assertEquals(jaccardN1.compare("morning", "evening"), 0.375, 0.05);
        System.out.println("Comparing 'Data Integration' with 'Distributed Data Management': Expected Jaccard is 0.176");
        assertEquals(jaccardN2.compare("Data Integration", "Distributed Data Management"), 0.176, 0.05);
        System.out.println("Comparing 'Hallo Welt' with 'Hallo Marburg': Expected Jaccard is 0.266");
        assertEquals(jaccardN3.compare("Hallo Welt", "Hallo Marburg"), 0.266, 0.05);
        System.out.println("Comparing a duplicate: Expected Jaccard is 1");
        assertEquals(jaccardN3.compare("arnie morton's of chicago", "arnie morton's of chicago"), 1.0, 0.05);
    }

}
