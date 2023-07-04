package src.Test;

import org.junit.jupiter.api.Test;
import src.PPClean.Similarity.Levenshtein;
import src.PPClean.Similarity.StringSimilarity;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class Task3 {
    @Test
    public void testLevenshteinSimilarity() {
        System.out.println("[Task3: testLevenshteinSimilarity]");
        Levenshtein levenshtein = new Levenshtein();
        System.out.println("Comparing 'morning' with 'evening': Expected Levenshtein is 0.571");
        assertEquals(levenshtein.compare("morning", "evening"), 0.571, 0.05);
        System.out.println("Comparing 'Data Integration' with 'Distributed Data Management': Expected Levenshtein is 0.259");
        assertEquals(levenshtein.compare("Data Integration", "Distributed Data Management"), 0.259, 0.05);
        System.out.println("Comparing 'Hallo Welt' with 'Hallo Marburg': Expected Levenshtein is 0.461");
        assertEquals(levenshtein.compare("Hallo Welt", "Hallo Marburg"), 0.461, 0.05);
        System.out.println("Comparing a duplicate: Expected Levenshtein is 1");
        assertEquals(levenshtein.compare("arnie morton's of chicago", "arnie morton's of chicago"), 1.0, 0.05);
    }
}
