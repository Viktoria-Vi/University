import java.util.ArrayList;
import java.util.List;

import ga.framework.model.NoSolutionException;
import ga.framework.model.Problem;
import ga.framework.model.Solution;
import ga.framework.operators.*;

import java.util.List;
import java.util.Random;

public class GeneticAlgorithm {

        public Problem problem;
        public int populationSize;
        public List<EvolutionaryOperator> evolutionaryOperators;
        public FitnessEvaluator fitnessFunction;
        public SurvivalOperator survivalOperator;
        public int iterations;

        public GeneticAlgorithm(Problem problem, int populationSize, List<EvolutionaryOperator> evolutionaryOperators,
                                FitnessEvaluator fitnessFunction, SurvivalOperator survivalOperator, int iterations){
            this.problem = problem;
            this.populationSize = populationSize;
            this.evolutionaryOperators = evolutionaryOperators;
            this.fitnessFunction = fitnessFunction;
            this.survivalOperator = survivalOperator;
            this.iterations = iterations;
        }

        public List<Solution> runOptimization() throws NoSolutionException, EvolutionException, SurvivalException {
            List<Solution> population = new ArrayList<>();
            for (int i = 0; i < populationSize; i++) {
                try {
                    population.add(problem.createNewSolution());
                }
                catch (NoSolutionException e){
                    throw new NoSolutionException("No such Solution found");
                }
            }

            while (iterations != 0) {
                fitnessFunction.evaluate(population);
                Random random = new Random();
                EvolutionaryOperator evolutionaryOperator = evolutionaryOperators.get(random.nextInt(evolutionaryOperators.size()));
                List<Solution> offsprings = new ArrayList<>();
                for (Solution entity : population) {
                    try {
                        offsprings.add(evolutionaryOperator.evolve(entity));
                    }
                    catch (EvolutionException e){
                        throw new EvolutionException("Problem occurred while evolving");
                    }
                }
                fitnessFunction.evaluate(offsprings);
                population.addAll(offsprings);
                try {
                    population = survivalOperator.selectPopulation(population, populationSize);
                }
                catch (SurvivalException e){
                    throw new SurvivalException("Problem occurred while selecting new population");
                }

                this.iterations = iterations--;
            }
            return population;
        }
    }
