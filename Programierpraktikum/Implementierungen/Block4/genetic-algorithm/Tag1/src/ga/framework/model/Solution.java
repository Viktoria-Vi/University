package ga.framework.model;

public abstract class Solution {
	
	private Problem problem;
	private double fitness;
	
	public Solution(Problem problem) {
		this.problem = problem;
	}
	
	public Solution(Solution toCopy) {
		this.problem = toCopy.getProblem();
		this.fitness = toCopy.getFitness();
	}

	public double getFitness() {
		return fitness;
	}

	public void setFitness(double fitness) {
		this.fitness = fitness;
	}

	public Problem getProblem() {
		return problem;
	}	
}
