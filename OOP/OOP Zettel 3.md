double myCalculation(double base, int exponent) {
double result = 1;
if (exponent < 0) {
int number = exponent * -1;
while (number > 0){
result = result / base;
number -= 1;
}
return result;
}
else {
int count = exponent;
while (count > 0) {
result = result * base;
count -= 1;
}
return result;
}
}

void myTest () {
boolean b = myCalculation (15,5) == 759375;
if(b) System.out.println ("Test passed");
else System.out.println ("Test failed");
}

---

boolean isBetween (int value, int lower, int upper) {
return (value >= lower && value <= upper);
}

int postage (int lenght, int width, int height, int weight){

if (isBetween (weight, 501, 1000) && isBetween (height, 21, 50) && isBetween (width, 70, 250) && isBetween (lenght, 100, 353)) {
return 270;
}

if (isBetween (weight, 51, 500) && isBetween (height, 11, 20) && isBetween (width, 70, 250) && isBetween (lenght, 100, 353)) {
return 155;
}

if (isBetween (weight, 21, 50) && isBetween (height, 6, 10) && isBetween (width, 70, 125) && isBetween (lenght, 100, 235)) {
return 95;
}

if (isBetween (weight, 16, 20) && isBetween (height, 3, 5) && isBetween (width, 90, 125) && isBetween (lenght, 140, 235)) {
return 80;
}

if (isBetween (weight, 0, 15) && isBetween (height, 0, 2) && isBetween (width, 90, 125) && isBetween (lenght, 140, 235)) {
return 60;
}

else {
return -1;
}
}

// Tests
postage(1,1,1,1);
postage(120,125,2,15);
postage(100,70,20,500);

---

