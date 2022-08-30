import ga.framework.model.Solution;
import ga.framework.operators.SelectionOperator;

import java.util.List;
import java.util.Random;

/*
Aufgabe 1.3
 */
public class TournamentSelection implements SelectionOperator {

    @Override
    public Solution selectParent(List<Solution> candidates) { //wählt aus zwei zufälligen das mit der höheren fitness
        Random random = new Random();
        Solution one = candidates.get(random.nextInt(candidates.size()));
        Solution two = candidates.get(random.nextInt(candidates.size()));
        if (one.getFitness() != two.getFitness()){
            return one.getFitness() > two.getFitness()? one : two;
        }
        return one;
    }
}
