package ga.problems.knapsack;
import ga.framework.model.Solution;
import ga.framework.operators.FitnessEvaluator;

import java.util.List;

public class KnapsackFitnessEvaluator implements FitnessEvaluator {

    public static FitnessEvaluator fitnessEvaluator;
    
    KnapsackFitnessEvaluator(){
        fitnessEvaluator = this;
    }


    @Override
    public void evaluate(List<Solution> population) {
        population.forEach(i -> {
            KnapsackSolution solution1 = (KnapsackSolution) i;
            i.setFitness(solution1.items.stream().map(j -> j.value).reduce(0, Integer :: sum));
        });
    }
}
