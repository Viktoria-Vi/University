```java
static double seriesCircuit(double rOne, double rTwo) {
    return rOne + rTwo;
}
static double parallelCircuit(double rOne, double rTwo) {
    return (rOne * rTwo) / (rOne + rTwo);
}

static double testCircuit() {
    return parallelCircuit(seriesCircuit(parallelCircuit(60, 40),50),
            parallelCircuit(seriesCircuit(50,70), 80));
}

```

```java
import java.util.Arrays;
static int[] primesUpTo(int n) {
    if (n < 0) { //primesUpTo nimmt keine negativen Werte an
        return null;
    }
    int[] numbers = new int[n + 1]; //n+1 Länge, weil 0 auch ein Element im Array ist ist
    for (int counter = 0; counter < n + 1; counter++) {
        numbers[counter] = counter; //befüllt Index 0 mit 0; Index 1 mit 1;Index 2 mit 2...
        numbers[1] = 0; //eins ist aber keine Primzahl, muss also 0 gesetzt werden
    }
    for (int prime = 2; prime <= Math.sqrt(n) + 2; prime++) { //schaut sich alle Werte im Array bis Wurzel(n) + 2 an
        if (numbers[prime] != 0) { //Wir setzen gleich nicht Primzahlen 0, also wenn ein Wert 0 ist müssen wir nix mehr tun (!= ist die Negation)
            for (int counter = 2; counter * prime <= n; counter++) { //wir gehen jetzt alle multiplen von prime(einer Primzahl) durch und streichen diese(setzen sie 0)
                numbers[counter * prime] = 0;
            }
        }
    }
    int primesCount = 0; //Wir schauen wie viele Primzahlen wir am Ende haben
    for (int number : numbers) {
        if (number != 0) { //alle Werte die nicht 0 sind, sind eine Primzahl
            primesCount++;
        }
    }
    int[] primes = new int[primesCount]; //Wir machen einen neuen Array mit so vielen Plätzen wie wir Primzahlen haben
    int a = 0; //Zählt für uns den Index im neuen Array
    for (int i = 0; i < n + 1; i++) {
        if (numbers[i] != 0) {
            primes[a] = numbers[i]; //befüllt den neuen Array mit allen Primzahlen die wir haben
            a++;
        }
    }

    return primes;
}

    static void primesTest() {
        int[] primesTest = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};
        int[] primesTestResult = primesUpTo(100);
        if (Arrays.equals(primesTest, primesTestResult)) {
            System.out.println("Primes Test passed");
        } else {
            System.out.println("Primes Test failed");
            System.out.println("Expected:" + primesTest);
            System.out.println("Actual:" + primesTestResult);
        }
    }

```

```java
    static double krt(double a, double k, double d) {
        if (a < 0) {
            return 0;
        }
        return krtH(a, k, d, a); //a für x_n weil, x0 gleich a ist
    }

        static double krtH(double a, double k, double d, double x_n) {
            double x_n_plusOne = (1.0 / k) * ((k - 1.0) * x_n + (a / Math.pow(x_n, k - 1.0))); //die Formel für x_n+1 in eine Variable gefasst
            if ((x_n - x_n_plusOne) < d) {
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

