package ga.framework.operators;

import java.util.List;

import ga.framework.model.Solution;

public interface SurvivalOperator {
	public List<Solution> selectPopulation(List<Solution> candidates, int populationSize)
			throws SurvivalException;
}
