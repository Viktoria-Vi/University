package src.PPClean;

import src.PPClean.Data.Duplicate;
import src.PPClean.Data.Record;
import src.PPClean.Data.Table;
import src.PPClean.Data.TableFactory;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.*;

import static src.PPClean.Configuration.DATA_SEPARATOR;
import static src.PPClean.Configuration.PATH_DUPLICATES_TRUTH;

/**
 * Collection of utility methods
 */
public class Helper {

    /**
     * Reads a file of the following format:
     * id1	id2
     * 1	2
     * 3	4
     * After the header line, all lines represent a Record pair forming a correct Duplicate
     * The Duplicates are re-mapped to Records via the referenceTable (using ID as a position index)
     * @param pathToFile Absolute or relative path to the ground truth data
     * @param dataSeparator Separator between data points (e.g., comma for CSV)
     * @param referenceTable Table for re-mapping Record IDs to Record objects
     * @return Set of Duplicates read from file
     */
    public static Set<Duplicate> readDuplicatesFromFile(String pathToFile, String dataSeparator, Table referenceTable) {
        List<Record> referenceRecords = referenceTable.getData();
        Set<Duplicate> duplicates = new HashSet<>();
        try (BufferedReader Reader = new BufferedReader(new FileReader(pathToFile))) {
            String firstLine = Reader.readLine(); // we assume the first line to contain attribute names
            List<String> attributes = Arrays.asList(firstLine.split(dataSeparator));
            String line = null;
            while ((line = Reader.readLine()) != null) {
                List<String> duplicateIDs = Arrays.asList(line.split(dataSeparator));
                int duplicateID1 = Integer.parseInt(duplicateIDs.get(0))-1;
                int duplicateID2 = Integer.parseInt(duplicateIDs.get(1))-1;
                Record r1 = referenceRecords.get(duplicateID1);
                Record r2 = referenceRecords.get(duplicateID2);
                duplicates.add(new Duplicate(r1, r2));
            }
        } catch (Exception e) {
            System.out.printf("Could not read duplicates from %s%n", pathToFile);
        }
        return duplicates;
    }

    /**
     * @return Set of Duplicates for default ground truth path and default data separator (see {@link Configuration})
     */
    public static Set<Duplicate> readDuplicatesFromDefaultGT() {
        Table inputTable = TableFactory.getDefaultInputTable();
        return readDuplicatesFromFile(PATH_DUPLICATES_TRUTH, DATA_SEPARATOR, inputTable);
    }

    /**
     * Checks if x is greater than y by comparing them character-wise
     * @param x
     * @param y
     * @return true if x > y (character-wise), else false
     */
    public static boolean isStringGreater(String x, String y) {
        for (int i = 0; i < x.length(); i++) {
            if (i == y.length()) { // y has no more characters
                return true;
            }
            int char_xi = Character.getNumericValue(x.charAt(i));
            int char_yi = Character.getNumericValue(y.charAt(i));
            if (char_xi > char_yi)
                return true;
            if (char_xi < char_yi)
                return false;
        }
        return false; // x is a real substring of y
    }
}
