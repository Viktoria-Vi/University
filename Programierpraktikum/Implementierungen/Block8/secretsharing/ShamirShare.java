package secretsharing;

import java.math.BigInteger;

/**
 * ShamirShare objects contain the two integers representing one share in
 * Shamir's secret sharing scheme: the x-coordinate `x' and the y-coordinate
 * `s'.
 * 
 * @see BigInteger
 * 
 * @author ewti
 * 
 */
public class ShamirShare {

	public ShamirShare(BigInteger x, BigInteger s) {
		this.x = x;
		this.s = s;
	}

	@Override
	public String toString() {
		return String.format("(%s,%s)", this.x, this.s);
	}

	final public BigInteger x;
	final public BigInteger s;

	public BigInteger getX() {
		return x;
	}

	public BigInteger getY() {
		return s;
	}
}
