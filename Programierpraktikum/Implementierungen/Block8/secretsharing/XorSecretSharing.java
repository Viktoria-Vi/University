/**
 *
 */
package secretsharing;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.*;
import java.net.URL;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Random;

/**
 * This class implements the simple XOR-based (n,n) secret sharing.
 * <p>
 * Secrets and shares are both represented as byte[] arrays.
 * <p>
 * Randomness is taken from a {@link java.security.SecureRandom} object.
 *
 * @see SecureRandom
 */
public class XorSecretSharing {

    /**
     * Creates a XOR secret sharing object for n shares
     *
     * @param n number of shares to use. Needs to fulfill n >= 2.
     */
    public XorSecretSharing(int n) {
        assert (n >= 2);
        this.n = n;
        this.rng = new SecureRandom();
    }

    /**
     * Shares the secret into n parts.
     *
     * @param secret The secret to share.
     * @return An array of the n shares.
     */
    public byte[][] share(final byte[] secret) {
        byte[] ri = new byte[secret.length];
        byte[][] shares = new byte[n][ri.length];
        for (int i = 0; i < n - 1; i++) {
            rng.nextBytes(ri);
            System.arraycopy(ri, 0, shares[i], 0, ri.length);
        }
        shares[n - 1] = Arrays.copyOf(secret, secret.length);
        for (int i = 0; i < n - 1; i++) {
            for (int j = 0; j < ri.length; j++) {
                shares[n - 1][j] ^= shares[i][j];
            }
        }
        return shares;
    }

    /**
     * Recombines the given shares into the secret.
     *
     * @param shares The complete set of n shares for this secret.
     * @return The reconstructed secret.
     */
    public byte[] combine(final byte[][] shares) {
        byte[] secret = new byte[shares[0].length];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < shares[0].length; j++) {
                secret[j] ^= shares[i][j];
            }
        }
        return secret;
    }

    public byte[][] share(File file) throws IOException {
        FileInputStream fis = new FileInputStream(file);
        byte[] fileBytes = new byte[(int) file.length()];
        fis.read(fileBytes);
        fis.close();
        return share(fileBytes);
    }

    public File combine(byte[][] shares, String fileName) throws IOException {
        FileOutputStream fos = new FileOutputStream(fileName);
        fos.write(combine(shares));
        fos.close();
        return new File(fileName);
    }

    private int n;

    public int getN() {
        return n;
    }

    private Random rng;

    public static void main(String[] args) {
        for (int i = 0; i < 4; i++) {
            System.out.println("Test " + i);
            XorSecretSharing sss = new XorSecretSharing(5);
            // create a random secret
            byte[] secret = new byte[10];
            sss.rng.nextBytes(secret);
            System.out.println("secret: " + Arrays.toString(secret));
            // share the secret into n shares
            byte[][] shares = sss.share(secret);
            // recombine the shares into the secret
            byte[] secret2 = sss.combine(shares);
            System.out.println("secret2: " + Arrays.toString(secret2));
            // check that the secret is correct
            if (!(Arrays.equals(secret, secret2))) {
                System.out.println("Secrets are not equal!");
            } else
                System.out.println("Secrets are equal.");
        }


        //test file sharing
        try {
            XorSecretSharing sss = new XorSecretSharing(5);
            // create a random secret
            File file = new File("secretsharing/test.txt");
            // share the secret into n shares
            byte[][] shares = sss.share(file);
            // recombine the shares into the secret and save it to a file
            File file2 = sss.combine(shares, "secretsharing/test2.txt");
            // check that the secret is correct
            BufferedReader br1 = new BufferedReader(new FileReader(file));
            BufferedReader br2 = new BufferedReader(new FileReader(file2));
            String line1 = br1.readLine();
            String line2 = br2.readLine();
            boolean areEqual = true;
            int lineNum = 1;
            while (line1 != null || line2 != null) {
                if (line1 == null || line2 == null) {
                    areEqual = false;
                    break;
                } else if (!line1.equalsIgnoreCase(line2)) {
                    areEqual = false;
                    break;
                }
                line1 = br1.readLine();
                line2 = br2.readLine();
                lineNum++;
            }
            if (areEqual) {
                System.out.println("Files are equal.");
            } else {
                System.out.println("Files are not equal.");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //create radom number


    }



