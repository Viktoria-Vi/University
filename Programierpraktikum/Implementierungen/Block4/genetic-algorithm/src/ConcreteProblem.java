import ga.framework.model.NoSolutionException;
import ga.framework.operators.EvolutionException;
import ga.framework.operators.SurvivalException;
import ga.problems.knapsack.KnapsackFitnessEvaluator;
import ga.problems.knapsack.KnapsackMutation;
import ga.problems.knapsack.KnapsackProblem;
import ga.problems.knapsack.KnapsackItem;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ConcreteProblem {

    public static void main(String[] args) throws SurvivalException, NoSolutionException, EvolutionException {
        KnapsackItem g1 = new KnapsackItem(5, 0);
        KnapsackItem g2 = new KnapsackItem(4, 8);
        KnapsackItem g3 = new KnapsackItem(4, 6);
        KnapsackItem g4 = new KnapsackItem(4, 4);
        KnapsackItem g5 = new KnapsackItem(3, 7);
        KnapsackItem g6 = new KnapsackItem(3, 4);
        KnapsackItem g7 = new KnapsackItem(2, 6);
        KnapsackItem g8 = new KnapsackItem(2, 3);
        KnapsackItem g9 = new KnapsackItem(1, 3);
        KnapsackItem g10 =new KnapsackItem(1,1);
        KnapsackItem items[] = new KnapsackItem[]{g1,g2,g4,g3,g5,g6,g7,g8,g9,g10};
        List item = Arrays.stream(items).toList();

        KnapsackProblem problem = new KnapsackProblem(10, item);

        GeneticAlgorithm ga = new GeneticAlgorithm();

        ga.solve(problem).withPopulationSize(4)
                .evolvingSolutionsWith(KnapsackMutation.ev)
                .evaluationSolutionsBy(KnapsackFitnessEvaluator.fitnessEvaluator)
                .performingSelectionsWith(TournamentSelection.selectionOperator)
                .withSurvivalOperator(new TopKSurvival(5))
                .stoppingAtEvolution(10)
                .runOptimization();


    }
}
