```java
    static void showBillboard(String message) { //Wir führen Strings die irgendwann die einzelnen Reihen werden sollen
        String upper_border = "";
        String hair = "";
        String eyes = "";
        String empty = "";
        String lower_border = "";
        String legs = "";
        String ankles = "";
        String feet = "";
        int length = message.length(); //durch die Mehtode .length() können wir den String message in einen Integer umwandeln welcher die Länge misst
        if (length > 84) {
            System.out.println("ERROR! Illegal String length");
            return;
        }
        int length_counter = 0; // Zähler für die while-Schleife damit length nicht verändert wird über die verschiedenen Operationen hin
        while (length_counter < length) { //Die Schleife verkettet jetzt die einzelnen Strings in Relation zu der Variable length
            hair += " ";
            eyes += " ";
            upper_border += "-";
            empty += " ";
            lower_border += "-";
            legs += " ";
            ankles += " ";
            feet += " ";
            length_counter++;
            if (length_counter == (length / 2)) { //Auf der Hälfte des Schildes soll Klaus Gesicht zu sehen sein
                hair += "\\|||||/";
                eyes += "( O O )";
                upper_border += "--(_)--";
                empty += "       ";
                lower_border += "-------";
                legs += "|_| |_|";
                ankles += " || || ";
                feet += "ooO Ooo";
            }
            if (length_counter == length / 2 - 6) { //hier minus 6, weil zwischen Nase und Händen 5 dashes sein sollen, wir fangen also beim 6ten an
                upper_border += "oo0";
                empty += "   ";
                length_counter += 3;//wir fügen 3 Zeichen ein also haben wir auch 3 Zeichen des Strings beschrieben
            }
            if (length_counter == length / 2 + 6) { //hier plus 10 wegen der 6 von oben und den 4 von jetzt
                lower_border += "0oo";
                length_counter += 3;// same as above :)
            }
        }
        //jede Zeile wird jetzt einzeln auf die Methode ge-casted
        System.out.println("    " + hair); //keine Ahnung warum die Leerzeichen existieren aber es klappt
        System.out.println("    " + eyes);//same as above
        System.out.println("|" + upper_border + "|");
        System.out.println("|" + empty + "|"); //empty braucht 10 zusätzliche Leerzeilen wegen den in Zeile 16-28 eingefügten Zeichen
        System.out.println("|  " + message + "  |"); //Hier wurden manuell die jeweils 2 Leerzeilen wegen den dashes in Zeile 19 eingefügt
        System.out.println("|" + empty + "|");//empty braucht 10 zusätzliche Leerzeilen wegen den in Zeile 16-28 eingefügten Zeichen
        System.out.println("|" + lower_border + "|");
        System.out.println("    " + legs);
        System.out.println("    " + ankles);
        System.out.println("    " + feet);
    }

		//Momentan hält Klaus das Schild bissi schief aber zumindest ist der nicht Mr. Fantastic ;)
        showBillboard("Testing your own code is important!");
        showBillboard("Testing your program with all kinds of different input values is important!");
        showBillboard("");
        showBillboard("Lieber Mankel, wir hoffen du erholst dich gut, sodass wir uns naechste Woche im Tut wieder sehen können.")
```



```java
String toBinary(int n) {
    if (n == 0) {
        return "";
    }
   return (toBinary(n / 2) + n % 2);
}

String toOctal(int n) {
	if (n == 0) {
		return "";
	}
    return (toOctal(n / 8) + n % 8);
}
```
```java
static String toTwosComplement(int n) { //Weil nur 8 bit dargestellt werden können hier die Fehlermeldung
        if (n > 127 || n < -128) {
            return "ERROR! Not convertible in 8-Bit.";
        }
        n += 1;    //Hier das +1 für das Zweierkomplement

        if (n < 0) { //invertieren wenn n negativ ist
            n = -n;
        }
        String[] arr = new String[8]; //Definition des Arrays mit 8 Speicherplätzen
        int array_count = 7; //Array counter für die While Schleife. Da 0 auch ein array ist hier nur bis 7 und nicht bis 8 (ich fang lieber bei 7 an weil dann 0 auch der linkeste Bit ist)
        while (array_count >= 0) {
            if (n % 2 == 1) {
                arr[array_count] = "0"; //Arrays werden durch die Schleife numeriert und dann durch if/else Bedingungen beschrieben
            } else {
                arr[array_count] = "1";
            }
            array_count--; //Runterzählen weil wir ja bei 7 anfangen
            n /= 2; //n halbieren weil Binärdarstellung und so
        }
        return (arr[0] + arr[1] + arr[2] + arr[3] + arr[4] + arr[5] + arr[6] + arr[7]); //Arrays sind schon mit Sring Werten beschrieben also verketten wir hier einfach nur noch
    }


        toTwosComplement(-5);
        toTwosComplement(-127);
        toTwosComplement(-55);
```

```java
static String toTwosComplement(int n) {
        if (n > 127 || n < -128) {
            return "ERROR! Not convertible in 8-Bit.";
        }
        n = n + 1;
        if (n < 0) {
            n = -n;
        }
        int counter = 0;
        String complement = "";
        while (counter < 8) {
            if (n % 2 == 1) {
                complement = "0" + complement;
            } else {
                complement = "1" + complement;
            }
            n = n / 2;
            counter++;
        }
        return complement;
    }
    
        toTwosComplement(-5);
        toTwosComplement(-127);
        toTwosComplement(-55);
```

```java
    static boolean canIWin(int pileA, int pileB) {
        if ((pileA < 2 && pileB == 2) || (pileA < 2 && pileB == 3) || (pileA < 2 && pileB == 4) || (pileB < 2 && pileA == 2) || (pileB < 2 && pileA == 3) || (pileB < 2 && pileA == 4)) {
            return true;
        }
        if (pileA < 2 && pileB < 2) {
            return false;
        }
        if (pileA == pileB) {
            return false;
        }
        if (pileA + pileB > 0) {
            return (canIWin(pileA, pileB - 4) | canIWin(pileA, pileB - 5) |
                    canIWin(pileA, pileB - 6) | canIWin(pileA - 2, pileB - 2) |
                    canIWin(pileA - 3, pileB - 2) | canIWin(pileA - 3, pileB - 3) |
                    canIWin(pileA - 2, pileB - 3) | canIWin(pileA - 6, pileB) |
                    canIWin(pileA - 5, pileB) | canIWin(pileA - 4, pileB));
        }
        return false;
    }

        static void whatShouldIDo(int pileA, int pileB) {
            if ((pileA < 2 && pileB == 2) || (pileA < 2 && pileB == 3) || (pileA < 2 && pileB == 4)) {
                System.out.println("Nimm so viele Steine wie möglich aus Pile B");
                return;
            }
            if ((pileB < 2 && pileA == 2) || (pileB < 2 && pileA == 3) || (pileB < 2 && pileA == 4)) {
                System.out.println("Nimm so viele Steine wie möglich aus Pile A");
                return;
            }
            if (canIWin(pileA, pileB) == false) {
                System.out.println("Aufgeben?");
                return;
            }
            if ((pileA + 2 == pileB) || (pileA + 3 == pileB) || (pileA - 2 == pileB) || (pileA - 3 == pileB)) {
                System.out.println("Nimm genau so viele Steine aus einem Pile, sodass beide Piles gleich viele Steine haben");
                return;
            }
            if (pileA > pileB) {
                System.out.println("Nimm zwei Steine aus Pile A");
                return;
            }
            if (pileA < pileB) {
                System.out.println("Nimm zwei Steine aus Pile B");
                return;
            }
        }
```



