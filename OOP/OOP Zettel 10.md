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
public class DFA extends GenericAutomaton {
    private String current;

    /**
     * Intitalisiert alle Felder der Oberklasse Genericautomaton, man kann hier current nicht Initialisieren, da
     * uns noch kein State vorliegt welcher das sein könnte.
     *
     * @param alphabet ist ein Array an Symbolen
     */
    public DFA(Alphabet alphabet) {
        super(alphabet);
    }

    /**
     * Setzt den aktuellen State auf den start State aus GenericAutomaton
     */
    @Override
    void reset() {
        current = start;
    }

    /**
     * Schaut ob der aktuelle State ein akzeptierter ist
     *
     * @return ruft das Feld Validstate aus State auf
     */
    @Override
    boolean isAccepting() {
        for (State state : states) {
            if (current.equals(state.getID())) {
                return state.isValidState();
            }
        }
        return false;
    }

    /**
     * Die Methode überprüft, ob es schon eine Transition mit derselben start ID(q1) und Symbol gibt, und ruft dann die methode add Transition auf.
     *
     * @param q1     start ID
     * @param q2     ziel ID
     * @param symbol Zeichen der Transition
     * @throws Exception wirft die TransitionAlreadyExistsException falls q1 und symbol schonmal in einer Transition genau so existieren
     */
    public void makeTransition(String q1, String q2, Character symbol) throws Exception {
        for (Transition transition : transitions) {
            if (q1.equals(transition.getSTART()) && symbol.equals(transition.getSymbol())) {
                throw new TransitionAlreadyExistsException(q1, symbol);
            }
        }
        addTransition(new Transition(q1, q2, symbol));
    }

    /**
     * Setzt einen neuen Zustand im Automaten mithilfe des current Zustandes und dem übergebenen Symbol
     *
     * @param symbol Zeichen der auszuführenden Transition
     * @return gibt den aktuellen Zustand zurück(ohne Grund lol)
     * @throws SymbolNotInAlphabetException war nicht direkt gefordert, is aber sehr sinnvoll
     */
    public String delta(Character symbol) throws SymbolNotInAlphabetException {
        if (!alphabet.doesContain(symbol)) {
            throw new SymbolNotInAlphabetException(symbol);
        }
        for (Transition transition : transitions) {
            if (transition.getSTART().equals(current) && transition.getSymbol().equals(symbol)) {
                current = transition.getEND();
            }
        }
        return current;
    }
}
```

```java
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class DFATest {

    @Test
    void DFATestCase() throws Exception {
        //Erstellen von hilfreichen Objekten
        State off = new State("01", true);
        State on = new State("02", true);
        State standBy = new State("03", true);
        State doBeep = new State("04", true);
        Alphabet alphabet = new Alphabet(new Character[]{'a', 'b', 'c', 'd', 'e', 'g', 'h', 'i'});
        DFA test = new DFA(alphabet);
        //Test der Methode addState()
        test.addState(off, true);
        test.addState(on, false);
        test.addState(standBy, false);
        test.addState(doBeep, false);
        assertThrows(StateAlreadyExistsException.class, () -> {
            test.addState(new State("04", false), false);
            ;
        });
        //Test der Methode findState
        assertEquals(test.findState("01"), off);
        assertNull(test.findState("05"));
        //Test der Methode makeTransition
        test.makeTransition("01", "02", alphabet.getSymbols()[0]);
        test.makeTransition("02", "01", 'b');
        test.makeTransition("02", "03", 'c');
        test.makeTransition("03", "01", 'd');
        test.makeTransition("02", "04", 'g');
        test.makeTransition("04", "02", 'h');
        test.makeTransition("03", "02", 'i');
        assertThrows(TransitionAlreadyExistsException.class, () -> {
            test.makeTransition("02", "03", 'c');
        });
        assertThrows(StateDoesNotExistException.class, () -> {
            test.makeTransition("02", "05", 'e');
        });
        assertThrows(SymbolNotInAlphabetException.class, () -> {
            test.makeTransition("01", "04", 'f');
        });
        //Test eines möglichen Durchlaufs von DFA
        test.reset();
        assertEquals(test.delta('a'), "02");//schaltet den DFA an
        assertTrue(test.isAccepting());
        assertEquals(test.delta('c'), "03");//geht in dem Standby
        assertTrue(test.isAccepting());
        assertEquals(test.delta('i'), "02");//geht aus dem StandBy
        assertTrue(test.isAccepting());
        assertEquals(test.delta('g'), "04");//macht Piep an
        assertTrue(test.isAccepting());
        assertEquals(test.delta('h'), "02");//macht Piep aus
        assertTrue(test.isAccepting());
        assertEquals(test.delta('b'), "01");//macht den DFA aus
        assertTrue(test.isAccepting());
        test.reset();
    }
}
```