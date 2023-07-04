package de.umr.ds.task3;

public class Vector {

	private double[] p;

	/**
	 * Creates a vector with a minimum dimension of 2.
	 * 
	 * @param p values
	 */
	public Vector(double... p) {
		if (p.length < 2)
			throw new IllegalArgumentException("Minimum dimension is 2");
		this.p = p;
	}

	public double getX() {
		return p[0];
	}

	public double getY() {
		return p[1];
	}

	public double getDim(int d) {
		if (d >= p.length)
			throw new IllegalArgumentException("Maximum dimension is " + d);
		return p[d];
	}

	public int numDims() {
		return p.length;
	}

	/**
	 * Computes the dot product between the vector and another one.
	 * 
	 * @param v A vector of the same dimension
	 * @return The dot product between the two vectors
	 */
	public double dot(Vector v) {
		double res = 0;
		for (int i = 0; i < v.p.length;i++) {
			res += this.p[i]*v.p[i];
		}
			return res;
	}

	/**
	 * Adds the vector to another one.
	 * 
	 * @param v A vector of the same dimension
	 * @return A new vector
	 */
	public Vector add(Vector v) {
		Vector res = new Vector();
		for (int i = 0;i < v.p.length; i++){
			res.p[i] = this.p[i]+v.p[i];
		}

		return res;
	}

	/**
	 * Multiplies the vector with a scalar.
	 * 
	 * @param s A scalar
	 * @return A new vector
	 */
	public Vector mult(double s) {
		Vector res = new Vector();
		for (int i = 0; i < this.p.length; i++){
			res.p[i] = this.p[i]*s;
		}

		return res;
	}

}
