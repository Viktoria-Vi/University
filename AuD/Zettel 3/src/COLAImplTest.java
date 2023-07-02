import java.util.Arrays;
import java.util.Random;

import static org.junit.jupiter.api.Assertions.*;

class COLAImplTest {

    @org.junit.jupiter.api.Test
    void insertElement() {
        COLAImpl<Integer> cola = new COLAImpl<>();
        Random random = new Random();
        float time = System.currentTimeMillis();
        for (int i = 0; i < 50000000; i++) {
            cola.insertElement(random.nextInt());
        }
        System.out.println("Laufzeit COLA mit 1.000.000 Elem: "
                + (System.currentTimeMillis() - time));

        /*
        //Teste die laufzeit beim Einfügen von Elementen in einem normalen Array
        int[] arr = new int[0];
        float time2 = System.currentTimeMillis();
        for (int i = 0; i < 1000000; i++) {
            int[] newArr = new int[arr.length + 1];
            System.arraycopy(arr, 0, newArr, 0, arr.length);
            newArr[arr.length] = random.nextInt();
            arr = newArr;
        }
        //**
        System.out.println("Laufzeit Array bei 1.000.000 Elem: "
                + (System.currentTimeMillis() - time2));
        //teste die Laufzeit vom arr Sortieren
        float time3 = System.currentTimeMillis();
        Arrays.sort(arr);
        System.out.println("Laufzeit Arrays.sort von arr mit 1.000.000 Elem: "
                + (System.currentTimeMillis() - time3));
        **/
    }
}