package tag2.tools;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

public class Stack<E> extends ArrayList<E> implements IStack<E> {
    public Stack() {
        super();
    }

    public Stack(int intiCap) {
        super(intiCap);
    }

    public Stack(Collection<? extends E> c) {
        super(c);
    }

    public Stack(E[] collection, int cap) {
        super(cap);
        Collections.addAll(this, collection);
    }

    @Override
    public void push(E o) {
        super.add(o);
    }

    @Override
    public final E peek() {
        return super.get(super.size() - 1);
    }

    @Override
    public final E pop() {
        return super.remove(super.size() - 1);
    }

    @Override
    public E beforeLast() {
        return super.get(super.size() - 2);
    }

    @Override
    public final E first() {
        return super.get(0);
    }

    @Override
    public final E head() {
        return super.get(0);
    }

    @Override
    public final E second() {
        return super.get(1);
    }

    @Override
    public final E third() {
        return super.get(2);
    }

    @Override
    public final E fourth() {
        return super.get(3);
    }

    @Override
    public final E fifth() {
        return super.get(4);
    }

    @Override
    public final E poll() {
        return super.remove(0);
    }

    @Override
    public E getOrNull(int index) {
        if(index < 0 || super.size() >= index)
            return null;

        return super.get(index);
    }

    @Override
    public IStack<E> copy() {
        return new Stack<>(this);
    }

    @Override
    public IStack<E> copyLight() {
        return this.copy();
    }
}
