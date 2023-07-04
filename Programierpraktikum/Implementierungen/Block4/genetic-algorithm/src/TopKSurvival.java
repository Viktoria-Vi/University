import ga.framework.model.Solution;
import ga.framework.operators.SelectionOperator;
import ga.framework.operators.SurvivalException;
import ga.framework.operators.SurvivalOperator;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Random;

public class TopKSurvival implements SurvivalOperator {
    public int k;

    TopKSurvival(int k){
        this.k = k;
    }

    public List<Solution> selectPopulation(List<Solution> candidates, int populationSize) throws SurvivalException {
        candidates.sort(Comparator.comparingDouble(Solution::getFitness).reversed());//sortieren der Liste nach Fitness, größte zuerst
       if (k > populationSize) {
           throw new SurvivalException("k to big");
       }
       if(k < populationSize) {
           Random random = new Random();
           List<Solution> population = new ArrayList<>(candidates.subList(0, k));
           for(int i = k; i < populationSize; i++){
           population.add(candidates.get(random.nextInt(candidates.size())));
       }
           return population;
    }
        return candidates.subList(0, populationSize); //ausgeben der Elemente bis populationSize
};

}
