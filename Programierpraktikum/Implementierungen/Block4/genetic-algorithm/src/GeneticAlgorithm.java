import ga.framework.model.NoSolutionException;
import ga.framework.model.Problem;
import ga.framework.model.Solution;
import ga.framework.operators.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/*
Aufgabe 1.1
 */
public class GeneticAlgorithm {

    public Problem problem;
    public int populationSize;
    public List<EvolutionaryOperator> evolutionaryOperators = new ArrayList<>();
    public FitnessEvaluator fitnessFunction;
    public SurvivalOperator survivalOperator;
    public int iterations;
    public SelectionOperator selectionOperator;


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
        public SurvivalOperatorAdder performingSelectionsWith(SelectionOperator selectionOperator) {
            GeneticAlgorithm.this.selectionOperator = selectionOperator;
            return new SurvivalOperatorAdder();
        }
    }

    class SurvivalOperatorAdder {

        public IterationsAdder withSurvivalOperator(SurvivalOperator survivalOperator){
            GeneticAlgorithm.this.survivalOperator = survivalOperator;
            return new IterationsAdder();
        }
    }

    class IterationsAdder {
        public runOptimization stoppingAtEvolution(int iterations) {
            GeneticAlgorithm.this.iterations = iterations;
            return new runOptimization();
        }
    }

    class runOptimization {

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

                for (int i = 0; i < populationSize; i++){
                    offsprings.add(evolutionaryOperator.evolve(selectionOperator.selectParent(population)));
                }       //hinzufügen der nach TournamentSelection ausgewählten Elemente zur Liste


                    fitnessFunction.evaluate(offsprings);
                    population.addAll(offsprings);
                    try {
                        population = survivalOperator.selectPopulation(population, populationSize);//auswahl der fittesten Elemente
                    } catch (SurvivalException e) {
                        throw new SurvivalException("Problem occurred while selecting new population");
                    }

                    iterations--;//durchlaufen iterations-mal(wenn kein Fehler!)
                }
                return population; //geben population aus bei erfolgreichem Durchlauf
            }
        }



    public static void main(String[] args) throws SurvivalException, NoSolutionException, EvolutionException {
        GeneticAlgorithm ga = new GeneticAlgorithm();
        List<Solution> result = ga.solve(ga.problem)
                .withPopulationSize(ga.populationSize)
                .evolvingSolutionsWith(ga.evolutionaryOperators.get(0))
                .evaluationSolutionsBy(ga.fitnessFunction)
                .performingSelectionsWith(ga.selectionOperator)
                .withSurvivalOperator(ga.survivalOperator)
                .stoppingAtEvolution(ga.iterations)
                .runOptimization();
    }
}

