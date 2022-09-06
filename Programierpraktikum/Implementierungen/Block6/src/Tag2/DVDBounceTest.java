package Tag2;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class DVDBounceTest {
    DVDBounce test1 = new DVDBounce(10,10);
    @BeforeEach
    void setUp() {
        test1.xPos = 1;
        test1.yPos = 1;
        test1.xSpeed = 1;
        test1.ySpeed = 1;


    }


    @Test
    void getShortestDistance() {
        while(!test1.frameTick()){
            test1.frameTick();
        }
        assertEquals(Math.sqrt(200),test1.getShortestDistance());

    }

    @Test
    void distance() {
        while(!test1.frameTick()){
            test1.frameTick();
        }
        assertEquals(Math.sqrt(200), test1.distance());
    }

    @Test
    void checkRepeat() {
        while(!test1.frameTick()){
            test1.frameTick();
        }
        assertTrue(test1.checkRepeat());
    }

    @Test
    void frameTick() {
        while(!test1.frameTick()){
            test1.frameTick();
        }
        assertTrue(test1.frameTick());
    }
}