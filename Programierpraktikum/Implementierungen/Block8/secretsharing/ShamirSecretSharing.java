package secretsharing;

import java.math.BigInteger;
import java.security.SecureRandom;

/**
 * This class implements Shamir's (t,n) secret sharing.
 * 
 * Secrets are represented as BigInteger objects, shares as ShamirShare objects.
 * 
 * Randomness is taken from a {@link java.security.SecureRandom} object.
 * 
 * @see ShamirShare
 * @see BigInteger
 * @see SecureRandom
 * 
 * @author ewti
 * 
 */
public class ShamirSecretSharing {

	/**
	 * Creates a (t,n) Shamir secret sharing object for n shares with threshold t.
	 * 
	 * @param t
	 *            threshold: any subset of t <= i <= n shares can recover the
	 *            secret.
	 * @param n
	 *            number of shares to use. Needs to fulfill n >= 2.
	 */
	public ShamirSecretSharing(int t, int n) {
		assert (t >= 2);
		assert (n >= t);

		this.t = t;
		this.n = n;
		this.rng = new SecureRandom();

		// use p = 2^2048 + 981
		this.p = BigInteger.ONE.shiftLeft(2048).add(BigInteger.valueOf(981));
	}

	/**
	 * Shares the secret into n parts.
	 * 
	 * @param secret
	 *            The secret to share.
	 * 
	 * @return An array of the n shares.
	 */
	public ShamirShare[] share(BigInteger secret) {
		// generate random coefficients
		BigInteger[] coefficients = new BigInteger[t - 1];
		for (int i = 0; i < t - 1; i++) {
			coefficients[i] = new BigInteger(2048, rng);
		}

		// compute shares
		ShamirShare[] shares = new ShamirShare[n];
		for (int i = 0; i < n; i++) {
			BigInteger x = BigInteger.valueOf(i + 1);
			BigInteger s = secret;
			for (int j = 0; j < t - 1; j++) {
				s = s.add(coefficients[j].multiply(x.pow(j + 1))).mod(p);
			}
			shares[i] = new ShamirShare(x, s);
		}
		return shares;
	}

	/**
	 * Evaluates the polynomial a[0] + a[1]*x + ... + a[t-1]*x^(t-1) modulo p at
	 * point x using Horner's rule.
	 * 
	 * @param x
	 *            point at which to evaluate the polynomial
	 * @param a
	 *            array of coefficients
	 * @return value of the polynomial at point x
	 */
	private BigInteger horner(BigInteger x, BigInteger[] a) {
		BigInteger y = a[t - 1];
		for (int i = t - 2; i >= 0; i--) {
			y = y.multiply(x).add(a[i]).mod(p);
		}
		return y;

	}

	/**
	 * Recombines the given shares into the secret.
	 * 
	 * @param shares
	 *            A set of at least t out of the n shares for this secret.
	 * 
	 * @return The reconstructed secret.
	 */
	public BigInteger combine(ShamirShare[] shares) {
		BigInteger[] x = new BigInteger[t];
		BigInteger[] y = new BigInteger[t];
		for (int i = 0; i < t; i++) {
			x[i] = shares[i].getX();
			y[i] = shares[i].getY();
		}

		// compute Lagrange coefficients
		BigInteger[] l = new BigInteger[t];
		for (int i = 0; i < t; i++) {
			BigInteger num = BigInteger.ONE;
			BigInteger den = BigInteger.ONE;
			for (int j = 0; j < t; j++) {
				if (i != j) {
					num = num.multiply(x[j]).mod(p);
					den = den.multiply(x[j].subtract(x[i])).mod(p);
				}
			}
			l[i] = num.multiply(den.modInverse(p)).mod(p);
		}

		// compute secret
		BigInteger secret = BigInteger.ZERO;
		for (int i = 0; i < t; i++) {
			secret = secret.add(y[i].multiply(l[i])).mod(p);
		}
		return secret;

	}

	public int getT() {
		return t;
	}

	public int getN() {
		return n;
	}

	private int t;
	private int n;
	private SecureRandom rng;
	private BigInteger p;

	public static void main(String[] args) {
		for (int i = 0; i < 10; i++) {
			ShamirSecretSharing sss = new ShamirSecretSharing(3, 5);
			BigInteger secret = new BigInteger(2048, sss.rng);
			ShamirShare[] shares = sss.share(secret);
			BigInteger recovered = sss.combine(shares);
			if (secret.equals(recovered)) {
				System.out.println("Test" + i + ": Success");
			} else {
				System.out.println("Test" + i + ": Failure");
			}
		}

	}

}
