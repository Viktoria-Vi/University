package Tag1;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.stream.Stream;

public class GUI extends JFrame {

    public GUI(){
        this.setTitle("Mal Kröte");
        this.setSize(1280,720);
        this.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        this.setLayout(new BorderLayout());

        PaintArea paintArea = new PaintArea();
        this.add(paintArea,BorderLayout.WEST);

        JPanel panel = new JPanel();
        panel.setLayout(new BoxLayout(panel,BoxLayout.PAGE_AXIS));
        panel.setPreferredSize(new Dimension(200,720));
        JTextArea textArea = new JTextArea();
        panel.add(textArea);
        textArea.setPreferredSize(new Dimension(200,680));
        JButton button = new JButton("Send");
        button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                String input = textArea.getText();
                paintArea.donatello.interpret(input);
            }
        });

        panel.add(button);
        this.add(panel,BorderLayout.EAST);
        this.setVisible(true);
    }

    public static void main(String[] args) {
        new GUI();
    }
}
