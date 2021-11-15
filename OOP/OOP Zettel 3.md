```java
double myCalculation(final double base, final int exponent) {
	double result = 1;
	if (exponent < 0) {
		int number = exponent * -1;
		while (number > 0) {
			result = result / base;
			number -= 1;
		}
		return result;
	} else {
		int count = exponent;
		while (count > 0) {
			result = result * base;
			count -= 1;
		}
		return result;
	}
}

void myTest() {
	final boolean b = myCalculation (15, 5) == 759375;
	if (b) {
		System.out.println ("Test passed");
	} else {
		System.out.println ("Test failed");
	}
}
```
---


```java
boolean isBetween(int value, int lower, int upper) {
	return (value >= lower && value <= upper);
}


int postage(int lenght, int width, int height, int weight){
    
	if (isBetween (weight, 0, 15) && isBetween (height, 0, 2) && isBetween (width, 90, 125) && isBetween (lenght, 140, 235)) {
		return 60;
	}
    if (isBetween (weight, 0, 20) && isBetween (height, 0, 5) && isBetween (width, 90, 125) && isBetween (lenght, 140, 235)) {
		return 80;
	}
    if (isBetween (weight, 0, 50) && isBetween (height, 0, 10) && isBetween (width, 70, 125) && isBetween (lenght, 100, 235)) {
		return 95;
	}
    if (isBetween (weight, 0, 500) && isBetween (height, 0, 20) && isBetween (width, 70, 250) && isBetween (lenght, 100, 353)) {
		return 155;
	}
    	if (isBetween (weight, 0, 1000) && isBetween (height, 0, 50) && isBetween (width, 70, 250) && isBetween (lenght, 100, 353)) {
		return 270;
	} else {
		return -1;
	}
}



// Tests
//Zu niedrige Werte 
postage(0, 0, 0, 0); 
postage(0, 90, 2, 15);
//Passende Werte (zeigt auch das immer der niedrigste passende Preis ausgegeben wird)
postage(140, 90, 2, 15); 
postage(140, 90, 5, 20); 
postage(100, 70, 10, 50);
postage(100, 70, 20, 500); 
postage(100, 70, 50, 1000);
//Zu hohe Werte
postage(100, 70, 50, 1001); 
postage(354, 251, 51, 1001); 
```
---

```java

/** Die iterative Berechnung von pi wird durch die Formel (Math.sqrt(12) * Math.pow(- 1.0 / 3.0 , n) * Math.pow(2 * n + 1 , -1)) + pn-1 berechnet.
@param n gibt den Grad der Iteration an und wird in jedem Schritt um eins reduziert
@param pi gibt den Startwert der iteration
@return gibt das Ergebniss der Formel mit Grad n aus 
**/

double piIterative(int n) {
	double pi = 0.0;
	while (n >= 0) {
		pi = pi + ((Math.sqrt(12.0) * (Math.pow( -1.0/3.0,n) / ((2 * n) + 1)));
		 n --;
	}
	return pi;
}

//Tests
piIterative(0);
piIterative(10);
piIterative(20);

/** Die rekursive Berechnung wurd druch die Formel (Math.sqrt(12.0) * (Math.pow( -1.0/3.0,n) / ((2 * n) + 1))) + den direkten Vorgänger von pn gemacht.
@param n gibt den Grad der Rekursion an
@return Berechnet das Ergebniss der Rekursion mit Grad n
**/
double piRecursive(int n) { 
	if (n == 0) {
		return Math.sqrt(12.0);
		} else {
		return (Math.sqrt(12.0) * (Math.pow( -1.0/3.0,n) / ((2 * n) + 1))) + piRecursive(n - 1);
	}
}

//Tests
piRecursive(0);
piRecursive(10);
piRecursive(20);


```



