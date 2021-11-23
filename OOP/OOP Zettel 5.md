```java
static void testAll() {
        float minimumTest = -0.5f;
        float minimumTestResult = getMinimum();
        if (minimumTest.equals(minimumTestResult)) {
            System.out.println("Minimum Test passed");
        } else {
            System.out.println("Minimum Test failed");
            System.out.println("Expected:" + minimumTest);
            System.out.println("Actual:" + minimumTestResult);
        }
        float maximumTest = 69f;
        float maximumTestResult = getMaximum();
        if (maximumTest.equals(maximumTestResult)) {
            System.out.println("Maximum Test passed");
        } else {
            System.out.println("Maximum Test failed");
            System.out.println("Expected:" + maximumTest);
            System.out.println("Actual:" + maximumTestResult);
        }
        float averageTest = 2.f;
        float averageTestResult = calculateAverage(new float[]{1.f, 2.f, 3.f});
        if (averageTest.equals(averageTestResult)) {
            System.out.println("Average test passed");
        } else {
            System.out.println("Average test failed");
            System.out.println("Expected:" + averageTest);
            System.out.println("Actual:" + averageTestResult);
        }
        boolean sortedTest = true;
        boolean sortedTestResult = isSorted();
        if (sortedTest.equals(sortedTestResult)) {
            System.out.println("Sorted test passed");
        } else {
            System.out.println("Sorted test failed");
            System.out.println("Expected:" + sortedTest);
            System.out.println("Actual:" + sortedTestResult);
        }
    }
//Minimum
//Maximum
//Average
 static float calculateAverage(float[] numbers) {
            int counter = 0;
            float sum = 0.f;
            while (counter < numbers.length) {
                sum += numbers[counter];
                counter++;
            }
            return sum / numbers.length;
        }
//Sorted
```

