package ga.framework.operators;

import ga.framework.model.Solution;

import java.util.List;

public interface SelectionOperator {
    public Solution selectParent(List<Solution> candidates);
}
