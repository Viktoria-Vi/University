package src.PPClean;

import src.PPClean.Data.Duplicate;
import src.PPClean.Data.Table;
import src.PPClean.Data.TableFactory;
import src.PPClean.Performance.Performance;

import java.util.Set;

import static src.PPClean.Configuration.*;

public class PPClean {

    public static void main(String[] args) {
        Table inputTable = TableFactory.getDefaultInputTable();
        Set<Duplicate> groundTruth = Helper.readDuplicatesFromDefaultGT();
        Performance performance = Performance.initInstance(groundTruth);
        // Hier könnt ihr nach Belieben rumexperimentieren
        // Zum Bestehen wichtig sind lediglich die Tests
    }
}
