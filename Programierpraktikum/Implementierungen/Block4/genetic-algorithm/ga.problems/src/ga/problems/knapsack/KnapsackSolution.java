package ga.problems.knapsack;

import ga.framework.model.Problem;
import ga.framework.model.Solution;

import java.util.List;

public class KnapsackSolution extends Solution {

    int knapsackWeightCapacity;
    public List<KnapsackItem> items;
    public List<KnapsackItem> remainingItems;

    public int getCurrentWeight(){
        return items.stream().map(i -> i.weight).reduce(0, Integer :: sum);
    }

    public KnapsackSolution(int knapsackWeightCapacity, List<KnapsackItem> items,List<KnapsackItem> remainingItems, Problem problem) {
        super(problem);
        this.items = items;
        this.remainingItems = remainingItems;
        this.knapsackWeightCapacity = knapsackWeightCapacity;
    }

    public KnapsackSolution(Solution toCopy) {
        KnapsackSolution copied = (KnapsackSolution) toCopy; 
        super(toCopy);
        this.items = copied.items;
        
    }

}
