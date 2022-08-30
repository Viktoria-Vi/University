import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;

import ga.framework.model.NoSolutionException;
import ga.framework.model.Problem;
import ga.framework.model.Solution;
import ga.framework.operators.*;

import java.util.Random;

/*
Aufgabe 1.1
 */
public class GeneticAlgorithm {

    public Problem problem;
    public int populationSize;
    public List<EvolutionaryOperator> evolutionaryOperators;
    public FitnessEvaluator fitnessFunction;
    public SurvivalOperator survivalOperator;
    public int iterations;
    public SelectionOperator selectionOperator;


    public List<Solution> runOptimization() throws NoSolutionException, EvolutionException, SurvivalException {
        List<Solution> population = new ArrayList<>();
        for (int i = 0; i < populationSize; i++) { //erstmaliges befüllen der population
            try {
                population.add(problem.createNewSolution());
            } catch (NoSolutionException e) {
                throw new NoSolutionException("No such Solution found");
            }
        }

        while (iterations != 0) {
            fitnessFunction.evaluate(population);
            Random random = new Random(); //erstellen von "Random" Objekt
            EvolutionaryOperator evolutionaryOperator = evolutionaryOperators.get(random.nextInt(evolutionaryOperators.size()));//zufallsauswahl aus Liste
            List<Solution> offsprings = new ArrayList<>();
                /* Aufgabe 1.3
                for (int i = 0; i < populationSize; i++){
                    offsprings.add(evolutionaryOperator.evolve(new TournamentSelection().selectParent(population)));
                }       //hinzufügen der nach TournamentSelection ausgewählten Elemente zur Liste
                 */
            for (Solution entity : population) {//befüllen von offspring(nachkommen) mittels anwendung von evolve auf jedes aus population
                try {
                    offsprings.add(evolutionaryOperator.evolve(entity));
                } catch (EvolutionException e) {
                    throw new EvolutionException("Problem occurred while evolving");
                }
            }

            fitnessFunction.evaluate(offsprings);
            population.addAll(offsprings);
            try {
                population = survivalOperator.selectPopulation(population, populationSize);//auswahl der fittesten Elemente
            } catch (SurvivalException e) {
                throw new SurvivalException("Problem occurred while selecting new population");
            }

            this.iterations = iterations--;//durchlaufen iterations-mal(wenn kein Fehler!)
        }
        return population; //geben population aus bei erfolgreichem Durchlauf
    }

    /**
     * Aufgabe 1.2
     */
    SurvivalOperator TopKSurvival = new SurvivalOperator() {
        @Override
        public List<Solution> selectPopulation(List<Solution> candidates, int populationSize) throws SurvivalException {
            candidates.sort(Comparator.comparingDouble(Solution::getFitness).reversed()); //sortieren der Liste nach Fitness, größte zuerst
            return candidates.subList(0, populationSize); //ausgeben der Elemente bis populationSize
        }
    };


    /*
    Aufgabe 1.4
     */

    public PopulationAdder solve(Problem problem) {
        GeneticAlgorithm.this.problem = problem;
        return new PopulationAdder();
    }


    class PopulationAdder {
        public EvolutionaryOperatorAdder withPopulationSize(int populationSize) {
            GeneticAlgorithm.this.populationSize = populationSize;
            return new EvolutionaryOperatorAdder();
        }
    }

    class EvolutionaryOperatorAdder {
        public EvolutionaryOperatorAdder evolvingSolutionsAdd(EvolutionaryOperator evolutionaryOperator) {
            GeneticAlgorithm.this.evolutionaryOperators.add(evolutionaryOperator);
            return this;
        }

        public FitnessEvaluatorAdder evolvingSolutionsWith(EvolutionaryOperator evolutionaryOperator) {
            GeneticAlgorithm.this.evolutionaryOperators.add(evolutionaryOperator);
            return new FitnessEvaluatorAdder();
        }
    }


    class FitnessEvaluatorAdder {
        public SelectionOperatorAdder evaluationSolutionsBy(FitnessEvaluator fitnessEvaluator) {
            GeneticAlgorithm.this.fitnessFunction = fitnessEvaluator;
            return new SelectionOperatorAdder();
        }
    }

    class SelectionOperatorAdder {
        public IterationsAdder performingSelectionsWith(SelectionOperator selectionOperator) {
            GeneticAlgorithm.this.selectionOperator = selectionOperator;
            return new IterationsAdder();
        }
    }

    class IterationsAdder {
        public GeneticAlgorithm stoppingAtEvolution(int iterations) {
            GeneticAlgorithm.this.iterations = iterations;
            return new GeneticAlgorithm();
        }
    }


    public static void main(String[] args) throws SurvivalException, NoSolutionException, EvolutionException {
        GeneticAlgorithm ga = new GeneticAlgorithm();
        List<Solution> result = ga.solve(ga.problem)
                .withPopulationSize(ga.populationSize)
                .evolvingSolutionsWith(ga.evolutionaryOperators.get(0))
                .evaluationSolutionsBy(ga.fitnessFunction)
                .performingSelectionsWith(ga.selectionOperator)
                .stoppingAtEvolution(ga.iterations)
                .runOptimization();
    }
}

