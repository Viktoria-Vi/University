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

testCircuit()
```

```java
import java.util.Arrays;static int[] primesUpTo(int n) {
        if (n < 0) {
            return null;
        }
        int[] numbers = new int[n + 1];
        for (int counter = 0; counter < n + 1; counter++) {
            numbers[counter] = counter;
            numbers[0] = 0;
            numbers[1] = 0;
        }
        int primesCount = 0;
        for (int prime = 2; prime <= n; prime++) {
            if (numbers[prime] != 0) {
                primesCount++;
                int counter = 2;
                while (counter * prime <= n) {
                    numbers[counter * prime] = 0;
                    counter++;
                }
            }
        }
        int[] primes = new int[primesCount];
        int a = 0;
        for (int i = 0; i < n + 1; i++) {
            if (numbers[i] != 0) {
                primes[a] = numbers[i];
                a++;
            }
        }

        return primes;
    }


        static void primesTest() {
            int[] primesTest = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97};
            int[] primesTestResult = primesUpTo(100);
            if (Arrays.equals(primesTest, primesTestResult)) {
                System.out.println("Maximum Test passed");
            } else {
                System.out.println("Maximum Test failed");
                System.out.println("Expected:" + primesTest);
                System.out.println("Actual:" + primesTestResult);
            }
        }


```

