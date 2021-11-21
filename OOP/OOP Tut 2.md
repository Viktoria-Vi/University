```java
String toBinary(int n) {
if (n == 0) {
    return ""
}
return toBinary(n / 2) + (n % 2)
}

```

