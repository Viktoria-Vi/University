```java
    static void testAll() {
        float minimumTest = -0.5f;
        float minimumTestResult = getMinimum(new float[]{-0.5f, 0.f, 0.37f, 0.5f});
        if (minimumTest == (minimumTestResult)) {
            System.out.println("Minimum Test passed");
        } else {
            System.out.println("Minimum Test failed");
            System.out.println("Expected:" + minimumTest);
            System.out.println("Actual:" + minimumTestResult);
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
            float lowestValue = Float.MAX_VALUE;
            for (int counter = 0; counter < numbers.length; counter++) {
                if (numbers[counter] < lowestValue) {
                    lowestValue = numbers[counter];
                }
            }
            return lowestValue;
        }

        static float getMaximum(float[] numbers) {
            float highestValue = Float.MIN_VALUE;
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
            while (counter < numbers.length) {
                sum += numbers[counter];
                counter++;
            }
            return sum / numbers.length;
        }

        static boolean isSorted(float[] numbers, boolean ascending) {
            if (numbers[0] <= numbers[1]) {
                //System.out.println(numbers[0] + " ' " + numbers[1]);
                float[] newNumbers = new float[numbers.length - 1];
                System.arraycopy(numbers, 1, newNumbers, 0, newNumbers.length);
                //System.out.println(newNumbers.length);
                if (newNumbers.length == 1) {
                    //System.out.println(numbers[0]);
                    return ascending; //der skippt das return einfach, frech!
                }
                isSorted(newNumbers, ascending);
            }
            //System.out.println("ping");
            return !ascending;
        }
        testAll();

```

```java
    static double distance(double[] gps) {
        int counter = 0;
        double distance = 0.0;
        while (counter < gps.length - 3) {
            distance += Math.sqrt((Math.pow(gps[counter + 3] - gps[counter], 2)) +
                    (Math.pow(gps[counter + 4] - gps[counter + 1], 2)) +
                    (Math.pow(gps[counter + 5] - gps[counter + 2], 2)));
            counter += 3;

        }
        return distance;
    }


        static double velocity(double[] gps) {
            return distance(gps) / (gps.length / 3);
        }

        static double maxVelocity(double gps[]) {
            int counter = 0;
            double velocityPerSec = 0.0;
            double maxVelocity = 0.0;
            while (counter < gps.length - 3) {
                velocityPerSec = Math.sqrt((Math.pow(gps[counter + 3] - gps[counter], 2)) +
                        (Math.pow(gps[counter + 4] - gps[counter + 1], 2)) +
                        (Math.pow(gps[counter + 5] - gps[counter + 2], 2)));
                if (velocityPerSec > maxVelocity) {
                    maxVelocity = velocityPerSec;
                }
                counter += 3;
            }
            return maxVelocity;
        }

```

