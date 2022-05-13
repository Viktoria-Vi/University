import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Scanner;

public class main {
    public static void main(String[] args) throws Exception {
        cheatingAttempts(1000);
        cheatingAttempts(10000);
    }

    private static void cheatingAttempts(int m) throws Exception {
        ArrayList<String> scrabbleWordList = txtToString("\\OfficialScrabbleWordListGerman.txt");
        ArrayList<String> cheatingFriends = txtToString("\\AreMyFriendsCheating.txt");


        HashmapForStrings hashmap = new HashmapForStrings(m);
        int amountOfWrongWords = 0;

        long t1start = java.lang.System.nanoTime();
        for (String s : scrabbleWordList) {
            hashmap.insert(s);
        }
        long t1end = java.lang.System.nanoTime();
        System.out.println("Insert-Laufzeit für m = " + m + ": " + (t1end - t1start));

        long t2start = java.lang.System.nanoTime();
        for (String s : cheatingFriends) {
            if (!hashmap.search(s)) {
                amountOfWrongWords++;
            }
        }
        long t2end = java.lang.System.nanoTime();
        System.out.println("Search-Laufzeit für m = " + m + ": " + (t2end - t2start));

        System.out.println(amountOfWrongWords + " von " + cheatingFriends.size() + " versuchten Wörtern sind nicht gestattet.");
    }

    private static ArrayList<String> txtToString(String p) throws Exception {
        ArrayList<String> a = new ArrayList<>();

        Scanner doc = new Scanner (new File(Paths.get(".").toAbsolutePath().normalize() + p));


        while (doc.hasNextLine())
            a.add(doc.nextLine());

        return a;
    }
}
