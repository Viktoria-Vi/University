package Tag2;

    
public class Main {
    public static void main(String[] args) {
        if (args.length < 2){
            DVDBounce bounce = new DVDBounce(10,10);
        }
        try {
            DVDBounce bounce = new DVDBounce(Integer.parseInt(args[0]),Integer.parseInt(args[1]));
        } catch (NumberFormatException e){
            e.printStackTrace();
            DVDBounce bounce = new DVDBounce(10,10);
        }
        if (args.length > 2){
            System.out.println("Wrong input. Accepted input: int int");
        }


        }
    }

