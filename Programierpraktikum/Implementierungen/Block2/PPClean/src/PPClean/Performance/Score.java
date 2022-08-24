package src.PPClean.Performance;

/**
 * Data structure to capture three important and related duplicate
 * detection performance metrics: precision, recall, and f1 score
 */
public class Score {
    final double precision;
    final double recall;
    final double f1;

    /**
     * @param precision Precision value in range [0,1]
     * @param recall Recall value in range [0,1]
     * @param f1 F1 score value in range [0,1]
     */
    public Score(double precision, double recall, double f1) {
        this.precision = precision;
        this.recall = recall;
        this.f1 = f1;
    }

    public double getPrecision() {
        return precision;
    }

    public double getRecall() {
        return recall;
    }

    public double getF1() {
        return f1;
    }
}
