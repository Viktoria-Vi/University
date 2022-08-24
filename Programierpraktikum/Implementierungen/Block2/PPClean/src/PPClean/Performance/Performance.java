package src.PPClean.Performance;

import src.PPClean.Data.Duplicate;

import java.util.HashSet;
import java.util.Set;

/**
 * Singleton class to evaluate detected duplicates against a ground truth set of duplicates
 */
public class Performance {

    private static Performance instance;
    private Set<Duplicate> groundTruth;

    /**
     * @param groundTruth Set of correct duplicates
     */
    private Performance(Set<Duplicate> groundTruth) {
        this.groundTruth = groundTruth;
    }

    /**
     * @param duplicates Set of detected duplicates
     * @return A Score representing Precision, Recall, and F1 score
     *         of evaluating detected duplicates against ground truth
     */
    public Score evaluate(Set<Duplicate> duplicates) {
        double precision;
        double recall;
        double f1;

        Set<Duplicate> intersection = new HashSet<>(duplicates);
        intersection.retainAll(this.groundTruth);

        double TP = intersection.size(); // true positives
        double FP = duplicates.size() - TP; // false positives
        double FN = this.groundTruth.size() - TP; // false negatives

        precision = TP / (TP + FP);
        recall = TP / (TP + FN);

        if (recall+precision > 0) {
            f1 = 2 * ((precision * recall) / (precision + recall));
        } else {
            f1 = 0;
        }

        System.out.printf("Evaluation results: Precision: %f, Recall: %f, F1-Score: %f%n", precision, recall, f1);
        return new Score(precision, recall, f1);
    }

    public static Performance getInstance() {
        return instance;
    }

    /**
     * Initializes (and also overwrites) the Singleton instance of Performance
     * @param groundTruth Set of correct duplicates
     * @return Singleton instance of Performance
     */
    public static Performance initInstance(Set<Duplicate> groundTruth) {
        instance = new Performance(groundTruth);
        return instance;
    }
}
