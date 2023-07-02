import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class SkipList implements RandomSkipList {

    Map<Integer, ArrayList<Comparable>> map = new HashMap<>();

    public SkipList() {
        map.put(0, new ArrayList<>());
    }

    //Die einzelnen skiplisten werden aus der Liste Key = 0 generiert
    public void generateSkipLists() {
        int i = 0;
        while (map.get(i).iterator().hasNext()) {
            map.put(i + 1, new ArrayList<>());
            for (int k = 1; k < map.get(i).size(); k += 2) {
                map.get(i + 1).add(map.get(i).get(k));
            }
            i++;
            //abbruchbedingung für liste mit nur noch einem element
            if (map.get(i).size() == 1) {
                //bei remove bliebe eine leere liste übrig, die gelöscht werden muss
                map.remove(i + 1);
                return;
            }
        }

    }

    @Override
    public boolean add(Comparable element) {
        if (contains(element)) {
            return false;
        }

        map.get(0).add(element);
        map.get(0).sort(Comparable::compareTo);
        generateSkipLists();
        return true;
    }

    @Override
    public boolean remove(Comparable element) {
        if (map.get(0).remove(element)) {
            generateSkipLists();
            return true;
        }
        return false;
    }

    @Override
    public boolean contains(Comparable element) {
        int i = 1;
        int listIndex = map.size() - i;
        //wir starten über der kleinsten List(der mit einem Element)
        for (int k = 0; k < map.get(listIndex).size(); k++) {
            if (map.get(listIndex).get(k).equals(element)) {
                return true;
            }
            //wenn das element kleiner ist als das aktuelle element, springen wir eine liste tiefer
            //die suche beginnt dann jeweils am element vor dem aktuellen
            if (map.get(listIndex).get(k).compareTo(element) > 0) {
                Comparable currentElem = map.get(listIndex).get(k);
                i++;
                listIndex = map.size() - i;
                //mit -2 gehen wir erstens 1 index zurück und gleichen wir das k++ der schleife aus
                k = map.get(listIndex).indexOf(currentElem) - 2;
            }
        }
        return false;
    }

    public static void main(String[] args) {
        //Test for add
        SkipList skipList = new SkipList();
        skipList.add(2);
        skipList.add(3);
        skipList.add(5);
        skipList.add(7);
        skipList.add(11);
        skipList.add(13);
        skipList.add(17);
        skipList.add(19);
        //Test for contains
        System.out.println(skipList.contains(17));
        //test for remove
        skipList.remove(17);
        System.out.println(skipList.contains(17));


    }
}
