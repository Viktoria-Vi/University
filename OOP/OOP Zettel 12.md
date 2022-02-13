```java
import java.util.ArrayList;
import java.util.Comparator;
import java.util.function.Predicate;

public class Lambda {
    /**
     * Die methode entfernt alle Elemente aus List die auf das Prädikat filter zutreffen
     *
     * @param list   generische Liste
     * @param filter generisches Prädikat
     * @param <T>    generics YaY
     */
    public static <T> void removeIf(ArrayList<T> list, Predicate<T> filter) {
        list.removeIf(filter);
    }

    /**
     * Die Methode sortiert list nach dem gegebenen comparator
     *
     * @param list       generische Liste(again)
     * @param comparator generischer comparator
     * @param <T>        generics YAYAYAAYAYAYAYYAAYA
     */
    public static <T> void sortBy(ArrayList<T> list, Comparator<T> comparator) {
        list.sort(comparator);
    }

    /**
     * Die Methode wandelt list in einen String um und schreibt jedes Element in einen neue zeile
     *
     * @param list generische Liste(again again)
     * @param <T>  WTF schon wieder generics??!?!?!??! was da los !111!!11!11
     * @return gibt die Liste als String zurück
     */
    public static <T> String listToString(ArrayList<T> list) {
        StringBuilder out = new StringBuilder();
        list.forEach((x) -> {
            out.append(x).append("\n");
        });
        return out.toString();
    }
}
```

```java
import java.util.ArrayList;
import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

class LambdaTest {

    ArrayList<Integer> testList1 = new ArrayList<>();
    ArrayList<Integer> testList2 = new ArrayList<>();

    /**
     * Erstellt zwei Integer Listen(weil handlich lol)
     */
    @org.junit.jupiter.api.BeforeEach
    void setUp() {
        for (int i = 0; i < 10; i++) {
            testList1.add(i + i);
            testList2.add(i * 5);
        }
    }


    @org.junit.jupiter.api.Test
    void removeIf() {
        Lambda.removeIf(testList1, n -> n % 2 == 0);
        Integer[] testArr1 = new Integer[]{};//es wurden alle Elemente entfernt, da i + i immer %2== 0 erfüllt
        Lambda.removeIf(testList2, n -> n % 2 == 0);
        Integer[] testArr2 = new Integer[]{5, 15, 25, 35, 45};//alle geraden Elemente wurden entfernt(10,20,...
        assertEquals(testList1, Arrays.asList(testArr1));
        assertEquals(testList2, Arrays.asList(testArr2));

    }

    @org.junit.jupiter.api.Test
    void sortBy() {
        testList1.add(-1);//add a little bit of spice
        testList2.add(-1);
        Lambda.sortBy(testList1, (n, f) -> n - f);
        Integer[] testArr1 = new Integer[]{-1, 0, 2, 4, 6, 8, 10, 12, 14, 16, 18};//von kleinsten zum größten sortiert
        Lambda.sortBy(testList2, (n, f) -> f - n);
        Integer[] testArr2 = new Integer[]{45, 40, 35, 30, 25, 20, 15, 10, 5, 0, -1};//^ vice versa
        assertEquals(testList1, Arrays.asList(testArr1));
        assertEquals(testList2, Arrays.asList(testArr2));
    }

    @org.junit.jupiter.api.Test
    void listToString() {
        assertEquals(Lambda.listToString(testList1), "0\n2\n4\n6\n8\n10\n12\n14\n16\n18\n"); //joa is halt nen string ne.
        assertEquals(Lambda.listToString(testList2), "0\n5\n10\n15\n20\n25\n30\n35\n40\n45\n");//da btw auch
    }
}
```

```java
import java.io.*;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class IOStreams {

    public static Stream<String> words(String filePath) throws IOException {
        BufferedReader reader = new BufferedReader(new FileReader(filePath));
        List<String> replaced = new ArrayList<>();
        String line = reader.readLine();//wir gehen hier line by line durch um (bestimmte) Sonderzeichen gleich entfernen zu können.
        while (line != null) {
            replaced.add(line.replaceAll("[',—“;’!?.”‘-]", ""));//Steffens regex
            //replaced.add(line.replaceAll("'", ""));*/ //Mein regex(Die Bessere!), weil es dann alles echte Wörter sind
            line = reader.readLine();
        }
        reader.close();//be a good fellow and close the reader shawty
        return replaced.stream()
                .flatMap(str -> Arrays.stream(str.split("[ \n]")))//Was ist ein Wort? Alles nach einer Leerzeile oder einem Umbruch
                .filter(str -> str.length() > 0);
    }

    /**
     * Die Methode zählt die Worte in einer Map. für den fall das ein noch nicht bearbeiter Stream übergeben wird,
     * wird hier nochmal klargestellt was ein Wort(bzw ein Key ist) ist.
     * @param words der übergebene Stream von Wörtern/Text
     * @return gibt eine Map wieder, Key ist hier jeweils ein Wort und Value dessen vorkommen
     */
    public static Map<String, Integer> countWords(Stream<String> words) {
        return words.flatMap(str -> Arrays.stream(str.split("[ \n]")))
                .filter(str -> str.length() > 0)
                .collect(Collectors.toMap(Function.identity(), e -> 1, Integer::sum));
    }

    public static void writeCountedWords(Map<String, Integer> countedWords, String filepath) {
        try (BufferedWriter bf = new BufferedWriter(new FileWriter(filepath))) {
            for (Map.Entry<String, Integer> entry : countedWords.entrySet()) {
                bf.write(entry.getKey() + " : " + entry.getValue());
                bf.newLine();
            }
            bf.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        String destStr = Paths.get(".").toAbsolutePath().normalize().toString() + "\\a";


    }
}

```

```java
import org.junit.jupiter.api.Test;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class IOStreamsTest {

    @Test
    void writeCountedWords() throws IOException {
        File source = new File(Paths.get(".").toAbsolutePath().normalize() + "\\theRaven.txt");
        File test = new File(Paths.get(".").toAbsolutePath().normalize() + "\\countedWords.txt");
        File dest = new File(Paths.get(".").toAbsolutePath().normalize() + "\\DankeDaddy.txt");
        assertTrue(source.exists());
        assertTrue(test.exists());
        assertTrue(dest.exists());
        IOStreams.writeCountedWords(IOStreams.countWords(IOStreams.words(source.toString())), dest.getPath());
        List<String> file1 = Files.readAllLines(Paths.get(test.getPath()));
        List<String> file2 = Files.readAllLines(Paths.get(dest.getPath()));
        assertEquals(file1.size(), file2.size());
        for (int i = 0; i < file1.size(); i++) { //Zeile für zeile Vergleich
            assertEquals(file1.get(i), file2.get(i));
        }
    }
}
```

