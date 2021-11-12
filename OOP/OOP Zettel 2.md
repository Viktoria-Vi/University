Erwartungen: 
1337 --> 1336
0 --> -1
-2147483648 --> -2147483649

jshell> int predecessor (int a) {
   ...>     int b = -1;
   ...>     return a + b;
   ...> }
|  created method predecessor(int)

jshell> int c = predecessor(1337)
c ==> 1336

jshell> int d = predecessor(0)
d ==> -1

jshell> int e = predecessor(-2147483648)
e ==> 2147483647

jshell> /v
|    int c = 1336
|    int d = -1
|    int e = 2147483647

---

Erwartungen: 
"Cthulhu", "Nyarlathotep" --> false
"Lovecraft","Lovecraft" --> true
"Howard", new String("Howard") --> true

jshell> boolean isequal(String a, String b){
   ...>      return (a == b);
   ...> }
|  created method isequal(String,String)

jshell> isequal("Cthulhu", "Nyarlathotep")
$2 ==> false

jshell> isequal("Lovecraft","Lovecraft")
$3 ==> true

jshell> isequal("Howard", new String("Howard"))
$4 ==> false

---

Erwartungen: Die Methoden rufen sich von 1-3 nacheinander auf, und schließen sich in der gleichen Reihenfolge wieder. Der mittlere Block mit 2_1,2_2 verwirrt mich slightly und da passiert bestimmt irgendwas das ich nicht so erkennen kann.

jshell> void method_1(){
   ...>     System.out.println("Enter method_1");
   ...>     method_2_1();
   ...>     method_2_2();
   ...>     System.out.println("Exit method_1");
   ...> }
|  created method method_1(), however, it cannot be invoked until method method_2_1(), and method method_2_2() are declared

jshell> void method_2_1(){
   ...>     System.out.println("Enter method_2_1");
   ...>     method_2_2();
   ...>     System.out.println("Exit method_2_1");
   ...> }
|  created method method_2_1(), however, it cannot be invoked until method method_2_2() is declared

jshell> void method_2_2(){
   ...>     System.out.println("Enter method_2_2");
   ...>     method_3();
   ...>     System.out.println("Exit method_2_2");
   ...> }
|  created method method_2_2(), however, it cannot be invoked until method method_3() is declared

jshell> void method_3(){
   ...>     System.out.println("Enter method_3");
   ...>     System.out.println("Exit method_3");
   ...> }
|  created method method_3()

jshell> method_1()
Enter method_1
Enter method_2_1
Enter method_2_2
Enter method_3
Exit method_3
Exit method_2_2
Exit method_2_1
Enter method_2_2
Enter method_3
Exit method_3
Exit method_2_2
Exit method_1

---

Vorbedingung: Der maximale Eingabewert ist 5€. 

void derGerät(int a){
if (a < 72){
System.out.println("Zu wenig Geld");
}
else{
a = (a - 72);
System.out.println("Snack wird ausgegeben ");
}
while(a >= 200){
a = a - 200;
System.out.print(" 2€ ");
}
while(a >= 100){
a = a - 100;
System.out.print(" 1€ ");
}
while(a >= 50){
a = a - 50;
System.out.print(" 0,50€ ");
}
while(a >= 20){
a = a - 20;
System.out.print(" 0.20€ ");
}
while(a >= 10){
a = a - 10;
System.out.print(" 0,10€ ");
}
while(a >= 5){
a = a - 5;
System.out.print(" 0,05€ ");
}
while(a >= 2){
a = a - 2;
System.out.print(" 0,02€ ");
}
while(a >= 1){
a = a - 1;
System.out.print(" 0,01€ ");
}
}

//Test für keine Eingabe
derGerät(0);
System.out.println();

//Test für unzureichende Eingabe
derGerät(50);
System.out.println();

//Test für genau passende Eingabe(Also ohne Rückgabe von Geld)
derGerät(72);
System.out.println();

//Test für maximale Eingabe
derGerät(500);
System.out.println();

---

a)

testPassed: Zeile 1-9
output: Zeile 2-9

b)

i: Zeile 1-7
output: 2-6

c)

testPassed: 1-9
output: 3-9



