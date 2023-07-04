package tag2.tools;

public interface IDeck<E> extends IStack<E> {
    void shuffle(

    );

    void burn(

    );

    void burn(
            int num
    );

    E deal(

    );

    IStack<E> deal(
            int num
    );

    void swap(
            int from,
            int to
    );

    void cut(

    );
}
