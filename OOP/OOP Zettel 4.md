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
String toTwosComplement(int n) { //Weil nur 8 bit dargestellt werden können hier die Fehlermeldung
        String result = "";
        if (n > 127 || n < -128) {
            return "ERROR! Not convertible in 8-Bit.";
        }
        if (n >= 0) {
            result += toBinary(n);
            while (result.length() < 8) {
                result = "0" + result;
            }
            return result;
        } else {
            String complement = "";
            n++;
            result += toBinary(-n);
            while (result.length() < 8) {
                result = "0" + result;
            }
            for (int i = 0; i < result.length(); i++) {
                if (result.charAt(i) == '0') {
                    complement += '1';
                } else {
                    complement += '0';
                }
            }
            return complement;
        }
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
    static double krt(double a, double k, double d) {
        if (a < 0 || k < 0 || d < 0) {
            return 0;
        }
        return krtH(a, k, d, a); //a für x_n weil, x0 gleich a ist
    }

        static double krtH(double a, double k, double d, double x_n) {
            double x_n_plusOne = (1.0 / k) * ((k - 1.0) * x_n + (a / Math.pow(x_n, k - 1.0))); //die Formel für x_n+1 in eine Variable gefasst
            if (Math.abs((x_n - x_n_plusOne)) < d) {
                return x_n;
            }
            return krtH(a, k, d, x_n_plusOne);
        }

        static void krtHTest() {
            double k = 1.0; //gibt den Grad der Wurzel an
            double d = 0.00001; //die Toleranz von delta
            for (double a = 2.0; a <= 16.0; a *= 2) {  //rechnet in jedem schritt 2^a+1 ^^ bis 16
                System.out.println(krt(a, k, d));
                k++; //erhöht den Grad um 1
                d *= d;
            }
        }
```



