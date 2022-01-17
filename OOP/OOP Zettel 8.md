

```java
public class Caesar {
    static String decode(String coded, char a, char b) {
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"; //Alphabet für die Entschlüsselung
        int charOne = 0; //Zwischenspeicher für die Stelle von a in Alphabet
        int charTwo = 0; //Zwischenspeicher für die Stelle von b in Alphabet
        for (int i = 0; i < alphabet.length(); i++) {
            if (alphabet.charAt(i) == a || alphabet.toLowerCase().charAt(i) == a) { //Suchen nach a
                charOne = i;
            }
            if (alphabet.charAt(i) == b || alphabet.toLowerCase().charAt(i) == b) { //Suchen nach b
                charTwo = i;
            }
        }
        int distance = charTwo - charOne; //Berechnung der Entfernung der beiden Buchstaben
        String decoded = ""; //Leerer String um das decodierte Wort aufzubauen
        for (int i = 0; i < coded.length(); i++) {
            for (int j = 0; j < alphabet.length(); j++) {
                if (alphabet.charAt(j) == coded.charAt(i)) { //Berechnung der Entschlüsselung
                    if (j + distance > 25) {
                        decoded += alphabet.charAt(j + distance - 26); //Falls der entschlüsselte Index > 25 ist
                    } else if (j + distance < 0) {
                        decoded += alphabet.charAt(j + distance + 26); //Falls der entschlüsselte Index < 25 ist
                    } else {
                        decoded += alphabet.charAt(j + distance);
                    }
                }
            }
        }
        return decoded;
    }
}
```

```java
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class CaesarTest {

    @Test
    void decode() {
        assertEquals(Caesar.decode("HGXBO", 'W', 'Z'), "KJAER");
        assertEquals(Caesar.decode("DKKLAJ", 'n', 'R'), "HOOPEN");
        assertEquals(Caesar.decode("TUFSMJOH", 'A', 'Z'), "STERLING");
        assertEquals(Caesar.decode("VJGFKDDWM", 'E', 'c'), "THEDIBBUK");
        assertEquals(Caesar.decode("ZQJCAKJIWOPAN", 'W', 'A'), "DUNGEONMASTER");
        assertEquals(Caesar.decode("XHZRGFLGJSOFRNS", 'G', 'B'), "SCUMBAGBENJAMIN");
        assertEquals(Caesar.decode("HEROIHEHHC", 'J', 'F'), "DANKEDADDY");
    }
}
```

```java
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
}
```

```java
import org.junit.jupiter.api.Test;

import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

class CardTest {


    Card card1 = new Card("Viktoria", Card.EFFECT_MONSTER, 2021);
    Card card2 = new Card("Felix", Card.NORMAL_MONSTER, 2021);
    Card card3 = new Card("Anna", Card.NORMAL_MONSTER, 2021);
    Card card4 = new Card("Mankel", Card.NORMAL_MONSTER, 2021);
    Card card5 = new Card("Mimi", Card.EFFECT_MONSTER, 2021);
    Card card6 = new Card("Leann", Card.EFFECT_MONSTER, 2021);
    Card card7 = new Card("Anna spawnt Akito", Card.SPELL_CARD, 2021);
    Card card8 = new Card("Zettelabgabe verschoben", Card.SPELL_CARD, 2020);
    Card card9 = new Card("Tut fällt aus", Card.TRAP_CARD, 2021);
    Card card10 = new Card("Chinesische Ringe", Card.TRAP_CARD, 2020);
    Card card11 = new Card("Tut fällt aus", Card.TRAP_CARD, 2020);//warum auch immer verlangt die Aufgabe so ein bspl
    Card card12 = new Card("Tut fällt aus", Card.TRAP_CARD, 2021); //genaues Duplikaat von card9


    @Test
    void compareTo() {
        Card[] testDeck = new Card[]{card1, card2, card3, card4, card5, card6, card7, card8, card9, card10, card11, card12};//Rohes-array von den Karten
        Arrays.sort(testDeck); //sortiert Array
        Card[] sortedDeck = new Card[]{card8, card10, card11, card3, card2, card4, card6, card5, card1, card7, card9, card12};//richtig sortiertes Deck
        Card[] falseSortedDeck = new Card[]{card8, card10, card11, card3, card2, card4, card6, card5, card1, card7, card12, card9};//Falsch sortiertes Deck(vertauschte letzte stellen)
        assertArrayEquals(testDeck, sortedDeck); //zeigt das die Sortierung klappt, und das Duplikate nach auftreten im Ursprungsarray gerreiht werden
        assertFalse(Arrays.equals(testDeck, falseSortedDeck));//false-Test um das hierrüber nochmal zu unterstützen;
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
        HexaDecimal testTwo = new HexaDecimal("FC7AFD");
        assertEquals(testOne.toIntValue(), 87219);
        assertEquals(testTwo.toIntValue(), 16546557);
    }

    @Test
    void fromIntValue() {
        HexaDecimal testOne = new HexaDecimal("0"); //erstelle zwei Objekte mit beliebiger Eingabe
        HexaDecimal testTwo = new HexaDecimal("0");
        testOne.fromIntValue(2810); //das setzt den value jeweils neu
        testTwo.fromIntValue(1312);
        assertEquals(testOne.value, "AFA"); //test für den neuen value
        assertEquals(testTwo.value, "520");
        assertNotEquals("0", testOne.value); //test das der alte value nicht mehr existiert
        assertNotEquals("0", testTwo.value);
    }
}
```

