package tag2.tools;

import java.util.*;

public class BasicDeck<E> extends Stack<E> implements IDeck<E> {
    private int pointer;
    private final Random random;

    public BasicDeck() {
        super();
        this.random = new Random();
    }

    public BasicDeck(int intiCap) {
        super(intiCap);
        this.random = new Random();
    }

    public BasicDeck(Collection<? extends E> c) {
        super(c);
        this.random = new Random();
    }

    public BasicDeck(E[] collection, int cap) {
        super(collection, cap);
        this.random = new Random();
    }

    @Override
    public final void shuffle() {
        this.pointer = super.size() - 1;
        Collections.shuffle(this);
    }

    @Override
    public final void cut() {
        int randomCutIndex = this.random.nextInt(super.size());
        List<E> firstHalf  = new ArrayList<>(super.subList(0, randomCutIndex));
        List<E> secondHalf = new ArrayList<>(super.subList(randomCutIndex, super.size()));

        super.clear();
        super.addAll(secondHalf);
        super.addAll(firstHalf);
    }

    @Override
    public final void burn() {
        this.deal();
    }

    @Override
    public final void burn(int num) {
        while(num-- > 0)
            this.burn();
    }

    @Override
    public final E deal() {
        return super.get(this.pointer--);
    }

    @Override
    public final IStack<E> deal(int num) {
        IStack<E> pile = new Stack<>(num);
        while(num-- > 0)
            pile.push(this.deal());

        return pile;
    }

    @Override
    public final void swap(int from, int to) {
        super.set(to, super.set(from, super.get(to)));
    }
}
