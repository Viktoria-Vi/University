**Aufgabe 1**

```java
public static int f1 ( int n) {
 int x = 0;
 for ( int i = 0; i < n ; i ++ )
 	for ( int j = 0; j <= i; j ++ )
 		for ( int k = 0; k < 5; k ++ )
 			x = x + j;
 return x;
}
```

Die Schleife ```for ( int i = 0; i < n ; i ++ )``` läuft n mal durch. 

Die Schleife ```for ( int j = 0; j <= i; j ++ )``` läuft mit der laufvariable i durch. Nach der Anwendung der Gaußschen Summenformel erhalten wir also folgendes:  $1 + 2 + 3 + ... + n = n * (n + 1) / 2$

Die Schleife ``for ( int k = 0; k < 5; k ++ )`` läuft je Iteration immer 5 mal durch. 

Zusammen ergibt sich also die Formel:  $n * (n * (n + 1) / 2) * 5.$

Die Gleichung lässt sich vereinfachen zu: $(5/2) * n^3 + (5/2) * n^2 + (5/2) * n$

Die Laufzeit von f1 ist also : $O(n^3)$



```java
public static int f2 ( int n) {
	if ( n <= 1 )
    	return 2;
	else
		return f2 (n -1) * f2 (n -2) ;
}
```

Um die Laufzeit von f2 zu berechnen müssen wir die Aufrufe von ``return f2 (n -1) * f2 (n -2) ;`` bestimmen. Der Restliche Teil von f1 benötigt für jeden durchlauf O(1). 

Jeder rekursive Aufruf hat wieder zwei weitere untergeordnete Aufrufe. Daher hat die Funktion eine Laufzeit von: $O(2^n)$

**Aufgabe 2**

a) $f(n) = n^3 + n$, zeige: $ f(n) ∈ O(n^3) $

Zeige also $f(n) ≤ c * n^3$ für alle $n ≥ n0.$ 

Wir formulieren f(n) um zu: $f(n) = n^3 + n ≤ n^3 + n^3$ für $n ≥ 1$

Es ist also $f(n) ≤ 2n^3$

Somit haben wir eine Konstante c = 2 gefunden. Für $n0 = 1$ gilt $f(n) ≤ 2n^3$ für alle $n ≥ n0$. Daher können wir sagen, dass $f(n) ∈ O(n^3)$.



b) $f(n) = log(n^2 )$, zeige: $f(n) ∈ O(log(n))$

c) $f(n) = \sqrt n$, zeigen : $f(n) ∈ Ω(log(n))$

d) $f(n) = 4n^4 + n^3 ,$ zeige $f(n) ∈ Θ(2n^4 + 15n^3 )$

