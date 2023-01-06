public class Playfair {
    private final Character[][] playfairSquare;
    private static final String alphabet = "ABCDEFGHIKLMNOPQRSTUVWXYZ";

    public Playfair(String codeword) {
        codeword = codeword.toUpperCase();
        codeword = codeword.replaceAll("J", "");
        for (int i = 0; i < codeword.length(); i++) {
            Character current = codeword.charAt(i);
            codeword = codeword.replaceFirst(current + "", "#"); // temporarily change the char to not replace it next
            codeword = codeword.replaceAll(current + "", " ");
            codeword = codeword.replaceFirst("#", current + "");
        }
        playfairSquare = new Character[5][5];
        int codeIndex = 0;
        int alphabetIndex = 0;
        for (int i = 0; i < playfairSquare.length; i++) {
            for (int j = 0; j < playfairSquare[0].length; j++) {
                if (codeIndex < codeword.length()) {
                    // fill Matrix with codeword
                    playfairSquare[i][j] = codeword.charAt(codeIndex);
                    codeIndex++;
                } else {
                    // fill Matrix with alphabet
                    while (codeword.contains("" + alphabet.charAt(alphabetIndex))) {
                        // skip letters that are contained in codeword
                        alphabetIndex++;
                    }
                    playfairSquare[i][j] = alphabet.charAt(alphabetIndex);
                    alphabetIndex++; // a little redundant, but faster
                }
            }
        }
    }

    private boolean characterInString(String s, Character character) {
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == character) {
                return true;
            }
        }
        return false;
    }

    public String printSquare() {
        StringBuilder sb = new StringBuilder();
        for (Character[] row : playfairSquare) {
            for (Character c : row) {
                sb.append(c).append(" ");
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    private Position findInSquare(Character c) {
        for (int i = 0; i < playfairSquare.length; i++) {
            for (int j = 0; j < playfairSquare[0].length; j++) {
                if (playfairSquare[i][j] == c) {
                    return new Position(i,j);
                }
            }
        }
        System.out.println(c + " ist nicht auf dem Playsquare enthalten.");
        return null;
    }

    private String cleanWord(String word) {
        String out = word.replaceAll("[-+.^:,?#'!\"§$%&/{}]","");
        // TODO: Pairing
        out.toUpperCase();
        return out;
    }

    public String encode(String word) {
        word = cleanWord(word);
        // TODO: Encode
        return "Noch nicht fertig";
    }
}
