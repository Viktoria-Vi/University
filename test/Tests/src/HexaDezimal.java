public class HexaDezimal implements Number{

    public static String valueString;
    public static void setValueString(String valueString) {
        HexaDezimal.valueString = valueString;
    }


    public static String getValueString() {
        return valueString;
    }

    public HexaDezimal(String valueString){
        this.valueString = valueString;
    }                   //Konstruktor


    @Override
    public int toIntValue() {

        Integer toWrongInt =  Integer.parseInt(valueString, 16);            //Der String wird durch Integer.ParseInt zum einem Integer und dann zu einem Int umgewandelt
        int toRealInt = toWrongInt;

        return toRealInt;
    }

    @Override
    public void fromIntValue(int value) {
        valueString = Integer.toHexString(value);            //wandelt den Int in eine Hexadezimale Zahl in form eines Strings um und weißt ihn der Objektinstanz zu

    }
}
