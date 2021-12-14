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

    public static void main(String[] args) {
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













