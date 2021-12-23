```java
public class Caesar {
    static String decode(String coded, char a, char b) {
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        int charOne = 0;
        int charTwo = 0;
        for (int i = 0; i < alphabet.length(); i++) {

            if (alphabet.charAt(i) == a || alphabet.toLowerCase().charAt(i) == a) {
                charOne = i;
            }
            if (alphabet.charAt(i) == b || alphabet.toLowerCase().charAt(i) == b) {
                charTwo = i;
            }
        }
        int distance = charTwo - charOne;
        String decoded = "";
        for (int i = 0; i < coded.length(); i++) {
            for (int j = 0; j < alphabet.length(); j++) {
                if (alphabet.charAt(j) == coded.charAt(i)) {
                    if (j + distance > 25) {
                        decoded += alphabet.charAt(j + distance - 25);
                    } else if (j + distance < 0) {
                        decoded += alphabet.charAt(j + distance + 25);
                    } else {
                        decoded += alphabet.charAt(j + distance);
                    }
                }
            }
        }
        return decoded;
    }

    public static void main(String[] args) {
        decode("HGXBO", 'W', 'Z');
        decode("DKKLAJ", 'n', 'R');
        decode("TUFSMJOH", 'A', 'Z');
        decode("VJGFKDDWM", 'E', 'c');
        decode("ZQJCAKJIWOPAN", 'W', 'A');
        decode("XHZRGFLGJSOFRNS", 'G', 'B');
    }
}
```

```java
import java.util.Arrays;

public class Card implements Comparable {

    private final String name;
    private final int type;
    public static final int EFFECT_MONSTER = 2; //Durch das erstellen einzelner Felder kann man nacher mit Card.usw darauf zugreifen (s. CardTest)
    public static final int NORMAL_MONSTER = 1;
    public static final int SPELL_CARD = 3;
    public static final int TRAP_CARD = 4;
    private final int release;

    public Card(String name, int type, int release) {
        this.name = name;
        this.release = release;
        if (type == EFFECT_MONSTER) {
            this.type = EFFECT_MONSTER;
        } else if (type == NORMAL_MONSTER) {
            this.type = NORMAL_MONSTER;
        } else if (type == SPELL_CARD) {
            this.type = SPELL_CARD;
        } else if (type == TRAP_CARD) {
            this.type = TRAP_CARD;
        } else {
            this.type = TRAP_CARD; //unnessecary Statement lol
        }
    }

    public String getName() {
        return name;
    }

    public int getRelease() {
        return release;
    }

    public int getType() {
        return type;
    }

    @Override
    public String toString() { //Schreibt vor wie die toString methode funktioniert
        if (type == 1) {
            return "NORMAL_MONSTER: " + name;
        }
        if (type == 2) {
            return "EFFECT_MONSTER: " + name;
        }
        if (type == 3) {
            return "SPELL_CARD: " + name;
        } else {
            return "TRAP_CARD: " + name;
        }
    }

    @Override
    public int compareTo(Object o) {
        Card other = (Card) o; //Object wir in ein Card-Object umgewandelt(ge-castet)
        int result = Integer.compare(this.getRelease(), other.getRelease());
        if (result == 0) {
            result = Integer.compare(this.getType(), other.getType());
        }
        if (result == 0) {
            result = this.getName().compareTo(other.getName());
        }
        return result;
    }

    public static void main(String[] args) { //muss ne Klasse ne Main haben?

    }
}
```

```java
import org.junit.jupiter.api.Test;

import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

class CardTest {

    Card[] testDeck = new Card[]{ //erstellt erst neues Card-Array
            new Card("Viktoria", Card.EFFECT_MONSTER, 2021),
            new Card("Felix", Card.NORMAL_MONSTER, 2021),
            new Card("Anna", Card.NORMAL_MONSTER, 2021),
            new Card("Mankel", Card.NORMAL_MONSTER, 2021),
            new Card("Akito", Card.EFFECT_MONSTER, 2021),
            new Card("Leann", Card.EFFECT_MONSTER, 2021),
            new Card("Anna spawnt Akito", Card.SPELL_CARD, 2021),
            new Card("Zettelabgabe verschoben", Card.SPELL_CARD, 2020),
            new Card("Tut fällt aus", Card.TRAP_CARD, 2021),
            new Card("Chinesische Ringe", Card.TRAP_CARD, 2020)
    };

    @Test
    void compareTo() {
        Arrays.sort(testDeck); //sortiert Array
        assertEquals("[Spellcard: Zettelabgabe verschoben, Trapcard: Chinesische Ringe, NORMAL_MONSTER: Anna," +
                        " NORMAL_MONSTER: Felix, NORMAL_MONSTER: Mankel, EFFECT_MONSTER: Akito, EFFECT_MONSTER: Leann," +
                        " EFFECT_MONSTER: Viktoria, Spellcard: Anna spawnt Akito, Trapcard: Tut fällt aus]",
                Arrays.toString(testDeck)); //vergleicht die sortierte Ausgabe als String mit dem erwarteten String
    }
}
```

```java
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

```

```java
public class HexaDecimal implements Number {
    public String value;

    public HexaDecimal(String value) {
        this.value = value.toUpperCase();
    }

    @Override
    public int toIntValue() {
        return Integer.valueOf(value, 16); //das wandelt von selbst aus dem Hexadezimalsystem um
    }

    @Override
    public void fromIntValue(int value) {
        this.value = Integer.toHexString(value).toUpperCase(); //das erstellt einen String im Hexadezimalsystem
    }
}

```

```java
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class HexaDecimalTest {

    @Test
    void toIntValue() {
        HexaDecimal testOne = new HexaDecimal("154B3");
        HexaDecimal testTwo = new HexaDecimal("16C");
        assertEquals(testOne.toIntValue(), 87219);
        assertEquals(testTwo.toIntValue(), 364);
    }

    @Test
    void fromIntValue() {
        HexaDecimal testOne = new HexaDecimal("0"); //erstelle zwei Objekte mit beliebiger Eingabe
        HexaDecimal testTwo = new HexaDecimal("0");
        testOne.fromIntValue(2810); //das setzt den value jeweils new
        testTwo.fromIntValue(1312);
        assertEquals(testOne.value, "AFA"); //test für den neuen value
        assertEquals(testTwo.value, "520");
        assertNotEquals("0", testOne.value); //test das der alte value nicht mehr existiert
        assertNotEquals("0", testTwo.value);
    }
}
```

