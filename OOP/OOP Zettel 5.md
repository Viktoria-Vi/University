```java
    static void testAll() {
        float minimumTest = -0.5f; //erwartung
        float minimumTestResult = getMinimum(new float[]{-0.5f, 0.f, 0.37f, 0.5f}); //Ergebnis der Methode
        if (minimumTest == (minimumTestResult)) { //Vergleich
            System.out.println("Minimum Test passed"); // wenn gleich gib aus
        } else {
            System.out.println("Minimum Test failed"); //wenn ungleich gib aus
            System.out.println("Expected:" + minimumTest); //Erwartung
            System.out.println("Actual:" + minimumTestResult); //Ausgabe der Funktion
        }
        float maximumTest = 0.5f;
        float maximumTestResult = getMaximum(new float[]{-0.5f, 0.f, 0.37f, 0.5f});
        if (maximumTest == (maximumTestResult)) {
            System.out.println("Maximum Test passed");
        } else {
            System.out.println("Maximum Test failed");
            System.out.println("Expected:" + maximumTest);
            System.out.println("Actual:" + maximumTestResult);
        }
        float averageTest = 0.0925f;
        float averageTestResult = calculateAverage(new float[]{-0.5f, 0.f, 0.37f, 0.5f});
        if (averageTest == (averageTestResult)) {
            System.out.println("Average test passed");
        } else {
            System.out.println("Average test failed");
            System.out.println("Expected:" + averageTest);
            System.out.println("Actual:" + averageTestResult);
        }
        boolean sortedTest = true;
        boolean sortedTestResult = isSorted(new float[]{-0.5f, 0.f, 0.37f, 0.5f}, true);
        if (sortedTest == (sortedTestResult)) {
            System.out.println("Sorted test passed");
        } else {
            System.out.println("Sorted test failed");
            System.out.println("Expected:" + sortedTest);
            System.out.println("Actual:" + sortedTestResult);
        }
    }

        static float getMinimum(float[] numbers) {
            float lowestValue = Float.MAX_VALUE; //Das gibt und den größten Wert den float ausgeben kann, alles ist demnach kleiner als das; den schritt kann man theoretisch auch skippen, weil wir sowieso nur die Einträge im Array miteinander vergleichen. Wir brauchen aber sowieso so eine "SpeicherVariable" also might as well ;).
            for (int counter = 0; counter < numbers.length; counter++) {
                if (numbers[counter] < lowestValue) {
                    lowestValue = numbers[counter];
                }
            }
            return lowestValue;
        }

        static float getMaximum(float[] numbers) {
            float highestValue = numbers[0]; //So kann man das z.B. ohne Array fremde Werte machen.
            for (float number : numbers) {
                if (number > highestValue) {
                    highestValue = number;
                }
            }
            return highestValue;
        }

        static float calculateAverage(float[] numbers) {
            int counter = 0;
            float sum = 0.f;
            while (counter < numbers.length) { //berechnet einfach ne simple Summe über alle Einträge im Array.
                sum += numbers[counter];
                counter++;
            }
            return sum / numbers.length; //dann durch die Anzahl der Einträge teilen, macht den Durchschritt.
        }

        static boolean isSorted(float[] numbers, boolean ascending) {
            if (ascending == true) { //wenn die Zahlen aufsteigend sind (1,2,3)
                if (numbers[0] <= numbers[1]) { //ist 1 kleiner 2?
                    float[] newNumbers = new float[numbers.length - 1];//neuer Array der von der Länge eins kürzer is als der alte
                    System.arraycopy(numbers, 1, newNumbers, 0, newNumbers.length); //wird hier befüllt
                    if (newNumbers.length == 1) { //wenn der Array nur noch einen Eintrag hat, haben wir alle miteinander verglichen, ohne jemals nen Fehler zu bekommen
                        return true; //also stimmt es
                    }
                    return isSorted(newNumbers, ascending); //Rekursion ruft hier die Methode immer wieder mit dem um eins kürzerem Array auf
                } else {
                    return false; //wenn ein Fehler ist es Falsch
                }
            } else { //(ascending == false) wenn die Zahlen absteigend sind (3,2,1)
                if (numbers[0] >= numbers[1]) { //ist 3 größer 2?
                    float[] newNumbers = new float[numbers.length - 1]; //Hier unterscheidet sich gar nichts von oben
                    System.arraycopy(numbers, 1, newNumbers, 0, newNumbers.length);
                    if (newNumbers.length == 1) {
                        return true;
                    }
                    return isSorted(newNumbers, ascending);
                } else {
                    return false;
                }
            }
        }

```

```java

import java.util.Arrays;static double distance(double[] gps) {
    double distance = 0.0;
    for (int counter = 0; counter < gps.length - 3; counter += 3) { //summiert die Distanz jeweils zwischen 2 Koordinaten(x,y,z);gps.length - 3, weil wir ja bei den letzten 3 Einträgen keine Distanz mehr zum nächsten haben.
        distance += Math.sqrt((Math.pow(gps[counter + 3] - gps[counter], 2)) +
                (Math.pow(gps[counter + 4] - gps[counter + 1], 2)) +
                (Math.pow(gps[counter + 5] - gps[counter + 2], 2)));
    }
    return distance;
}


    static double velocity(double[] gps) { //wir berechnen oben jeweils die (summierte) Distanz in Metern, also können wir das einfach nehmen und durch die Anzahl der triple teilen.
        return distance(gps) / (gps.length / 3 - 1);
    }

    static double maxVelocity(double[] gps) {
        double velocityPerSec;
        double maxVelocity = 0.0; //könnte auch maxVelocityPerSec heißen
        for (int counter = 0; counter < gps.length - 3; counter += 3) { //wir machen sowas ähnliches wie bei der Distanz, nur ohne summe, und wir schauen uns nach jedem Schritt an wie groß die Werte sind und speichern den größten davon.
            velocityPerSec = Math.sqrt((Math.pow(gps[counter + 3] - gps[counter], 2)) +
                    (Math.pow(gps[counter + 4] - gps[counter + 1], 2)) +
                    (Math.pow(gps[counter + 5] - gps[counter + 2], 2)));
            if (velocityPerSec > maxVelocity) {
                maxVelocity = velocityPerSec;
            }
        }
        return maxVelocity;
    }

    static double[] partialGPS(double[] gps, double[] start, double[] end) {
        int startingPoint = -1; //Initialisiere Start und end Index für nachher
        int endingPoint = -1;
        if (start == null || end == null) {
            return gps;
        }
        for (int counter = 0; counter < gps.length; counter += 3) {
            if (gps[counter] == start[0] && gps[counter + 1] == start[1] && gps[counter + 2] == start[2]) { //Vergleiche alle Einträge der eingegebenen Koordinate mit dem Array
                startingPoint = counter;
            }
            if (gps[counter] == end[0] && gps[counter + 1] == end[1] && gps[counter + 2] == end[2]) { //Same as above
                endingPoint = counter + 3; //+3, weil counter ja bei der x-Koordinate anfängt
            }
        }
        if (endingPoint < startingPoint) { //Start darf nicht hinter End liegen!
            return gps;
        }
        return Arrays.copyOfRange(gps, startingPoint, endingPoint); //Kopiert den Array mit den oben definierten Grenzen
    }

    double[] gps = {-20.0, 0.0, 200.0, -18.5, -0.647, 200.577, -16.85, -1.237,
            201.16, -15.035, -1.763, 201.739, -13.038, -2.219,
            202.299, -10.842, -2.599, 202.824, -8.426, -2.894,
            203.289, -5.769, -3.096, 203.667, -2.846, -3.195, 203.918,
            0.369, -3.182, 203.998, 3.861, -3.205, 203.85, 7.284,
            -3.176, 203.469, 10.638, -3.209, 202.868, 13.926, -3.175,
            202.06, 17.147, -3.209, 201.059, 20, -3.174, 199.877};

    static void testGPS() {
        double distanceTest = 41.484140196764784;
        double distanceTestResult = distance(gps);
        if (distanceTest == distanceTestResult) {
            System.out.println("Distance test passed");
        } else {
            System.out.println("Distance test failed");
            System.out.println("Expected:" + distanceTest);
            System.out.println("Actual:" + distanceTestResult);
        }
        double velocityTest = 2.7656093464509857;
        double velocityTestResult = velocity(gps);
        if (velocityTest == velocityTestResult) {
            System.out.println("Velocity test passed");
        } else {
            System.out.println("Velocity test failed");
            System.out.println("Expected:" + velocityTest);
            System.out.println("Actual:" + velocityTestResult);
        }
        double maxVelocityTest = 3.495210580208294;
        double maxVelocityTestResult = maxVelocity(gps);
        if (maxVelocityTest == maxVelocityTestResult) {
            System.out.println("maxVelocity test passed");
        } else {
            System.out.println("maxVelocity test failed");
            System.out.println("Expected:" + maxVelocityTest);
            System.out.println("Actual:" + maxVelocityTestResult);
        }
        double[] partialGPSTest = {-16.85, -1.237,
                201.16, -15.035, -1.763, 201.739, -13.038, -2.219,
                202.299, -10.842, -2.599, 202.824, -8.426, -2.894,
                203.289, -5.769, -3.096, 203.667, -2.846, -3.195, 203.918,
                0.369, -3.182, 203.998, 3.861, -3.205, 203.85, 7.284,
                -3.176, 203.469, 10.638, -3.209, 202.868};
        double[] partialGPSTestResult = partialGPS(gps, new double[]{-16.85, -1.237,
                201.16}, new double[]{10.638, -3.209, 202.868});
        if (Arrays.equals(partialGPSTest, partialGPSTestResult)) {
            System.out.println("partialGPSTest test passed");
        } else {
            System.out.println("partialGPSTest test failed");
            System.out.println("Expected:" + Arrays.toString(partialGPSTest));
            System.out.println("Actual:" + Arrays.toString(partialGPSTestResult));
        }
    }
```

