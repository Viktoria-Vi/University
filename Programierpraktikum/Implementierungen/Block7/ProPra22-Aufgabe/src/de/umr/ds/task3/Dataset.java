package de.umr.ds.task3;

import java.util.ArrayList;
import java.util.Random;

/**
 * A randomly generated dataset of 2D points with binary labels.
 */
public class Dataset extends ArrayList<DataPoint> {

	Dataset(int size) {

		super();

		double x;
		double y;
		int label;

		Random r = new Random();

		for (int i = 0; i < size; i++) {
			label = r.nextBoolean() ? 1 : 0;
			if (label > 0) {
				x = r.nextGaussian() * 0.08 + 0.7;
				y = r.nextGaussian() * 0.08 + 0.7;
			} else {
				x = r.nextGaussian() * 0.1 + 0.6;
				y = r.nextGaussian() * 0.06 + 0.3;
			}
			this.add(new DataPoint(label, x, y));
		}
	}
}
