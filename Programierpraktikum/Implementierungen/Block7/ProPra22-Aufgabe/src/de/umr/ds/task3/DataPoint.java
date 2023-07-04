package de.umr.ds.task3;

/**
 * Represents a data vector together with its binary label, i.e. the label needs
 * to be either 0 or 1.
 */
public class DataPoint extends Vector {

	private int label;

	public DataPoint(int label, double... v) {
		super(v);
		if (label != 1 && label != 0)
			throw new IllegalArgumentException("Label needs to be 0 or 1");
		this.label = label;
	}

	public int getLabel() {
		return label;
	}

}
