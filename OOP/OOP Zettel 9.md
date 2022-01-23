```java
public class Reverse {
    /**
     * Die Methode nimmt zwei beliebige Strings entgegen und vergleicht die einzelnen Char's miteinander,
     * wenn a und b unterschiedliche Längen haben, soll sofort false ausgegeben werden.
     * Die Groß- und Kleinschreibung der Strings soll egal sein
     */
    public static boolean isReverse(String a, String b) {
        if (a.length() == b.length()) {
            a = a.toUpperCase();
            b = b.toUpperCase();
            for (int i = 0; i < a.length(); i++) {
                if (a.charAt(i) != b.charAt(b.length() - i - 1)) { //b.length()-i-1 geht die Chars von hinten ab
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
```

```java
import static org.junit.jupiter.api.Assertions.*;

class ReverseTest {

    @org.junit.jupiter.api.Test
    void isReverse() {
        assertTrue(Reverse.isReverse("Danke Daddy", "yddaD eknaD")); //Damit ist Leann gemeint ;)
        assertTrue(Reverse.isReverse("lagerregal", "LAGERREGAL"));
        assertTrue(Reverse.isReverse("Keine Ahnung", "GnUnHa EnIeK"));
        assertTrue(Reverse.isReverse("Maus", "Suam"));
        assertTrue(Reverse.isReverse("HDGDL", "ldgdh"));
        assertFalse(Reverse.isReverse("Leerzeichen sind Wichtig", "githciWdnisnehciezreeL"));
        assertFalse(Reverse.isReverse("Das geht auch nicht", "lol"));
        assertFalse(Reverse.isReverse("CTRL-C", "CTRL-C"));
        assertFalse(Reverse.isReverse("Testing is", "Important"));
        assertFalse(Reverse.isReverse("nochmal Danke Daddy", "yyddaD eknaD lamhcon")); // damit auch
    }
}
```

```java
public class Replace {
    /**
     * Die Methode nimmt einen String source entgegen, in welchen die char-Sequenz welche in String search
     * eingegeben wird gesucht wird und dann durch die Sequenz in String replace ersetzt wird.
     * Die while Schleife läuft so lange wie die Sequenz search im verbleibenden Wort gefunden wird,
     * wenn dies nicht der fall ist, gibt source.indexOf(search, i) - 1 aus und der Ergebnisstring
     * wird um den Rest des Wortes ergänzt und ausgegeben.
     * @param source gibt den quell-String an der in der Methode verändert werden soll
     * @param search gibt die zu suchende Sequenz an
     * @param replace gibt die Sequenz an die für search eingesetzt werden soll
     * @return gibt den Ergebnisstring aus
     */

    public static String replace(String source, String search, String replace) {
        String resultString = "";
        int i = 0;
        while (source.indexOf(search, i) != -1) { //-1 ist das Ergebnis, wenn search nicht enthalten ist in source
            int j = source.indexOf(search, i);
            resultString += source.substring(i, j) + replace; //Aufbau des Ergebnisstrings mit allem vor der zu ersetzenden Sequenz und der Sequenz
            i += j + search.length(); //neuer Index von i wird die Stelle, an dem die gesuchte Sequenz angefangen hat plus der Länge des eingesetzten Strings
        }
        if (i < source.length()) { //fügt den Rest des Strings an. Wenn search nicht im string enthalten war, wird der ganze String kopiert
            resultString += source.substring(i);
        }
        return resultString;
    }
}
```

```java
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class ReplaceTest {

    @Test
    void replace() {
        assertEquals(Replace.replace("Danke Daddy", "y", "y Danke Daddy"), "Danke Daddy Danke Daddy"); //still not you Mankel :)
        assertEquals(Replace.replace("Lol", "l", "tr"), "Lotr");
        assertEquals(Replace.replace("bAAA", "AA", "a"), "baA");
        assertEquals(Replace.replace("Miau", "Wuff", "Piep"), "Miau");
        assertEquals(Replace.replace("test", "test", "test"), "test");
        assertNotEquals(Replace.replace("Hallo", "h", "h"), "hallo");//sondern Hallo
        assertNotEquals(Replace.replace("Mäus Mäus", "s", "se"), "Mäusemäuse");//Sondern Mause Mause
    }
}
```

```java
public class GoodsCrate {
    public double height;
    public double width;
    public double depth;
    public double weight;

    public GoodsCrate(double height, double width, double depth, double weight) {
        this.height = height;
        this.width = width;
        this.depth = depth;
        this.weight = weight;
    }
}
```

```java
import java.util.Arrays;

public class GoodsSegment {
    public double height;
    public double width;
    public double depth;
    public double maxWeight;
    public GoodsCrate[] subSegments;

    public GoodsSegment(double height, double width, double depth, double maxWeight) {
        this.height = height;
        this.width = width;
        this.depth = depth;
        this.maxWeight = maxWeight;
        subSegments = new GoodsCrate[9];
    }

    /**
     * Die Methode geht alle stellen von segments durch und addiert diese in der Var registeredWeight auf.
     * Am Ende wird überprüft, ob das Einlagern von crate das Maximalgewicht überschreiten würde.
     *
     * @param crate ein Objekt der klasse GoodsCrate
     * @return gint an ob das maxWeight überschritten werden würde(false) beim Einlagern von crate oder nicht(true)
     */
    public boolean checkWeight(GoodsCrate crate) {
        double registeredWeight = 0;
        for (int i = 0; i < subSegments.length; i++) {
            if (subSegments[i] != null) {
                registeredWeight += subSegments[i].weight;
            }
        }
        if (registeredWeight + crate.weight > maxWeight) {
            return false;
        }
        return true;
    }

    /**
     * Die Methode checkSpace überprüft, ob sich noch ein freier Platz in segments befindet.
     *
     * @return gibt true zurück, wenn mindestens eine Stelle in segments mit null(dem Standardwert) befüllt ist.
     */

    public boolean checkSpace() {
        for (int i = 0; i < subSegments.length; i++) {
            if (subSegments[i] == null) {
                return true;
            }
        }
        return false;
    }

    /**
     * Die Methode getSortedDimensions erstellt einen double Array mit den Dimensionen von einer Box in segments.
     *
     * @return gibt den erstellten Array aus.
     */

    public double[] getSortedDimensions() {
        double[] dimensions = new double[]{height / 3, width / 3, depth / 3};
        Arrays.sort(dimensions);
        return dimensions;
    }

    /**
     * Die Methode checkDimensions überprüft, ob die sortierten Dimensionen der segment Box jeweils kleiner sind als die sortierten Dimensionen der crate.
     *
     * @param crate ein Objekt der klasse GoodsCrate.
     * @return gibt true aus wenn crate in das segment passt, false wenn nicht
     */

    public boolean checkDimensions(GoodsCrate crate) {
        double[] dimensions = new double[]{height / 3, width / 3, depth / 3};
        double[] crateDimensions = new double[]{crate.height, crate.width, crate.depth};
        Arrays.sort(dimensions);
        Arrays.sort(crateDimensions);
        if (dimensions[0] < crateDimensions[0] || dimensions[1] < crateDimensions[1] || dimensions[2] < crateDimensions[2]) {
            return false;
        }
        return true;
    }

    /**
     * Die Methode addCrate fügt crate dem segment zu, falls alle Bedingungen erfüllt sind
     *
     * @param crate ein Objekt der klasse GoodsCrate.
     */

    void addCrate(GoodsCrate crate) {
        if (!checkSpace()) {
            System.out.println("No free Subsegments found");
            return;
        }
        if (!checkWeight(crate)) {
            System.out.println("Crate cannot be stored, max weight limit would be exceeded");
            return;
        }
        if (!checkDimensions(crate)) {
            System.out.println("Crate will not fit in subsegment");
            return;
        }
        int freeSubSegment = -1;
        for (int i = 0; i < subSegments.length; i++) {
            if (subSegments[i] == null) {
                freeSubSegment = i;
                break;
            }
        }
        subSegments[freeSubSegment] = crate;
    }
}
```

```java
public class GoodsShelfSystem {
    public GoodsSegment[] segments;

    /**
     * Dieser Konstruktor ist aus mir unerklärlichen gründen in der Aufgabe gefordert. See below für einen sinnvolleren Konstruktor
     */
    public GoodsShelfSystem() {
        this.segments = new GoodsSegment[]{new GoodsSegment(20, 42, 11, 100)
                , new GoodsSegment(99, 42, 45, 100)
                , new GoodsSegment(9, 9, 9, 25)
                , new GoodsSegment(24, 42, 44, 150)
                , new GoodsSegment(24, 42, 11, 100)};
    }

    /**
     * Woooow wie schön das man ein beliebig großes Array an segments eingeben kann und nicht auf die 5 beschränkt ist von
     * vornherein
     *
     * @param segments ein viel cooleres Array als hier drüber
     */
    public GoodsShelfSystem(GoodsSegment[] segments) {
        this.segments = segments;
    }

    /**
     * Die Methode beginnt damit einen 2Dimensionalen Array aus den Sortierten segments zu erstellen. Dann wird das erste passende segment gesucht und
     * als fittingSegment gespeichert. Falls ein passendes Segment gefunden wurde, wird in einer weiteren Schleife untersucht ob
     * ein anderes passendes segment kleiner ist.
     *
     * @param crate ein Objekt der Klasse GoodsCrate.
     * @return gibt false zurück, falls die crate nicht einsortiert werden konnte, und true falls ja.
     */
    public boolean findSegmentForCrate(GoodsCrate crate) {
        double[][] segmentsDimension = new double[segments.length][];
        for (int i = 0; i < segments.length; i++) {
            segmentsDimension[i] = segments[i].getSortedDimensions();
        }
        int fittingSegment = -1;
        for (int i = 0; i < segments.length; i++) {
            if (segments[i].checkWeight(crate) && segments[i].checkSpace() && segments[i].checkDimensions(crate)) {
                fittingSegment = i;
                break;
            }
        }
        if (fittingSegment != -1) {
            for (int newSegment = fittingSegment; newSegment < segments.length; newSegment++) {
                if (segments[newSegment].checkWeight(crate) && segments[newSegment].checkSpace() && segments[newSegment].checkDimensions(crate)) {
                    if (segmentsDimension[newSegment][0] <= segmentsDimension[fittingSegment][0] &&
                            segmentsDimension[newSegment][1] <= segmentsDimension[fittingSegment][1] &&
                            segmentsDimension[newSegment][2] <= segmentsDimension[fittingSegment][2]) {
                        fittingSegment = newSegment;
                    }
                }
            }
            segments[fittingSegment].addCrate(crate);
            System.out.println("Segment dimensions:" + "\n" + "height: " + segments[fittingSegment].height + "\n" + "width: "
                    + segments[fittingSegment].width + "\n" + "depth: " + segments[fittingSegment].depth);
            System.out.println("Crate added to Segment " + (fittingSegment + 1));
            return true;
        }
        System.out.println("No fitting segment found");
        return false;
    }

    //for your testing my love
    public static void main(String[] args) {
        GoodsCrate testCrate = new GoodsCrate(14, 14, 9, 5);
        GoodsShelfSystem testShelf = new GoodsShelfSystem(new GoodsSegment[]{new GoodsSegment(20, 42, 11, 100)
                , new GoodsSegment(99, 42, 45, 100)
                , new GoodsSegment(9, 9, 9, 25)
                , new GoodsSegment(24, 42, 44, 150)
                , new GoodsSegment(24, 42, 11, 100)});
        testShelf.findSegmentForCrate(testCrate);
    }
}
```



