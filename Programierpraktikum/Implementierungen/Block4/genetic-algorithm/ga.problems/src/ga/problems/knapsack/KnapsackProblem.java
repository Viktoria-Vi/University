package ga.problems.knapsack;

import ga.framework.model.NoSolutionException;
import ga.framework.model.Problem;

import java.util.ArrayList;
import java.util.List;

import java.util.Random;

public class KnapsackProblem implements Problem {


    int knapsackWeightCapacity;
    List<KnapsackItem> items;

    public KnapsackProblem(int knapsackWeightCapacity, List<KnapsackItem> items) {
        this.knapsackWeightCapacity = knapsackWeightCapacity;
        this.items = items;
    }




    public int getCurrentWeight(List<KnapsackItem> knapsack) {
        return knapsack.stream().map(i -> i.weight).reduce(0, Integer::sum);
    }

    boolean areItemsFitting() {
        for (KnapsackItem item : items) {
            return item.weight < knapsackWeightCapacity;
        }
        return true;
    }

    @Override
    public KnapsackSolution createNewSolution() throws NoSolutionException {
        List<KnapsackItem> knapsack = new ArrayList<>();
        List<KnapsackItem> tempItems = new ArrayList<>(items);
        Random random = new Random();
        while (getCurrentWeight(knapsack) < knapsackWeightCapacity || !tempItems.isEmpty()) {
            KnapsackItem item = tempItems.get(random.nextInt(tempItems.size()));
            if (getCurrentWeight(knapsack) + item.weight <= knapsackWeightCapacity) {
                knapsack.add(item);
                tempItems.remove(item);
            }
        }
        if (!areItemsFitting()) {
            throw new NoSolutionException("no item was fitting");
        }
        return new KnapsackSolution(KnapsackProblem.this.knapsackWeightCapacity, knapsack, tempItems, KnapsackProblem.this);
    }
}


