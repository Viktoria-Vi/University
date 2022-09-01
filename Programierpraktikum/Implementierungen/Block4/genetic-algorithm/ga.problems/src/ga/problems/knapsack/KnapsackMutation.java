package ga.problems.knapsack;

import ga.framework.model.Solution;
import ga.framework.operators.EvolutionException;
import ga.framework.operators.EvolutionaryOperator;

import java.util.Random;

public class KnapsackMutation implements EvolutionaryOperator {

    public static EvolutionaryOperator ev;

    KnapsackMutation(){
        ev = this;
    }

    @Override
    public Solution evolve(Solution solution) throws EvolutionException {
        KnapsackSolution copied = new KnapsackSolution(solution);
        if(copied.items.isEmpty() && copied.remainingItems.isEmpty()){
            throw new EvolutionException("No evolution possible");
        }
        double random = Math.random();
        return random > 0.5? RemoveEvolve.removeEvolve(copied) : AddEvolve.addEvolve(copied);
    }




         class RemoveEvolve {

            public static Solution removeEvolve(KnapsackSolution solution) {
                solution.items.remove(new Random().nextInt(solution.items.size()));
                return solution;
            }
        }

         class AddEvolve {

            public static Solution addEvolve(KnapsackSolution solution) {
                for (KnapsackItem item : solution.remainingItems) {
                    if (item.weight + solution.getCurrentWeight() <= solution.knapsackWeightCapacity) {
                        solution.items.add(item);
                        solution.remainingItems.remove(item);
                    }
                }
                return solution;
            }
        }



}
