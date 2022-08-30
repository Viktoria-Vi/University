package ga.framework.operators;

import java.util.List;

import ga.framework.model.Solution;

public interface FitnessEvaluator {
	public void evaluate(List<Solution> population);
}
