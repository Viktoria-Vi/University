class Main {

    String toBinary(int n) {
        if (n == 0) {
            return "";
        }
        return (toBinary(n / 2) + n % 2);
    }

    String toTwosComplement(int n) { //Weil nur 8 bit dargestellt werden können hier die Fehlermeldung
        String result = "";
        if (n > 127 || n < -128) {
            return "ERROR! Not convertible in 8-Bit.";
        }
        if (n >= 0) {
            result += toBinary(n);
            while (result.length() < 8) {
                result = "0" + result;
            }
            return result;
        } else {
            String complement = "";
            n++;
            result += toBinary(-n);
            while (result.length() < 8) {
                result = "0" + result;
            }
            for (int i = 0; i < result.length(); i++) {
                if (result.charAt(i) == '0') {
                    complement += '1';
                } else {
                    complement += '0';
                }
            }
            return complement;
        }
    }

    public static void main(String[] args) {
        Main m = new Main();
        System.out.println(m.toTwosComplement(0));
        System.out.println(m.toTwosComplement(1));
        System.out.println(m.toTwosComplement(-1));
        System.out.println(m.toTwosComplement(127));
        System.out.println(m.toTwosComplement(-128));
    }
}
