package src.PPClean.Data;

/**
 * Data structure to represent two {@link src.PPClean.Data.Record} instances that form a duplicate
 */
public class Duplicate {
    private Record record1;
    private Record record2;

    /**
     * @param record1 Record duplicate to record2
     * @param record2 Record duplicate to record1
     */
    public Duplicate(Record record1, Record record2) {
        this.record1 = record1;
        this.record2 = record2;
    }

    public Record getRecord1() {
        return record1;
    }

    public void setRecord1(Record record1) {
        this.record1 = record1;
    }

    public Record getRecord2() {
        return record2;
    }

    public void setRecord2(Record record2) {
        this.record2 = record2;
    }

    @Override
    public String toString() {
        return record1.toString() + record2.toString();
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Duplicate) {
            Duplicate d = (Duplicate) obj;
            return ((this.record1.equals(d.getRecord1()) && this.record2.equals(d.getRecord2())) ||
                    (this.record1.equals(d.getRecord2()) && this.record2.equals(d.getRecord1())));
        } else {
            return false;
        }
    }

    @Override
    public int hashCode() {
        return this.record1.getContent().get(0).hashCode() + this.record2.getContent().get(0).hashCode();
    }
}
