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



