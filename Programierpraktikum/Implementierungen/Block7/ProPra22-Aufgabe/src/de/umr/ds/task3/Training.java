package de.umr.ds.task3;

public class Training {

	private static final double alpha = 0.05; // learning rate
	private static final int epochs = 100; // number of epochs

	/**
	 * A perceptron is trained on a dataset. After each epoch the perceptron's
	 * parameters are updated, the dataset is shuffled and the accuracy is computed.
	 * 
	 * @param perceptron the perceptron to train
	 * @param dataset the training dataset
	 */
	private static void train(Perceptron perceptron, Dataset dataset) {

		// TODO Task 3c)

	}

	public static void main(String[] args) {

		Dataset dataset = new Dataset(1000);
		Perceptron perceptron = new Perceptron();
		train(perceptron, dataset);

	}

}
