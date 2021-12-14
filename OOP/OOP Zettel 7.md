```java
public class Playfair {
    private final Character[][] playfairSquare;
    private final static String alphabet = "ABCDEFGHIKLMNOPQRSTUVWXYZ";

    boolean characterInString(String s, Character character) {
        s = s.toUpperCase();
        character = Character.toUpperCase(character);
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == character) {
                return true;
            }
        }
        return false;
    }

    public Playfair(String codeword) {
        codeword = codeword.toUpperCase().replaceAll("\\W+", ""); //entfernt Sonderzeichen
        codeword = codeword.replace("J", ""); //entfernt J
        for (int i = 0; i < codeword.length() - 1; i += 2) { //entfernt Dopplungen in Paaren und setzt X ein
            if (codeword.charAt(i) == codeword.charAt(i + 1)) {
                codeword = codeword.substring(0, i + 1) + 'X' + codeword.substring(i + 1);
            }
        }
        if (codeword.length() % 2 == 1) { //fügt A bei nicht gerader Länge an
            codeword = codeword + 'A';
        }
        for (int i = 0; i < alphabet.length(); i++) { //schaut ob Char in String ist
            if (!characterInString(codeword, alphabet.charAt(i))) { //wenn nein füge Char(i) an
                codeword += alphabet.charAt(i);
            } else { //wenn ja, lösche nach dem ersten Encounter, und nur dann!
                int firstEncounter = 0;
                for (int j = 0; j < codeword.length(); j++) {
                    if (codeword.charAt(j) == alphabet.charAt(i)) {
                        if (firstEncounter > 0) {
                            codeword = codeword.substring(0, j) + codeword.substring(j + 1);
                            j--; //wir löschen einen Char, also ist der nächste Char auch an der gleichen stelle wie der eben gelöschte
                        }
                        firstEncounter++;
                    }
                }
            }
        }
        playfairSquare = new Character[5][5];
        for (int i = 0; i < 5; i++) { //Reihenzähler
            for (int j = 0; j < 5; j++) { //Spaltenzähler
                playfairSquare[i][j] = codeword.charAt(j + (5 * i));
            }
        }
    }

    public void printSquare() {
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                System.out.print(playfairSquare[i][j] + " ");
            }
            System.out.println();
        }
    }

    static class Position {
        final public int x; //Reihenindex
        final public int y;//Spaltenindex

        public Position(int x, int y) {
            this.x = x;
            this.y = y;
        }
    }

    private Position findInSquare(Character c) {
        int x = 0;
        int y = 0;
        for (int i = 0; i < 5; i++) {
            for (int j = 0; j < 5; j++) {
                if (Character.toUpperCase(c) == playfairSquare[i][j]) {
                    x = i;
                    y = j;
                }
            }
        }
        return new Position(x, y);
    }

    private String cleanWord(String word) {
        word = word.toUpperCase().replaceAll("\\W+", ""); //entfernt Sonderzeichen
        word = word.replace("J", ""); //entfernt J
        for (int i = 0; i < word.length() - 1; i += 2) { //entfernt Dopplungen in Paaren und setzt X ein
            if (word.charAt(i) == word.charAt(i + 1)) {
                word = word.substring(0, i + 1) + 'X' + word.substring(i + 1);
            }
        }
        if (word.length() % 2 == 1) { //fügt A bei nicht gerader Länge an
            word = word + 'A';
        }
        return word;
    }

    public String encode(String word) {
        word = cleanWord(word);
        String encodedWord = "";
        for (int i = 0; i < word.length(); i += 2) {
            Position firstChar = findInSquare(word.charAt(i));
            Position secondChar = findInSquare(word.charAt(i + 1));
            if (firstChar.x == secondChar.x) { //gleiche Reihe
                if (firstChar.y == 4) {
                    encodedWord += playfairSquare[firstChar.x][firstChar.y - 4];
                } else {
                    encodedWord += playfairSquare[firstChar.x][firstChar.y + 1];
                }
                if (secondChar.y == 4) {
                    encodedWord += playfairSquare[secondChar.x][secondChar.y - 4];
                } else {
                    encodedWord += playfairSquare[secondChar.x][secondChar.y + 1];
                }
            } else if (firstChar.y == secondChar.y) { //gleiche Spalte
                if (firstChar.x == 4) {
                    encodedWord += playfairSquare[firstChar.x - 4][firstChar.y];
                } else {
                    encodedWord += playfairSquare[firstChar.x + 1][firstChar.y];
                }
                if (secondChar.x == 4) {
                    encodedWord += playfairSquare[secondChar.x - 4][secondChar.y];
                } else {
                    encodedWord += playfairSquare[secondChar.x + 1][secondChar.y];
                }
            } else {
                encodedWord += playfairSquare[firstChar.x][secondChar.y];
                encodedWord += playfairSquare[secondChar.x][firstChar.y];
            }
        }
        return encodedWord;
    }

    public static void main(String[] args) { //in der letzten Zeile steht ne super wichtige Nachricht!
        Playfair test = new Playfair("Apfelstrudel)");
        test.printSquare();
        System.out.println(test.cleanWord("Apfelstrudel"));
        System.out.println(test.encode("Apfelstrudel"));
        System.out.println(test.encode("Viktoria isst gerne Erdbeerkuchen"));
        System.out.println(test.encode("Leann isst gerne Quarkkuchen"));
        System.out.println(test.encode("Momo ist sehr süss"));
        System.out.println(test.encode("VSGHFUBERWUPHBGORTNMBGTAVA"));
        System.out.println(test.encode("SLMQLULSUZ"));
        System.out.println(test.encode("OFYAFRNMKFCHYAOHRYTEOFYAFRNMKFEFUWHEUQXM")); 
    }
}
```

```java
import java.util.Calendar;
import java.util.Date;

public class Library {
    public final String name;
    public Date lastEdited; 
    private DVD[] dvd;


    public Library(String name, DVD[] dvd) {
        this.name = name;
        this.lastEdited = new Date(); //gibt immer das aktuelle Datum an(auch bei Erstellung)
        this.dvd = dvd;
    }

    void addDVD(DVD newDVD) {
        DVD[] temp = new DVD[dvd.length + 1]; //temporärer längerer Array
        System.arraycopy(dvd, 0, temp, 0, dvd.length); //kopiert den alten Array
        temp[dvd.length] = newDVD; //setzt neue DVD ans ende
        lastEdited = new Date(); 
        dvd = temp;
    }

    void removeDVD(String title) {
        int hits = 0; //Tähler für die Treffer in der Sammlung
        for (DVD dvd : dvd) {
            if (title.equals(dvd.title)) { 
                dvd.title = "entfernt"; //ersetzt Titel mit Markerwort
                hits++;
            }
        }
        DVD[] temp = new DVD[dvd.length - hits];
        for (int i = 0; i < dvd.length; i++) {
            if (!"entfernt".equals(dvd[i].title)) { //enfernt alle Objekte mit Markerwort im Titel
                temp[i] = dvd[i];
            }
        }
        if (temp.length < dvd.length) { //Nur wenn auch wirklich eine DVD gelöscht wurde
            lastEdited = new Date();
            dvd = temp;
        } else {
            System.out.println("No matching DVD found"); //Wenn kein Match gefunden wird
        }
    }

    boolean doIOwn(DVD thisDVD) {
        for (DVD dvd : dvd) { //schaut ob das Objekt da ist
            if (dvd == thisDVD) {
                return true;
            }
        }
        return false;
    }

    public static void main(String[] args) {
        Library Lieblingsfilme = new Library("Lieblingsfilme", new DVD[0]);
        DVD Buried = new DVD("Buried", "01", new Director("Rodrigo", "Cortes",
                new Date(1973, Calendar.MARCH, 31)),
                new Actor[]{new Actor("Ryan", "Reynolds", new Date(1976, Calendar.OCTOBER, 23))});
        DVD TheTelephone = new DVD("Buried", "01", new Director("Rodrigo", "Cortes",
                new Date(1973, Calendar.MARCH, 31)),
                new Actor[]{new Actor("Ryan", "Reynolds", new Date(1976, Calendar.OCTOBER, 23))});
        DVD Castaway = new DVD("Castaway", "03", new Director("Robert", "Zemeckis",
                new Date(1951, Calendar.MAY, 14)),
                new Actor[]{new Actor("Tom", " Hanks", new Date(1956, Calendar.JULY, 9))});
        DVD SecretHonor = new DVD("Secret Honor", "04", new Director("Robert", " Altman",
                new Date(1925, Calendar.FEBRUARY, 20)),
                new Actor[]{new Actor("Philip", " Baker Hall", new Date(1931, Calendar.SEPTEMBER, 10))});
        DVD SwimmingToCambodia = new DVD("Swimming to Cambodia", "05", new Director("Jonathan", " Demme",
                new Date(1944, Calendar.FEBRUARY, 22)),
                new Actor[]{new Actor("Spalding", " Gray", new Date(1944, Calendar.FEBRUARY, 1944))});
        Lieblingsfilme.addDVD(Buried);
        Lieblingsfilme.addDVD(TheTelephone);
        Lieblingsfilme.addDVD(Castaway);
        Lieblingsfilme.addDVD(SecretHonor);
        Lieblingsfilme.addDVD(SwimmingToCambodia);
        Lieblingsfilme.removeDVD("Swimming to Cambodia");
        Lieblingsfilme.removeDVD("Secret Honor");
        Lieblingsfilme.doIOwn(Buried);
        Lieblingsfilme.doIOwn(SecretHonor);
    }
}

class DVD {
    public String title;
    private final String ISBN;
    private final Director director;
    private final Actor[] headliner;

    public DVD(String title, String ISBN, Director director, Actor[] headliner) {
        this.title = title;
        this.ISBN = ISBN; //Filme haben keine ISBN(Internationale Standard BUCH Nummer) lol
        this.director = director;
        this.headliner = headliner;
    }

    public String getTitle() {
        return title;
    }

    public String getISBN() {
        return ISBN;
    }

    public Director getDirector() {
        return director;
    }

    public Actor[] getHeadliner() {
        return headliner;
    }
}

class Actor {
    private String name;
    private String surname;
    private final Date birthDate;

    public Actor(String name, String surname, Date birthDate) {
        this.name = name;
        this.surname = surname;
        this.birthDate = birthDate;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public Date getBirthDate() {
        return birthDate;
    }
}

class Director {
    private String name;
    private String surname;
    private final Date birthDate;

    public Director(String name, String surname, Date birthDate) {
        this.name = name;
        this.surname = surname;
        this.birthDate = birthDate;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public Date getBirthDate() {
        return birthDate;
    }
}

```

