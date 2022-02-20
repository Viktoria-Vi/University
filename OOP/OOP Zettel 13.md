```java
public class State {
    private final String ID;
    private final boolean validState;

    public State(String ID, boolean valid) {
        this.ID = ID;
        validState = valid;
    }


    public String getID() {
        return ID;
    }

    public boolean isValidState() {
        return validState;
    }
}
```

```java
public class Alphabet {
    private final Character[] Symbols;

    public Alphabet(Character[] Symbols) {
        this.Symbols = Symbols;
    }

    public Character[] getSymbols() {
        return Symbols;
    }

    /**
     * Überprüft, ob das übergebene Symbol im Alphabet enthalten ist
     *
     * @return gibt true zurück, wenn das Symbol enthalten ist, false, wenn nicht
     */
    public boolean doesContain(Character Symbol) {
        for (Character item : Symbols) {
            if (item.equals(Symbol)) {
                return true;
            }
        }
        return false;
    }
}
```

```java
public class Transition {
    private final String START, END;
    private final Character Symbol;

    public Transition(String START, String END, Character Symbol) {
        this.START = START;
        this.END = END;
        this.Symbol = Symbol;
    }

    public String getSTART() {
        return START;
    }

    public String getEND() {
        return END;
    }

    public Character getSymbol() {
        return Symbol;
    }
}
```

```java
public class StateAlreadyExistsException extends Exception{

    public StateAlreadyExistsException(String stateID){
        super("State " + stateID + " already exists");
    }

}
```

```java
public class StateDoesNotExistException extends Exception {


    public StateDoesNotExistException(String stateID) {
        super("State " + stateID + " does not exist");
    }
}
```

```java
public class SymbolNotInAlphabetException extends Exception {

    public SymbolNotInAlphabetException(Character symbol) {
        super("Symbol " + symbol + " is not included in alphabet");
    }

}
```

```java
public class TransitionAlreadyExistsException extends Exception{

    public TransitionAlreadyExistsException(Transition transition) {
        super("Transition" + transition + "already exists");
    }

    public TransitionAlreadyExistsException(String Start, Character symbol){
        super("Transition with following Symbol and Start already exists " + symbol + "/" + Start);

    }

}
```

```java
public abstract class GenericAutomaton {
    protected State[] states;
    protected Transition[] transitions;
    protected final Alphabet alphabet;
    protected String start;

    /**
     * Konstruktor, welcher ein Alphabet übergeben bekommt und alle anderen Felder mit Standartwerten initialisiert
     *
     * @param alphabet array an Symbolen
     */
    protected GenericAutomaton(Alphabet alphabet) {
        this.alphabet = alphabet;
        this.states = new State[0];
        this.transitions = new Transition[0];
        this.start = "";
    }

    abstract void reset();

    abstract boolean isAccepting();

    /**
     * Fügt dem states Array einen weiteren Zustand hinzu, sollte dieser noch nicht existieren
     *
     * @param state   übergebender Zustand welcher hinzugefügt werden soll
     * @param isStart falls true soll dies der start Zustand des automaten sein
     * @throws StateAlreadyExistsException wirft, wenn die ID des übergebenen State schon existiert
     */
    public void addState(State state, boolean isStart) throws StateAlreadyExistsException {
        if (findState(state.getID()) == null) {
            State[] addState = new State[states.length + 1];
            System.arraycopy(states, 0, addState, 0, states.length);
            addState[states.length] = state;
            this.states = addState;
            if (isStart) {
                start = state.getID();
            }
            return;
        }
        throw new StateAlreadyExistsException(state.getID());
    }

    /**
     * Gibt an, ob die übergebene ID schon in einem State vergeben ist
     *
     * @param ID zu überprüfende ID
     * @return gibt den State mit der ID zurück, oder null, falls es keinen passenden State gibt
     */
    public State findState(String ID) {
        for (State state : states) {
            if (state.getID().equals(ID)) {
                return state;
            }
        }
        return null;
    }

    /**
     * Fügt den transitions Array die übergebene Transition zu, falls die übergebenen Werte alle existieren
     *
     * @param transition hinzuzufügende Transition
     * @throws StateDoesNotExistException   wirft, wenn entweder der start oder end Zustand nicht existieren
     * @throws SymbolNotInAlphabetException wirft, wenn das übergebene Symbol nicht existiert
     */
    protected void addTransition(Transition transition) throws StateDoesNotExistException, SymbolNotInAlphabetException {
        boolean startStateContained = false;
        boolean endStateContained = false;
        boolean containsSymbol = alphabet.doesContain(transition.getSymbol());
        for (State state : states) {
            if (state.getID().equals(transition.getSTART())) {
                startStateContained = true;
            }
            if (state.getID().equals(transition.getEND())) {
                endStateContained = true;
            }
        }
        if (!startStateContained) {
            throw new StateDoesNotExistException(transition.getSTART());
        }
        if (!endStateContained) {
            throw new StateDoesNotExistException(transition.getEND());
        }
        if (!containsSymbol) {
            throw new SymbolNotInAlphabetException(transition.getSymbol());
        }
        Transition[] addTransition = new Transition[transitions.length + 1];

        System.arraycopy(transitions, 0, addTransition, 0, transitions.length);
        addTransition[transitions.length] = transition;
        transitions = addTransition;
    }
}
```

```java
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.Set;

public class NFA extends GenericAutomaton {
    protected ArrayList<State> currentStates = new ArrayList<>();

    public NFA(Alphabet alphabet) {
        super(alphabet);
        currentStates.add(findState(start));
    }

    @Override
    void reset() {
        currentStates.clear(); //löscht alles, setzt die liste aber auch null
        currentStates = new ArrayList<>(); //deswegen neu initialisieren
        currentStates.add(findState(start));

    }

    @Override
    boolean isAccepting() {
        for (State state : currentStates) {
            for (State inState : states) {
                if (state.equals(inState)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public void addTransition(Transition transition) throws Exception {
        for (Transition transitionTest : transitions) {
            if (transitionTest.getSTART().equals(transition.getSTART()) && transitionTest.getEND().equals(transition.getEND()) && transitionTest.getSymbol().equals(transition.getSymbol())) {
                throw new TransitionAlreadyExistsException(transition); //keine komplett Identischen Transitions möglich
            }
        }
        super.addTransition(transition);
    }

    public ArrayList<State> delta(Character symbol) throws SymbolNotInAlphabetException { //Es wäre hier doch vielleicht schöner mit den einzelnen IDs(weil wir es ja sonst überall machen) zu arbeiten, aber naja Steffen unso
        if (!alphabet.doesContain(symbol)) {
            throw new SymbolNotInAlphabetException(symbol);
        }
        ArrayList<State> out = new ArrayList<>();
        for (State current : currentStates) {
            for (Transition transition : transitions) {
                if (current.getID().equals(transition.getSTART()) && transition.getSymbol().equals(symbol)) {
                    out.add(findState(transition.getEND()));
                }
            }
        }
        Set<State> set = new LinkedHashSet<>(out);//entfernt duplikate
        currentStates = new ArrayList<>(set);
        return out;
    }
}
```

```java
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;

import static org.junit.jupiter.api.Assertions.*;

class NFATest {
    Alphabet alphabet = new Alphabet(new Character[]{'D', 'A', 'N', 'K', 'E', 'Y', 'H', 'U', 'S', 'O', 'C', 'B'});
    NFA test = new NFA(alphabet);
    State A01 = new State("01", false);
    State A02 = new State("02", false);
    State A03 = new State("03", false);
    State A04 = new State("04", false);
    State A05 = new State("05", true);
    State A06 = new State("06", false);
    State A07 = new State("07", false);
    State A08 = new State("08", false);
    State A09 = new State("09", true);

    @BeforeEach
    void setUp() throws Exception {

        test.addState(A01, true);
        test.addState(A02, false);
        test.addState(A03, false);
        test.addState(A04, false);
        test.addState(A05, false);
        test.addState(A06, false);
        test.addState(A07, false);
        test.addState(A08, false);
        test.addState(A09, false);
        test.addTransition(new Transition("01", "02", 'D'));
        test.addTransition(new Transition("02", "03", 'A'));
        test.addTransition(new Transition("03", "03", 'N'));
        test.addTransition(new Transition("03", "04", 'N'));
        test.addTransition(new Transition("03", "03", 'K'));
        test.addTransition(new Transition("04", "04", 'K'));
        test.addTransition(new Transition("03", "04", 'E'));
        test.addTransition(new Transition("04", "04", 'E'));
        test.addTransition(new Transition("04", "06", 'E'));
        test.addTransition(new Transition("04", "05", 'D'));
        test.addTransition(new Transition("05", "05", 'A'));
        test.addTransition(new Transition("05", "05", 'Y'));
        test.addTransition(new Transition("05", "04", 'D'));
        test.addTransition(new Transition("04", "06", 'D'));
        test.addTransition(new Transition("06", "05", 'A'));
        test.addTransition(new Transition("01", "02", 'H'));
        test.addTransition(new Transition("02", "07", 'U'));
        test.addTransition(new Transition("02", "08", 'U'));
        test.addTransition(new Transition("07", "09", 'S'));
        test.addTransition(new Transition("08", "09", 'S'));
        test.addTransition(new Transition("09", "09", 'O'));


    }

    @Test
    void addState() {
        assertThrows(StateAlreadyExistsException.class, () -> {
            test.addState(new State("04", false), false);
        });
    }

    @Test
    void findState() {
        assertEquals(test.findState("01"), A01);
        assertNull(test.findState("10"));
    }

    @Test
    void addTransition() throws Exception {
        assertThrows(TransitionAlreadyExistsException.class, () -> {
            test.addTransition(new Transition("02", "03", 'A'));
        });
        assertThrows(StateDoesNotExistException.class, () -> {
            test.addTransition(new Transition("10", "05", 'E'));
        });
        assertThrows(SymbolNotInAlphabetException.class, () -> {
            test.addTransition(new Transition("01", "04", 'a'));
        });
    }

    @Test
    void delta() throws SymbolNotInAlphabetException {
        ArrayList<State> testList = new ArrayList<>();
        test.reset();
        test.delta('D');
        assertAll(() -> {
            testList.clear();
            testList.add(A02);
            assertEquals(testList, test.currentStates);
        });
        test.delta('A');
        assertAll(() -> {
            testList.clear();
            testList.add(A03);
            assertEquals(testList, test.currentStates);
        });
        test.delta('N');
        assertAll(() -> {
            testList.clear();
            testList.add(A03);
            testList.add(A04);
            assertEquals(testList, test.currentStates);
        });
        test.delta('K');
        assertAll(() -> {
            testList.clear();
            testList.add(A03);
            testList.add(A04);
            assertEquals(testList, test.currentStates);
        });
        test.delta('E');
        assertAll(() -> {
            testList.clear();
            testList.add(A04);
            testList.add(A06);
            assertEquals(testList, test.currentStates);
        });
        test.delta('D');
        assertAll(() -> {
            testList.clear();
            testList.add(A05);
            testList.add(A06);
            assertEquals(testList, test.currentStates);
        });
        test.delta('A');
        assertAll(() -> {
            testList.clear();
            testList.add(A05);
            assertEquals(testList, test.currentStates);
        });
        test.delta('D');
        assertAll(() -> {
            testList.clear();
            testList.add(A04);
            assertEquals(testList, test.currentStates);
        });
        test.delta('D');
        assertAll(() -> {
            testList.clear();
            testList.add(A05);
            testList.add(A06);
            assertEquals(testList, test.currentStates);
        });
        test.delta('Y');
        assertAll(() -> {
            testList.clear();
            testList.add(A05);
            assertEquals(testList, test.currentStates);
        });
        assertTrue(test.isAccepting());
        //ich könnte hier noch den NFA mit dem Wort "HUSO" testen, aber tbh hab ich kein bock mehr.
    }
}
```