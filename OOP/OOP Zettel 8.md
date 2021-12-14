```java
public class Caesar {
    static String decode(String coded, char a, char b) {
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        int charOne = 0;
        int charTwo = 0;
        for (int i = 0; i < alphabet.length(); i++) {

            if (alphabet.charAt(i) == a || alphabet.toLowerCase().charAt(i) == a) {
                charOne = i;
            }
            if (alphabet.charAt(i) == b || alphabet.toLowerCase().charAt(i) == b) {
                charTwo = i;
            }
        }
        int distance = charTwo - charOne;
        String decoded = "";
        for (int i = 0; i < coded.length(); i++) {
            for (int j = 0; j < alphabet.length(); j++) {
                if (alphabet.charAt(j) == coded.charAt(i)) {
                    if (j + distance > 25) {
                        decoded += alphabet.charAt(j + distance - 25);
                    } else if (j + distance < 0) {
                        decoded += alphabet.charAt(j + distance + 25);
                    } else {
                        decoded += alphabet.charAt(j + distance);
                    }
                }
            }
        }
        return decoded;
    }

    public static void main(String[] args) {
        decode("HGXBO", 'W', 'Z');
        decode("DKKLAJ", 'n', 'R');
        decode("TUFSMJOH", 'A', 'Z');
        decode("VJGFKDDWM", 'E', 'c');
        decode("ZQJCAKJIWOPAN", 'W', 'A');
        decode("XHZRGFLGJSOFRNS", 'G', 'B');
    }
}
```

