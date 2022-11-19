class Main {

    //int to binary
    public static String toBinary(int n) {
        String binary = "";
        while (n > 0) {
            binary = (n % 2) + binary;
            n = n / 2;
        }
        return binary;
    }

    //int to octal
    public static String toOctal(int n) {
        String octal = "";
        while (n > 0) {
            octal = (n % 8) + octal;
            n = n / 8;
        }
        return octal;
    }

    //int to hexadecimal
    public static String toHexadecimal(int n) {
        String hexadecimal = "";
        while (n > 0) {
            hexadecimal = (n % 16) + hexadecimal;
            n = n / 16;
        }
        return hexadecimal;
    }

    public static void main(String[] args) {
        int n = 10;
        System.out.println(toBinary(n));
        System.out.println(toOctal(n));
        System.out.println(toHexadecimal(n));
    }
}
