public interface Number {
    int toIntValue();

    void fromIntValue(int value);

    default void add(Number number) {
        fromIntValue(this.toIntValue() + number.toIntValue()); //this in default Methoden referenziert immer auf das Objekt der Klasse, die sie Implementiert
    }

    default void subtract(Number number) {
        fromIntValue(this.toIntValue() - number.toIntValue());
    }

    default void multiply(Number number) {
        fromIntValue(this.toIntValue() * number.toIntValue());
    }

    default void divide(Number number) {
        fromIntValue(this.toIntValue() / number.toIntValue());
    }
}
