package tag2.tools;

import java.util.List;

public interface IStack<E> extends List<E> {
    void push(
            E o
    );

    E peek(

    );

    E pop(

    );

    E beforeLast(

    );

    E first(

    );

    E head(

    );

    E second(

    );

    E third(

    );

    E fourth(

    );

    E fifth(

    );

    E poll(

    );

    E getOrNull(
            int index
    );

    IStack<E> copy(

    );

    IStack<E> copyLight(

    );
}
