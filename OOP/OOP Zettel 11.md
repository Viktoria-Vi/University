```java
public class CreatureNotCompatibleException extends Exception {

    public CreatureNotCompatibleException(SeaCreature creature) {
        super(creature + "not compatible");
    }
}
```

```java
public class WrongSizeException extends Exception {

    public WrongSizeException(int size) {
        super(size + " centimeters is not an allowed size for this creature");
    }
}
```

```java
abstract class SeaCreature {
    protected int sizeCm;

    abstract static class Herbivore extends SeaCreature {
    }

    abstract static class Carnivore extends SeaCreature {
    }

    abstract static class Leviathan extends SeaCreature {
    }

}
```

```java
public class Huddlefish extends SeaCreature.Herbivore {

    public Huddlefish(int size) throws WrongSizeException {
        if (size >= 0.8 * 100 && size <= 0.9 * 100) {
            this.sizeCm = size;
        } else {
            throw new WrongSizeException(size);
        }
    }
}
```

```java
public class Bellyray extends SeaCreature.Herbivore {

    public Bellyray(int size) throws WrongSizeException {
        if (size >= 7 * 100 && size <= 9 * 100) {
            this.sizeCm = size;
        } else {
            throw new WrongSizeException(size);
        }
    }
}
```

```java
public class Quidshark extends SeaCreature.Carnivore {

    public Quidshark(int size) throws WrongSizeException {
        if (size >= 11 * 100 && size <= 12 * 100) {
            this.sizeCm = size;
        } else {
            throw new WrongSizeException(size);
        }
    }
}
```

```java
public class Pampeel extends SeaCreature.Carnivore {

    public Pampeel(int size) throws WrongSizeException {
        if (size >= 20 * 100 && size <= 22 * 100) {
            this.sizeCm = size;
        } else {
            throw new WrongSizeException(size);
        }
    }
}
```

```java
public class PeaDragonLeviathan extends SeaCreature.Leviathan {

    public PeaDragonLeviathan(int size) throws WrongSizeException {
        if (size >= 110 * 100 && size <= 116 * 100) {
            this.sizeCm = size;
        } else {
            throw new WrongSizeException(size);
        }
    }
}
```

```java
public class KeeperLeviathan extends SeaCreature.Leviathan {

    public KeeperLeviathan(int size) throws WrongSizeException {
        if (size >= 54 * 100 && size <= 56 * 100) {
            this.sizeCm = size;
        } else {
            throw new WrongSizeException(size);
        }
    }
}
```

```java
import java.util.ArrayList;
import java.util.List;

public class FishTank {
    public ArrayList<SeaCreature> creatures;

    public FishTank() {
        this.creatures = new ArrayList<>();
    }

    void addCreature(SeaCreature creature) throws CreatureNotCompatibleException {
        if (creature instanceof SeaCreature.Leviathan) {
            throw new CreatureNotCompatibleException(creature);
        }
        creatures.add(creature);
    }

    public <T extends SeaCreature> List<T> filter(T creature) {
        List<T> filteredTank = new ArrayList<>();
        for (SeaCreature seaCreature : creatures) {
            if (creature.getClass().getSuperclass().isInstance(seaCreature)) {//je nach den was gefordert ist mit/ohne getSuperclass
                filteredTank.add((T) seaCreature);
            }
        }
        return filteredTank;
    }
    
}
```

```java
import java.util.ArrayList;
import java.util.Arrays;

import static org.junit.jupiter.api.Assertions.*;

class FishTankTest {

    @org.junit.jupiter.api.Test
    void FishTankTestCase() throws Exception {
        FishTank test = new FishTank();
        Huddlefish Akito = new Huddlefish(80);
        Huddlefish Anna = new Huddlefish(90);
        Bellyray Mimi = new Bellyray(700);
        Bellyray Felix = new Bellyray(900);
        Quidshark Mankel = new Quidshark(1100);
        Quidshark Adi = new Quidshark(1200);
        Huddlefish Leann = new Huddlefish(81);
        Huddlefish Viktoria = new Huddlefish(82);
        Pampeel Daddy = new Pampeel(2069);
        Pampeel Mommy = new Pampeel(2169);
        KeeperLeviathan angryViktoria = new KeeperLeviathan(5400);
        PeaDragonLeviathan angryLeann = new PeaDragonLeviathan(11600);
        assertThrows(WrongSizeException.class, () -> new Huddlefish(69696969));
        assertThrows(WrongSizeException.class, () -> new PeaDragonLeviathan(1));
        SeaCreature[] testList = new SeaCreature[]{Akito, Anna, Mimi, Felix, Mankel, Adi, Leann, Viktoria, Daddy, Mommy};
        test.addCreature(Akito);
        test.addCreature(Anna);
        test.addCreature(Mimi);
        test.addCreature(Felix);
        test.addCreature(Mankel);
        test.addCreature(Adi);
        test.addCreature(Leann);
        test.addCreature(Viktoria);
        test.addCreature(Daddy);
        test.addCreature(Mommy);
        assertThrows(CreatureNotCompatibleException.class, () -> test.addCreature(angryViktoria));
        assertThrows(CreatureNotCompatibleException.class, () -> test.addCreature(angryLeann));
        assertEquals(test.creatures, Arrays.asList(testList));
        SeaCreature[] filterTest1 = new SeaCreature[]{Akito, Anna, Mimi, Felix, Leann, Viktoria};
        assertEquals(test.filter(Leann), Arrays.asList(filterTest1));
        SeaCreature[] filterTest2 = new SeaCreature[]{Mankel, Adi, Daddy, Mommy};
        assertEquals(test.filter(Mankel), Arrays.asList(filterTest2));
        assertEquals(test.filter(angryLeann), new ArrayList<>());
    }
}
```

```java
a)
    void listOperationsA(List<? super Number> l) {
        l.add(new Double(3.14));
        l.add(new Integer(42));
    }
b)
    void listOperationsB(List<? extends Object> l) {
        for (int i = 0; i < l.size(); i++) {
            System.out.println(l.get(i));
        }
    }
c)
    int listOperationsC(List<? extends Comparable> l) {
        return l.get(0).compareTo(l.get(1));
    }
d)
    void listOperationsD(List<Integer> l) { //hier gibt es keine passende Wildcard, da l.get(0) immer einen Integer will
        Integer i =  l.get(0); //die verwendung einer Wildcard wie <? extends Object> geht wenn zu Integer gecastet wird
        l.remove(i);
        l.add(i);
    }
```