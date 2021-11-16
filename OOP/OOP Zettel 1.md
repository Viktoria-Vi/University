java version "1.8.0_271"
Java(TM) SE Runtime Environment (build 1.8.0_271-b09)
Java HotSpot(TM) 64-Bit Server VM (build 25.271-b09, mixed mode)

--------------------

jshell> System.out.println("Hello World");
Hello World

jshell> System.out.println("Squirtle");
Squirtle

jshell> System.out.println(42+23);
65

jshell> System.out.println("42"+"23");
4223

jshell> System.out.println("Hello World"+System.currentTimeMillis());
Hello World1635605520689

jshell>/

------------------------

jshell> int thirtyfive = 35
thirtyfive ==> 35

jshell> char initial = 'E'
initial ==> 'E'

jshell> double pi =3.14
pi ==> 3.14

jshell> int product = (42*23)
product ==> 966

jshell> thirtyfive == 5*7
$5 ==> true

jshell> pi ==3.14
$6 ==> true

jshell> thirtyfive >  34
$7 ==> true

jshell> thirtyfive >=  pi
$8 ==> true

jshell> /v
|    int thirtyfive = 35
|    char initial = 'E'
|    double pi = 3.14
|    int product = 966
|    boolean $5 = true
|    boolean $6 = true
|    boolean $7 = true
|    boolean $8 = true

---

Zirkus der Werte

Vorbedingung: Jemand ist bereit, sich einen Snack zu kaufen und der Automat ist funktionsfähig.
1. Schritt: Geld einwerfen 
Es wird eine Variable für den Geldstand festgelegt (Betrag 0)
Das eingeworfene Geld wird zur Variable addiert, solange Geldstand < 5Euro.
Wenn Geldstand > 5Euro, wird Geldstand auf 5euro gesetzt und überschüssiges Restgeld ausgegeben.
 Wenn Snackknopf betätigt wird, wird geprüft ob Geldstand >= 72Cent ist
(1) Wenn ja, Werden 72Cent vom Geldstand abgezogen und Snack wird ausgegeben und neuer Geldstand wird ausgegeben. (Wechselgeld)
 (2) Wenn nein, wird Geldstand ausgegeben ohne Snackausgabe.

Nach Auftreten des Falles (1) oder (2) wird Geldstand var auf 0 gesetzt.
Nachbedingung: Anfangszustand (Automat nicht bedient, ausgabebereit, Geldstand Null)

Zusatzbedingungen:
Alle Euro/Euro-Cent Münzen werden angenommen + 5Euro Schein wird angenommen.
derGerätJeder Schein größer als 5 Euro, wird nicht angenomnen/direkt wieder ausgeworfen.

Funktion für Wechselgeldausgabe: 

   Aktuelles Geld   X
if (Neuer Geldstand geteilt durch 200)>=1 Dann Ausgabe von X und Aktuelles Geld-X ->Neues Aktuelles Geld = Aktuelles Geld - X
else X=100 und gleicher Prozess nochmal.
Wenn (Neues aktuelles Geld geteilt durch X)<1 Dann Springt man zum nächsten X
Reihenfolge der X-Werte: 200,100,50,20,10,5,2,1
Wenn der Fall eintrifft (Neues Aktuelles Geld geteilt durch x)>=1 Wird der Vorgang neu gestartet mit X=200 und 
Das Ganze wird wiederholt bis Aktuelles Geld=0



