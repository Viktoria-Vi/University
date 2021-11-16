```java
void showBillboard(String message) {
    //länge String messen?
		System.out.println("                \\|||||/                ");
		System.out.println("                ( O O )                ");
		System.out.println("|---------ooO-----(_)-----------------|");
		System.out.println("|                                     |");
		System.out.print("|");
		System.out.print(message);
		System.out.println("|");
		System.out.println("|                                     |");
		System.out.println("|-------------------------Ooo---------|");
         System.out.println("                |_| |_|                ");
		System.out.println("                 || ||                 ");
		System.out.println("                ooO Ooo                ");
    }
```



```java
String toBinary(int n) {
    if (n == 0) {
        return "";
    }
   return (toBinary(n / 2) + n % 2);
}

String toOctal(int n) {
	if (n == 0) {
		return "";
	}
    return (toOctal(n / 8) + n % 8);
}

```

