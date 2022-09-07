package de.umr.ds.task3;

import java.awt.BasicStroke;
import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

import javax.swing.JFrame;
import javax.swing.JPanel;

/**
 * Visualizes the dataset and the decision boundary of the perceptron.
 */
public class Visualization extends JFrame {

	// dimensions of the frame
	private static final int width = 700;
	private static final int height = 700;
	private static final long delay = 500; // time delay after each epoch for visualization

	private Dataset data; // dataset of 2D points
	private Vector w; // weights of the perceptron
	private double b; // bias of the perceptron
	private int epoch;

	Visualization(Dataset data, Vector w, double b) {
		super();
		setLayout(new BorderLayout());
		this.data = (Dataset) data.clone(); // copy the dataset, it might be shuffled
		this.w = w;
		this.b = b;
		this.epoch = 0;
		add(new PerceptronPlot(), BorderLayout.CENTER);
		pack();
		this.setSize(width, height);
		this.setTitle("Perceptron Training Visualization");
		this.setLocationRelativeTo(null);
		this.setVisible(true);
		this.setResizable(false);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}

	/**
	 * Updates the variables of the visualization and repaints the frame.
	 * 
	 * @param w     The weights of the perceptron
	 * @param b     The bias of the perceptron
	 * @param epoch The current epoch
	 */
	public void update(Vector w, double b, int epoch) {
		this.w = w;
		this.b = b;
		this.epoch = epoch;
		// wait
		try {
			TimeUnit.MILLISECONDS.sleep(delay);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		this.repaint();
	}

	private class PerceptronPlot extends JPanel {

		/**
		 * The function y=(-w1*x-b)/w2 is used for computing points of the decision
		 * boundary. It is derived from the perceptron's thresholding function
		 * w1*x1+w2*x2+b = 0.
		 * 
		 * @param x
		 * @return y
		 */
		double f(int x) {
			double w1 = w.getDim(0);
			double w2 = w.getDim(1);
			return (-w1 * x - b) / w2;
		}

		@Override
		public void paintComponent(Graphics gg) {

			super.paintComponent(gg);

			Graphics2D g = (Graphics2D) gg;
			g.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);

			// inverted y-transform for setting origin to bottom left
			g.translate(0, getHeight() - 1);
			g.scale(1, -1);

			// plot data points
			for (var p : data) {
				if (p.getLabel() > 0) {
					g.setColor(new Color(0, 102, 0));
					g.draw(new Ellipse2D.Double(p.getX() * width, p.getY() * height, 7, 7));
				} else {
					g.setColor(Color.red);
					Ellipse2D.Double c = new Ellipse2D.Double(p.getX() * width, p.getY() * height, 7, 7);
					g.fill(c);
					g.draw(c);
				}

			}

			// plot learned threshold function (perceptron)
			g.setStroke(new BasicStroke(1));
			g.setColor(Color.blue);
			g.draw(new Line2D.Double(0, f(0) * height, width, f(1) * height));

			// transform back
			g.translate(0, getHeight() - 1);
			g.scale(1, -1);

			// print legend
			g.setColor(Color.black);
			DecimalFormat decimalFormat = new DecimalFormat("###.###", new DecimalFormatSymbols(Locale.US));
			decimalFormat.toLocalizedPattern();
			g.drawString("w: [" + decimalFormat.format(w.getDim(0)) + ", " + decimalFormat.format(w.getDim(1)) + "]",
					10, 15);
			g.drawString("b: " + decimalFormat.format(b), 10, 35);
			g.drawString("epoch: " + epoch, 10, 55);

		}

	}
}
