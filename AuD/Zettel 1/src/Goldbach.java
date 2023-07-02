/**
 * For a given even integer number n in the proven Goldbach range,
 * the methods in this class can be used to find two prime integer numbers whose sum eqauls n.
 */
public class Goldbach {

    //Vorbedingung: z ∈ N, z: 3 < z < (4 · 10^18)
    //Nachbedingung n,m ∈ N, n % 2 != 0 && m % 2 != 0

    public boolean isPrime(int n) {
        if (n <= 1) {
            return false;
        }
        for (int i = 2; i < n; i++) {
            if (n % i == 0) {
                return false;
            }
        }
        return true;
    }

    public boolean isInRange(int n) {
        return n >= 4 && n <= 4 * Math.pow(10, 18);
    }

    public Pair<Integer> calculate(int z) throws Exception{
        if (isInRange(z)){
            for (int i = 2; i < z; i++) {
                if (isPrime(i) && isPrime(z - i)) {
                    return new Pair<>(i, z - i);
                }
            }
        }
        throw new Exception("The given number is not in the Goldbach range.");
    }
}
